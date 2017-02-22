package com.niit.shoppingcart.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class CartItem 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "cartItemId")	
	public int cartItemId;
	@ManyToOne
	@JoinColumn(name="cartId")
	public CartItem cart;
	public int Id;
	@Column(name = "Name")
	public String Name;
	@Column(name = "Style")
	public String Style;
	@Column(name = "Price")
	double Price;
	@Column(name="Desc")
	String Desc;
	@Column(name="Capacity")
	String Capacity;
	@Column(name="quantity")
	int quantity;
	public int getCartItemId() {
		return cartItemId;
	}
	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}
	public CartItem getCart() {
		return cart;
	}
	public void setCart(CartItem cart) {
		this.cart = cart;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getStyle() {
		return Style;
	}
	public void setStyle(String style) {
		Style = style;
	}
	public double getPrice() {
		return Price;
	}
	public void setPrice(double price) {
		Price = price;
	}
	public String getDesc() {
		return Desc;
	}
	public void setDesc(String desc) {
		Desc = desc;
	}
	public String getCapacity() {
		return Capacity;
	}
	public void setCapacity(String capacity) {
		Capacity = capacity;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	

}