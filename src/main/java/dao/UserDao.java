package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import Util.JpaUtils;
import model.User;

public class UserDao implements DAOInterface<User> {
	public static UserDao getInstance() {
		return new UserDao();
	}

	@Override
	public List<User> selectAll() {
		EntityManager em = JpaUtils.getEntityManager();
		String jpql =  "select u from User u";
		TypedQuery<User> query = em.createQuery(jpql,User.class);
		return query.getResultList();
	}
// có thể dùng hàm hibernet cung cấp sẵn        em.find (User.class, UserID)
	@Override
	public User selectById(User t) {
		EntityManager em = JpaUtils.getEntityManager();
		String jpql = "SELECT u FROM User u WHERE u.UserID = :UserID";
	TypedQuery<User> query = em.createQuery(jpql,User.class);
	query.setParameter("UserID", t.getUserID());
	return query.getSingleResult();
     
	}

	@Override
	public int insert(User t) {
		 EntityManager em = JpaUtils.getEntityManager();
		   try {
			  
			   em.getTransaction().begin();
		        em.persist(t);
		        em.getTransaction().commit();
		        return 1; // return 1 if insert successful
		    } catch (Exception e) {
		        em.getTransaction().rollback();
		        e.printStackTrace();
		        return 0; // return 0 if insert failed
		    }
	}

	@Override
	public int insertAll(List<User> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		    try {
		        em.getTransaction().begin();
		        for (User user : arr) {
		            em.persist(user);
		        }
		        em.getTransaction().commit();
		        return arr.size(); // return number of users inserted
		    } catch (Exception e) {
		        em.getTransaction().rollback();
		        e.printStackTrace();
		        return 0; // return 0 if insert failed
		    }
	}
public User selectUserNameAndPass(User user) {
	EntityManager em = JpaUtils.getEntityManager();
	String jpql =  "select u from User u where u.Username= :Username and u.PasswordHash= : PasswordHash";
	TypedQuery<User> query = em.createQuery(jpql,User.class);
	query.setParameter("Username", user.getUsername());
	query.setParameter("PasswordHash", user.getPasswordHash());
	
	return query.getSingleResult();
}
	@Override
	public int delete(User t) {
		 EntityManager em = JpaUtils.getEntityManager();
		 try {
			 em.getTransaction().begin();
			 em.remove(em.merge(t));
			 em.getTransaction().commit();
		        return 1; // return 1 if delete successful
		    } catch (Exception e) {
		    	em.getTransaction().rollback();
		        e.printStackTrace();
		        return 0; // return 0 if delete failed
		    }
		 
	}

	@Override
	public int deleteAll(List<User> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		 try {
			 em.getTransaction().begin();
		        for (User user : arr) {
		        	em.remove(em.merge(user));
		        }
		        em.getTransaction().commit();
		        return arr.size(); // return number of users deleted
		    } catch (Exception e) {
		    	em.getTransaction().rollback();
		        e.printStackTrace();
		        return 0; // return 0 if delete failed
		    }
	}

	@Override
	public int update(User t) {
		 EntityManager em = JpaUtils.getEntityManager();
		 try {
		        em.getTransaction().begin();
		        em.merge(t);
		        em.getTransaction().commit();
		        return 1; // return 1 if update successful
		    } catch (Exception e) {
		    	em.getTransaction().rollback();
		        e.printStackTrace();
		        return 0; // return 0 if update failed
		    }
	}
	
}
