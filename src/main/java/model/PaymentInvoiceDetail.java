package model;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="PaymentInvoiceDetails")
public class PaymentInvoiceDetail {


@ManyToOne
@JoinColumn(name = "InvoiceID")
private PaymentInvoice paymentInvoice;

@ManyToOne
@JoinColumn(name = "ProductID")
private Product product;


@ManyToOne
@JoinColumn(name = "UserID")
private User user;


private int Quantity;
private BigDecimal Price;
public PaymentInvoiceDetail() {
	
}
public PaymentInvoiceDetail(PaymentInvoice paymentInvoice, Product product, User user, int quantity, BigDecimal price) {

	this.paymentInvoice = paymentInvoice;
	this.product = product;
	this.user = user;
	Quantity = quantity;
	Price = price;
}
public PaymentInvoice getPaymentInvoice() {
	return paymentInvoice;
}
public void setPaymentInvoice(PaymentInvoice paymentInvoice) {
	this.paymentInvoice = paymentInvoice;
}
public Product getProduct() {
	return product;
}
public void setProduct(Product product) {
	this.product = product;
}
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}
public int getQuantity() {
	return Quantity;
}
public void setQuantity(int quantity) {
	Quantity = quantity;
}
public BigDecimal getPrice() {
	return Price;
}
public void setPrice(BigDecimal price) {
	Price = price;
}

}
