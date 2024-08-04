package dao;

import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.OneToMany;
import javax.persistence.TypedQuery;

import Util.JpaUtils;
import model.FavoriteProduct;
import model.User;

public class FavoriteProductDao implements DAOInterface<FavoriteProduct> {
	public static FavoriteProductDao getInstance() {
		return new FavoriteProductDao();
	}

	@Override
	public List<FavoriteProduct> selectAll() {
		EntityManager em = JpaUtils.getEntityManager();
		String jpql =  "select fp from FavoriteProduct fp";
		TypedQuery<FavoriteProduct> query = em.createQuery(jpql,FavoriteProduct.class);
		return query.getResultList();
	}

	@Override
	public FavoriteProduct selectById(FavoriteProduct t) {
      return null;
      
      /// hàm này có rồi sử dung hàm lấy list favorite bên Model
      // @OneToMany(mappedBy = "product")
    //   private Set<FavoriteProduct> favoriteProducts ;
	}

	@Override
	public int insert(FavoriteProduct t) {
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
	public int insertAll(List<FavoriteProduct> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		    try {
		        em.getTransaction().begin();
		        for (FavoriteProduct favoriteProduct : arr) {
		            em.persist(favoriteProduct);
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
	public int delete(FavoriteProduct t) {
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
	public int deleteAll(List<FavoriteProduct> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		 try {
			 em.getTransaction().begin();
		        for (FavoriteProduct favoriteProduct : arr) {
		        	em.remove(em.merge(favoriteProduct));
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
	public int update(FavoriteProduct t) {
		 EntityManager em = JpaUtils.getEntityManager();
		 try {
		        em.getTransaction().begin();
		        em.merge(t);
		        em.getTransaction().commit();
		        return 1; // return 1 if update successful
		    } catch (Exception e) {
		    	em.getTransaction().rollback();
		        e.printStackTrace();
		        return 0; // return 0 if update faileds
		    }
	}

	
}
