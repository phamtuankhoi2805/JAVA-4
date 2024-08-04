package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import Util.JpaUtils;
import model.PaymentInvoiceDetail;
import model.User;

public class PaymentInvoiceDetailDao implements DAOInterface<PaymentInvoiceDetail> {
	public static PaymentInvoiceDetailDao getInstance() {
		return new PaymentInvoiceDetailDao();
	}
	@Override
	public List<PaymentInvoiceDetail> selectAll() {
		EntityManager em = JpaUtils.getEntityManager();
		String jpql =  "select pm from PaymentInvoiceDetail pm";
		TypedQuery<PaymentInvoiceDetail> query = em.createQuery(jpql,PaymentInvoiceDetail.class);
		return query.getResultList();
	}

	@Override
	public PaymentInvoiceDetail selectById(PaymentInvoiceDetail t) {
		// Hàm nàu cung có trong model
		return null;
	}

	@Override
	public int insert(PaymentInvoiceDetail t) {
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
	public int insertAll(List<PaymentInvoiceDetail> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		    try {
		        em.getTransaction().begin();
		        for (PaymentInvoiceDetail paymentInvoiceDetail : arr) {
		            em.persist(paymentInvoiceDetail);
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
	public int delete(PaymentInvoiceDetail t) {
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
	public int deleteAll(List<PaymentInvoiceDetail> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		 try {
			 em.getTransaction().begin();
		        for (PaymentInvoiceDetail paymentInvoiceDetail : arr) {
		        	em.remove(em.merge(paymentInvoiceDetail));
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
	public int update(PaymentInvoiceDetail t) {
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
