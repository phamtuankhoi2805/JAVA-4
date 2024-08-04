package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import Util.JpaUtils;
import model.PaymentInvoice;
import model.User;

public class PaymentInvoiceDao implements DAOInterface<PaymentInvoice> {
	public static PaymentInvoiceDao getInstance() {
		return new PaymentInvoiceDao();
	}
	@Override
	public List<PaymentInvoice> selectAll() {
		EntityManager em = JpaUtils.getEntityManager();
		String jpql =  "select pi from PaymentInvoice pi";
		TypedQuery<PaymentInvoice> query = em.createQuery(jpql,PaymentInvoice.class);
		return query.getResultList();
	}

	@Override
	public PaymentInvoice selectById(PaymentInvoice t) {
		EntityManager em = JpaUtils.getEntityManager();
		String jpql = "SELECT pi FROM PaymentInvoice pi WHERE u.InvoiceID = :InvoiceID";
	TypedQuery<PaymentInvoice> query = em.createQuery(jpql,PaymentInvoice.class);
	query.setParameter("InvoiceID", t.getInvoiceID());
	return query.getSingleResult();
	}

	@Override
	public int insert(PaymentInvoice t) {
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
	public int insertAll(List<PaymentInvoice> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		    try {
		        em.getTransaction().begin();
		        for (PaymentInvoice paymentInvoice : arr) {
		            em.persist(paymentInvoice);
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
	public int delete(PaymentInvoice t) {
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
	public int deleteAll(List<PaymentInvoice> arr) {
		 EntityManager em = JpaUtils.getEntityManager();
		 try {
			 em.getTransaction().begin();
		        for (PaymentInvoice paymentInvoice : arr) {
		        	em.remove(em.merge(paymentInvoice));
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
	public int update(PaymentInvoice t) {
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
