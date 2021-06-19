package com.mousbear.admin.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the USER_ADDRESS database table.
 * 
 */
@Entity
@Table(name="USER_ADDRESS")
@NamedQuery(name="UserAddress.findAll", query="SELECT u FROM UserAddress u")
public class UserAddress implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ADDRESS_ID")
	private int addressId;

	private String address;

	private String city;

	private Timestamp created;

	private String landmark;

	private float latitude;

	private float longitude;

	@Column(name="PIN_CODE")
	private String pinCode;

	private String state;

	private Timestamp updated;

	//bi-directional many-to-one association to MousUser
	@ManyToOne
	@JoinColumn(name="USER_ID")
	private MousUser mousUser;

	public UserAddress() {
	}

	public int getAddressId() {
		return this.addressId;
	}

	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Timestamp getCreated() {
		return this.created;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
	}

	public String getLandmark() {
		return this.landmark;
	}

	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

	public float getLatitude() {
		return this.latitude;
	}

	public void setLatitude(float latitude) {
		this.latitude = latitude;
	}

	public float getLongitude() {
		return this.longitude;
	}

	public void setLongitude(float longitude) {
		this.longitude = longitude;
	}

	public String getPinCode() {
		return this.pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Timestamp getUpdated() {
		return this.updated;
	}

	public void setUpdated(Timestamp updated) {
		this.updated = updated;
	}

	public MousUser getMousUser() {
		return this.mousUser;
	}

	public void setMousUser(MousUser mousUser) {
		this.mousUser = mousUser;
	}

}