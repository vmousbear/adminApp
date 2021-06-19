package com.mousbear.admin.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the USER_ROLE database table.
 * 
 */
@Entity
@Table(name="USER_ROLE")
@NamedQuery(name="UserRole.findAll", query="SELECT u FROM UserRole u")
public class UserRole implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="USER_ROLE_ID")
	private int userRoleId;

	private Timestamp created;

	private Timestamp updated;

	//bi-directional many-to-one association to MousUser
	@ManyToOne
	@JoinColumn(name="USER_ID")
	private MousUser mousUser;

	//bi-directional many-to-one association to Role
	@ManyToOne
	@JoinColumn(name="ROLE_ID")
	private Role role;

	public UserRole() {
	}

	public int getUserRoleId() {
		return this.userRoleId;
	}

	public void setUserRoleId(int userRoleId) {
		this.userRoleId = userRoleId;
	}

	public Timestamp getCreated() {
		return this.created;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
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

	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

}