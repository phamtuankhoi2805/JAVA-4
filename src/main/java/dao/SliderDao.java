package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import Util.JpaUtils;
import model.Slider;
import model.User;

public class SliderDao implements DAOInterface<Slider> {
	public static SliderDao getInstance() {
		return new SliderDao();
	}

	@Override
	public List<Slider> selectAll() {
		EntityManager em = JpaUtils.getEntityManager();
		String jpql =  "select s from Slider s";
		TypedQuery<Slider> query = em.createQuery(jpql,Slider.class);
		return query.getResultList();
	}

	@Override
	public Slider selectById(Slider t) {
		EntityManager em = JpaUtils.getEntityManager();
		String jpql = "SELECT s FROM Slider s WHERE s.SliderID = :SliderID";
	TypedQuery<Slider> query = em.createQuery(jpql,Slider.class);
	query.setParameter("SliderID", t.getSliderID());
	return query.getSingleResult();
	}

	@Override
	public int insert(Slider t) {
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
	public int insertAll(List<Slider> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		    try {
		        em.getTransaction().begin();
		        for (Slider slider : arr) {
		            em.persist(slider);
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
	public int delete(Slider t) {
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
	public int deleteAll(List<Slider> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		 try {
			 em.getTransaction().begin();
		        for (Slider slider : arr) {
		        	em.remove(em.merge(slider));
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
	public int update(Slider t) {
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
