package model;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="Product")
public class Product {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int ProductID;
private String ProductName;
private String Descriptions;
private BigDecimal Price;
private String ProductType;
private int Inventory;
private String ImageURL;
@Column(name = "CreatedAt", nullable = false, updatable = false)
private Date CreatedAt;


@OneToMany(mappedBy = "product")
private Set<PaymentInvoiceDetail> paymentInvoiceDetails;

@OneToMany(mappedBy = "product")
private Set<FavoriteProduct> favoriteProducts ;
@OneToMany(mappedBy = "product")
private Set<Comment> comments ;
public Product() {

}
public Product(int productID, String productName, String descriptions, BigDecimal price, String productType,
		int inventory, String imageURL, Date createdAt, Set<PaymentInvoiceDetail> paymentInvoiceDetails,
		Set<FavoriteProduct> favoriteProducts, Set<Comment> comments) {

	ProductID = productID;
	ProductName = productName;
	Descriptions = descriptions;
	Price = price;
	ProductType = productType;
	Inventory = inventory;
	ImageURL = imageURL;
	CreatedAt = createdAt;
	this.paymentInvoiceDetails = paymentInvoiceDetails;
	this.favoriteProducts = favoriteProducts;
	this.comments = comments;
}
public int getProductID() {
	return ProductID;
}
public void setProductID(int productID) {
	ProductID = productID;
}
public String getProductName() {
	return ProductName;
}
public void setProductName(String productName) {
	ProductName = productName;
}
public String getDescriptions() {
	return Descriptions;
}
public void setDescriptions(String descriptions) {
	Descriptions = descriptions;
}
public BigDecimal getPrice() {
	return Price;
}
public void setPrice(BigDecimal price) {
	Price = price;
}
public String getProductType() {
	return ProductType;
}
public void setProductType(String productType) {
	ProductType = productType;
}
public int getInventory() {
	return Inventory;
}
public void setInventory(int inventory) {
	Inventory = inventory;
}
public String getImageURL() {
	return ImageURL;
}
public void setImageURL(String imageURL) {
	ImageURL = imageURL;
}
public Date getCreatedAt() {
	return CreatedAt;
}
public void setCreatedAt(Date createdAt) {
	CreatedAt = createdAt;
}
public Set<PaymentInvoiceDetail> getPaymentInvoiceDetails() {
	return paymentInvoiceDetails;
}
public void setPaymentInvoiceDetails(Set<PaymentInvoiceDetail> paymentInvoiceDetails) {
	this.paymentInvoiceDetails = paymentInvoiceDetails;
}
public Set<FavoriteProduct> getFavoriteProducts() {
	return favoriteProducts;
}
public void setFavoriteProducts(Set<FavoriteProduct> favoriteProducts) {
	this.favoriteProducts = favoriteProducts;
}
public Set<Comment> getComments() {
	return comments;
}
public void setComments(Set<Comment> comments) {
	this.comments = comments;
}


}
