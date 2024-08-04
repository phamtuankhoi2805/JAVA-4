package model;

import java.sql.Date;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;



@Entity
@Table(name = "Users")

public class User {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int UserID;
private String Username;
private String PasswordHash;
private String Email;
private String FullName;
private String UserType;
@Temporal(TemporalType.DATE)
private Date CreatedAt;
@OneToMany(mappedBy = "user")
private Set<PaymentInvoice> paymentInvoices;

@OneToMany(mappedBy = "user")
private Set<FavoriteProduct> favoriteProducts;

@OneToMany(mappedBy = "user")
private Set<Comment> comments ;

public User() {

}

public User(int userID, String username, String passwordHash, String email, String fullName, String userType,
		Date createdAt, Set<PaymentInvoice> paymentInvoices, Set<FavoriteProduct> favoriteProducts,
		Set<Comment> comments) {

	UserID = userID;
	Username = username;
	PasswordHash = passwordHash;
	Email = email;
	FullName = fullName;
	UserType = userType;
	CreatedAt = createdAt;
	this.paymentInvoices = paymentInvoices;
	this.favoriteProducts = favoriteProducts;
	this.comments = comments;
}

public int getUserID() {
	return UserID;
}

public void setUserID(int userID) {
	UserID = userID;
}

public String getUsername() {
	return Username;
}

public void setUsername(String username) {
	Username = username;
}

public String getPasswordHash() {
	return PasswordHash;
}

public void setPasswordHash(String passwordHash) {
	PasswordHash = passwordHash;
}

public String getEmail() {
	return Email;
}

public void setEmail(String email) {
	Email = email;
}

public String getFullName() {
	return FullName;
}

public void setFullName(String fullName) {
	FullName = fullName;
}

public String getUserType() {
	return UserType;
}

public void setUserType(String userType) {
	UserType = userType;
}

public Date getCreatedAt() {
	return CreatedAt;
}

public void setCreatedAt(Date createdAt) {
	CreatedAt = createdAt;
}

public Set<PaymentInvoice> getPaymentInvoices() {
	return paymentInvoices;
}

public void setPaymentInvoices(Set<PaymentInvoice> paymentInvoices) {
	this.paymentInvoices = paymentInvoices;
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
