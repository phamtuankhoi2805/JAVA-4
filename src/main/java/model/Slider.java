package model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

public class Slider {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int SliderID;	
	private String SliderImageURL;
    @Column(name = "CreatedAt", nullable = false, updatable = false)
    private Date CreatedAt;
	public Slider() {
		
	}
	public Slider(int sliderID, String sliderImageURL, Date createdAt) {

		SliderID = sliderID;
		SliderImageURL = sliderImageURL;
		CreatedAt = createdAt;
	}
	public int getSliderID() {
		return SliderID;
	}
	public void setSliderID(int sliderID) {
		SliderID = sliderID;
	}
	public String getSliderImageURL() {
		return SliderImageURL;
	}
	public void setSliderImageURL(String sliderImageURL) {
		SliderImageURL = sliderImageURL;
	}
	public Date getCreatedAt() {
		return CreatedAt;
	}
	public void setCreatedAt(Date createdAt) {
		CreatedAt = createdAt;
	}
	
}
