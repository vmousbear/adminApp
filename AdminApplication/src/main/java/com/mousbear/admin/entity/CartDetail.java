package com.mousbear.admin.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.sql.Timestamp;


/**
 * The persistent class for the CART_DETAIL database table.
 * 
 */
@Entity
@Table(name="CART_DETAIL")
@NamedQuery(name="CartDetail.findAll", query="SELECT c FROM CartDetail c")
public class CartDetail implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="CART_DETAIL_ID")
	private int cartDetailId;

	private Timestamp created;

	@Column(name="PRODUCT_PRICE")
	private BigDecimal productPrice;

	private int quantity;

	@Column(name="TOTAL_PRICE")
	private BigDecimal totalPrice;

	private Timestamp updated;

	//bi-directional many-to-one association to Cart
	@ManyToOne
	@JoinColumn(name="CART_ID")
	private Cart cart;

	//bi-directional many-to-one association to Product
	@ManyToOne
	@JoinColumn(name="PRODUCT_ID")
	private Product product;

	public CartDetail() {
	}

	public int getCartDetailId() {
		return this.cartDetailId;
	}

	public void setCartDetailId(int cartDetailId) {
		this.cartDetailId = cartDetailId;
	}

	public Timestamp getCreated() {
		return this.created;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
	}

	public BigDecimal getProductPrice() {
		return this.productPrice;
	}

	public void setProductPrice(BigDecimal productPrice) {
		this.productPrice = productPrice;
	}

	public int getQuantity() {
		return this.quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public BigDecimal getTotalPrice() {
		return this.totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
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

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}