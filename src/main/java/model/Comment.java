package model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="Comments")
public class Comment {
  @Id
  private long ID;
	@ManyToOne
	@JoinColumn(name = "UserID")
	private User user ;

	@ManyToOne
	@JoinColumn(name = "ProductID")
	private Product product;
	private String CommentText;
    @Column(name = "CreatedAt", nullable = false, updatable = false)
    private Date CreatedAt;
	public Comment(User user, Product product, String commentText, Date createdAt) {
	
		this.user = user;
		this.product = product;
		CommentText = commentText;
		CreatedAt = createdAt;
	}
	
	public long getID() {
		return ID;
	}

	public void setID(long iD) {
		ID = iD;
	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String getCommentText() {
		return CommentText;
	}
	public void setCommentText(String commentText) {
		CommentText = commentText;
	}
	public Date getCreatedAt() {
		return CreatedAt;
	}
	public void setCreatedAt(Date createdAt) {
		CreatedAt = createdAt;
	}
	
}
