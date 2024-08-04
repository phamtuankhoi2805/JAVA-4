package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import Util.JpaUtils;
import model.Comment;


public class CommentDao implements DAOInterface<Comment> {
	public static CommentDao getInstance() {
		return new CommentDao();
	}
	@Override
	public List<Comment> selectAll() {
		EntityManager em = JpaUtils.getEntityManager();
		String jpql =  "select c from Comment c";
		TypedQuery<Comment> query = em.createQuery(jpql,Comment.class);
		return query.getResultList();
	}

	@Override
	public Comment selectById(Comment t) {
		// ham này cũng có rồi bên model
		return null;
	}

	@Override
	public int insert(Comment t) {
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
	public int insertAll(List<Comment> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		    try {
		        em.getTransaction().begin();
		        for (Comment comment : arr) {
		            em.persist(comment);
		        }
		        em.getTransaction().commit();
		        return arr.size(); // return number of users inserted
		    } catch (Exception e) {
		        em.getTransaction().rollback();
		        e.printStackTrace();
		        return 0; // return 0 if insert failed
		    }
	}

	@Override
	public int delete(Comment t) {
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
	public int deleteAll(List<Comment> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		 try {
			 em.getTransaction().begin();
		        for (Comment comment : arr) {
		        	em.remove(em.merge(comment));
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
	public int update(Comment t) {
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
