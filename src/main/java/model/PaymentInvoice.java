package model;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="PaymentInvoice")
public class PaymentInvoice {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int InvoiceID;
private BigDecimal TotalAmount;
@Temporal(TemporalType.DATE)
private Date CreatedAt;

@ManyToOne
@JoinColumn(name = "UserID")
private User user;


@OneToMany(mappedBy = "paymentInvoice")
private Set<PaymentInvoiceDetail> paymentInvoiceDetails;


public PaymentInvoice() {

}


public PaymentInvoice(int invoiceID, BigDecimal totalAmount, Date createdAt, User user,
		Set<PaymentInvoiceDetail> paymentInvoiceDetails) {

	InvoiceID = invoiceID;
	TotalAmount = totalAmount;
	CreatedAt = createdAt;
	this.user = user;
	this.paymentInvoiceDetails = paymentInvoiceDetails;
}


public int getInvoiceID() {
	return InvoiceID;
}


public void setInvoiceID(int invoiceID) {
	InvoiceID = invoiceID;
}


public BigDecimal getTotalAmount() {
	return TotalAmount;
}


public void setTotalAmount(BigDecimal totalAmount) {
	TotalAmount = totalAmount;
}


public Date getCreatedAt() {
	return CreatedAt;
}


public void setCreatedAt(Date createdAt) {
	CreatedAt = createdAt;
}


public User getUser() {
	return user;
}


public void setUser(User user) {
	this.user = user;
}


public Set<PaymentInvoiceDetail> getPaymentInvoiceDetails() {
	return paymentInvoiceDetails;
}


public void setPaymentInvoiceDetails(Set<PaymentInvoiceDetail> paymentInvoiceDetails) {
	this.paymentInvoiceDetails = paymentInvoiceDetails;
}


}
