package model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="FavoriteProducts")
public class FavoriteProduct {
	@ManyToOne
	@JoinColumn(name = "ProductID")
	private Product product;
	
	@ManyToOne
	@JoinColumn(name = "UserID")
	private User user ;
	@Temporal(TemporalType.DATE)
	private Date CreatedAt;
	public FavoriteProduct(Product product, User user, Date createdAt) {
		
		this.product = product;
		this.user = user;
		CreatedAt = createdAt;
	}
	public FavoriteProduct() {
	
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
	public Date getCreatedAt() {
		return CreatedAt;
	}
	public void setCreatedAt(Date createdAt) {
		CreatedAt = createdAt;
	}
	
}
