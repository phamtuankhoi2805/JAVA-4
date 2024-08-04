package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import Util.JpaUtils;
import model.Product;
import model.User;

public class ProductDao implements DAOInterface<Product> {

	public static ProductDao getInstance() {
		return new ProductDao();
	}
	
	@Override
	public List<Product> selectAll() {
		EntityManager em = JpaUtils.getEntityManager();
		String jpql =  "select p from Product p";
		TypedQuery<Product> query = em.createQuery(jpql,Product.class);
		return query.getResultList();
	}
	// có thể dùng hàm hibernet cung cấp sẵn        em.find (Product.class, ProductID)
	@Override
	public Product selectById(Product t) {
		EntityManager em = JpaUtils.getEntityManager();
		String jpql = "SELECT p FROM Product p WHERE p.Product = :ProductID";
	TypedQuery<Product> query = em.createQuery(jpql,Product.class);
	query.setParameter("ProductID", t.getProductID());
	return query.getSingleResult();
	}

	@Override
	public int insert(Product t) {
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
	public int insertAll(List<Product> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		    try {
		        em.getTransaction().begin();
		        for (Product product : arr) {
		            em.persist(product);
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
	public int delete(Product t) {
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
	public int deleteAll(List<Product> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		 try {
			 em.getTransaction().begin();
		        for (Product product : arr) {
		        	em.remove(em.merge(product));
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
	public int update(Product t) {
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
