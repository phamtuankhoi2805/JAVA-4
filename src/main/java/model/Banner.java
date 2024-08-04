package model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="Banner")
public class Banner {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int BannerID;	
	private String BannerImageURL;
	@Temporal(TemporalType.DATE)
	private Date CreatedAt;
	public Banner() {
	
	}
	public Banner(int bannerID, String bannerImageURL, Date createdAt) {
	
		BannerID = bannerID;
		BannerImageURL = bannerImageURL;
		CreatedAt = createdAt;
	}
	public int getBannerID() {
		return BannerID;
	}
	public void setBannerID(int bannerID) {
		BannerID = bannerID;
	}
	public String getBannerImageURL() {
		return BannerImageURL;
	}
	public void setBannerImageURL(String bannerImageURL) {
		BannerImageURL = bannerImageURL;
	}
	public Date getCreatedAt() {
		return CreatedAt;
	}
	public void setCreatedAt(Date createdAt) {
		CreatedAt = createdAt;
	}
	
}
