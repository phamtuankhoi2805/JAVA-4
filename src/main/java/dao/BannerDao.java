package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import Util.JpaUtils;
import model.Banner;


public class BannerDao implements DAOInterface<Banner> {
	public static BannerDao getInstance() {
		return new BannerDao();
	}
	@Override
	public List<Banner> selectAll() {
		EntityManager em = JpaUtils.getEntityManager();
		String jpql =  "select b from Banner b";
		TypedQuery<Banner> query = em.createQuery(jpql,Banner.class);
		return query.getResultList();
	}

	@Override
	public Banner selectById(Banner t) {
		EntityManager em = JpaUtils.getEntityManager();
		String jpql = "SELECT b FROM Banner b WHERE b.BannerID = :BannerID";
	TypedQuery<Banner> query = em.createQuery(jpql,Banner.class);
	query.setParameter("BannerID", t.getBannerID());
	return query.getSingleResult();
	}

	@Override
	public int insert(Banner t) {
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
	public int insertAll(List<Banner> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		    try {
		        em.getTransaction().begin();
		        for (Banner banner : arr) {
		            em.persist(banner);
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
	public int delete(Banner t) {
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
	public int deleteAll(List<Banner> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		 try {
			 em.getTransaction().begin();
		        for (Banner banner : arr) {
		        	em.remove(em.merge(banner));
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
	public int update(Banner t) {
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
