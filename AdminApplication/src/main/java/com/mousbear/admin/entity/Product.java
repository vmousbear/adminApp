package com.mousbear.admin.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Set;


/**
 * The persistent class for the PRODUCT database table.
 * 
 */
@Entity
@NamedQuery(name="Product.findAll", query="SELECT p FROM Product p")
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PRODUCT_ID")
	private int productId;

	private Timestamp created;

	@Column(name="IN_STOCK")
	private int inStock;

	@Column(name="PRODUCT_DESC")
	private Object productDesc;

	@Column(name="PRODUCT_NAME")
	private Object productName;

	private Timestamp updated;

	private Object variant;

	//bi-directional many-to-one association to CartDetail
	@OneToMany(mappedBy="product", fetch=FetchType.EAGER)
	private Set<CartDetail> cartDetails;

	//bi-directional many-to-one association to SubCategory
	@ManyToOne
	@JoinColumn(name="SUB_CATEGORY_ID")
	private SubCategory subCategory;

	public Product() {
	}

	public int getProductId() {
		return this.productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public Timestamp getCreated() {
		return this.created;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
	}

	public int getInStock() {
		return this.inStock;
	}

	public void setInStock(int inStock) {
		this.inStock = inStock;
	}

	public Object getProductDesc() {
		return this.productDesc;
	}

	public void setProductDesc(Object productDesc) {
		this.productDesc = productDesc;
	}

	public Object getProductName() {
		return this.productName;
	}

	public void setProductName(Object productName) {
		this.productName = productName;
	}

	public Timestamp getUpdated() {
		return this.updated;
	}

	public void setUpdated(Timestamp updated) {
		this.updated = updated;
	}

	public Object getVariant() {
		return this.variant;
	}

	public void setVariant(Object variant) {
		this.variant = variant;
	}

	public Set<CartDetail> getCartDetails() {
		return this.cartDetails;
	}

	public void setCartDetails(Set<CartDetail> cartDetails) {
		this.cartDetails = cartDetails;
	}

	public CartDetail addCartDetail(CartDetail cartDetail) {
		getCartDetails().add(cartDetail);
		cartDetail.setProduct(this);

		return cartDetail;
	}

	public CartDetail removeCartDetail(CartDetail cartDetail) {
		getCartDetails().remove(cartDetail);
		cartDetail.setProduct(null);

		return cartDetail;
	}

	public SubCategory getSubCategory() {
		return this.subCategory;
	}

	public void setSubCategory(SubCategory subCategory) {
		this.subCategory = subCategory;
	}

}