package com.mousbear.admin.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Set;


/**
 * The persistent class for the CART database table.
 * 
 */
@Entity
@NamedQuery(name="Cart.findAll", query="SELECT c FROM Cart c")
public class Cart implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="CART_ID")
	private int cartId;

	@Column(name="CART_TOTAL_PRICE")
	private BigDecimal cartTotalPrice;

	private Timestamp created;

	private Timestamp updated;

	//bi-directional one-to-one association to MousUser
	@OneToOne
	@JoinColumn(name="CART_ID")
	private MousUser mousUser;

	//bi-directional many-to-one association to CartDetail
	@OneToMany(mappedBy="cart", fetch=FetchType.EAGER)
	private Set<CartDetail> cartDetails;

	public Cart() {
	}

	public int getCartId() {
		return this.cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public BigDecimal getCartTotalPrice() {
		return this.cartTotalPrice;
	}

	public void setCartTotalPrice(BigDecimal cartTotalPrice) {
		this.cartTotalPrice = cartTotalPrice;
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

	public Set<CartDetail> getCartDetails() {
		return this.cartDetails;
	}

	public void setCartDetails(Set<CartDetail> cartDetails) {
		this.cartDetails = cartDetails;
	}

	public CartDetail addCartDetail(CartDetail cartDetail) {
		getCartDetails().add(cartDetail);
		cartDetail.setCart(this);

		return cartDetail;
	}

	public CartDetail removeCartDetail(CartDetail cartDetail) {
		getCartDetails().remove(cartDetail);
		cartDetail.setCart(null);

		return cartDetail;
	}

}