package com.mousbear.admin.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Set;


/**
 * The persistent class for the CATEGORY database table.
 * 
 */
@Entity
@NamedQuery(name="Category.findAll", query="SELECT c FROM Category c")
public class Category implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="CATEGORY_ID")
	private int categoryId;

	@Column(name="CATEGORY_NAME")
	private Object categoryName;

	private Timestamp created;

	private Object image;

	private Timestamp updated;

	//bi-directional many-to-one association to SubCategory
	@OneToMany(mappedBy="category", fetch=FetchType.EAGER)
	private Set<SubCategory> subCategories;

	public Category() {
	}

	public int getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public Object getCategoryName() {
		return this.categoryName;
	}

	public void setCategoryName(Object categoryName) {
		this.categoryName = categoryName;
	}

	public Timestamp getCreated() {
		return this.created;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
	}

	public Object getImage() {
		return this.image;
	}

	public void setImage(Object image) {
		this.image = image;
	}

	public Timestamp getUpdated() {
		return this.updated;
	}

	public void setUpdated(Timestamp updated) {
		this.updated = updated;
	}

	public Set<SubCategory> getSubCategories() {
		return this.subCategories;
	}

	public void setSubCategories(Set<SubCategory> subCategories) {
		this.subCategories = subCategories;
	}

	public SubCategory addSubCategory(SubCategory subCategory) {
		getSubCategories().add(subCategory);
		subCategory.setCategory(this);

		return subCategory;
	}

	public SubCategory removeSubCategory(SubCategory subCategory) {
		getSubCategories().remove(subCategory);
		subCategory.setCategory(null);

		return subCategory;
	}

}