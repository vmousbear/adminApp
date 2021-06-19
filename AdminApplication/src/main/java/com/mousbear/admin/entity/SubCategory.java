package com.mousbear.admin.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Set;


/**
 * The persistent class for the SUB_CATEGORY database table.
 * 
 */
@Entity
@Table(name="SUB_CATEGORY")
@NamedQuery(name="SubCategory.findAll", query="SELECT s FROM SubCategory s")
public class SubCategory implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="SUB_CATEGORY_ID")
	private int subCategoryId;

	private Timestamp created;

	private Object image;

	@Column(name="SUB_CATEGORY_NAME")
	private Object subCategoryName;

	private Timestamp updated;

	//bi-directional many-to-one association to Product
	@OneToMany(mappedBy="subCategory", fetch=FetchType.EAGER)
	private Set<Product> products;

	//bi-directional many-to-one association to Category
	@ManyToOne
	@JoinColumn(name="CATEGORY_ID")
	private Category category;

	public SubCategory() {
	}

	public int getSubCategoryId() {
		return this.subCategoryId;
	}

	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
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

	public Object getSubCategoryName() {
		return this.subCategoryName;
	}

	public void setSubCategoryName(Object subCategoryName) {
		this.subCategoryName = subCategoryName;
	}

	public Timestamp getUpdated() {
		return this.updated;
	}

	public void setUpdated(Timestamp updated) {
		this.updated = updated;
	}

	public Set<Product> getProducts() {
		return this.products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

	public Product addProduct(Product product) {
		getProducts().add(product);
		product.setSubCategory(this);

		return product;
	}

	public Product removeProduct(Product product) {
		getProducts().remove(product);
		product.setSubCategory(null);

		return product;
	}

	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

}