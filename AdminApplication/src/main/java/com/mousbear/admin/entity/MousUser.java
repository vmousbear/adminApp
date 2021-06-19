package com.mousbear.admin.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Set;


/**
 * The persistent class for the MOUS_USER database table.
 * 
 */
@Entity
@Table(name="MOUS_USER")
@NamedQuery(name="MousUser.findAll", query="SELECT m FROM MousUser m")
public class MousUser implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="USER_ID")
	private int userId;

	private Timestamp created;

	private String dob;

	private String email;

	@Column(name="FIRST_NAME")
	private String firstName;

	private String gender;

	@Column(name="LAST_NAME")
	private String lastName;

	@Column(name="MOBILE_NUMBER")
	private String mobileNumber;

	private String remarks;

	private Timestamp updated;

	//bi-directional one-to-one association to Cart
	@OneToOne(mappedBy="mousUser")
	private Cart cart;

	//bi-directional many-to-one association to UserAddress
	@OneToMany(mappedBy="mousUser", fetch=FetchType.EAGER)
	private Set<UserAddress> userAddresses;

	//bi-directional many-to-one association to UserRole
	@OneToMany(mappedBy="mousUser", fetch=FetchType.EAGER)
	private Set<UserRole> userRoles;

	public MousUser() {
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Timestamp getCreated() {
		return this.created;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
	}

	public String getDob() {
		return this.dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMobileNumber() {
		return this.mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public Timestamp getUpdated() {
		return this.updated;
	}

	public void setUpdated(Timestamp updated) {
		this.updated = updated;
	}

	public Cart getCart() {
		return this.cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public Set<UserAddress> getUserAddresses() {
		return this.userAddresses;
	}

	public void setUserAddresses(Set<UserAddress> userAddresses) {
		this.userAddresses = userAddresses;
	}

	public UserAddress addUserAddress(UserAddress userAddress) {
		getUserAddresses().add(userAddress);
		userAddress.setMousUser(this);

		return userAddress;
	}

	public UserAddress removeUserAddress(UserAddress userAddress) {
		getUserAddresses().remove(userAddress);
		userAddress.setMousUser(null);

		return userAddress;
	}

	public Set<UserRole> getUserRoles() {
		return this.userRoles;
	}

	public void setUserRoles(Set<UserRole> userRoles) {
		this.userRoles = userRoles;
	}

	public UserRole addUserRole(UserRole userRole) {
		getUserRoles().add(userRole);
		userRole.setMousUser(this);

		return userRole;
	}

	public UserRole removeUserRole(UserRole userRole) {
		getUserRoles().remove(userRole);
		userRole.setMousUser(null);

		return userRole;
	}

}