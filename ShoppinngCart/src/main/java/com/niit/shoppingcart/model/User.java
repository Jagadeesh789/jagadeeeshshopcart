package com.niit.shoppingcart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@Entity
@Table(name="authorities")
@Component
public class User {

public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
@Id
private int id;
private String username;
private String password;
private String role="ROLE_Admin";
private boolean status;
public String getName() {
	// TODO Auto-generated method stub
	return null;
}
public char[] getApartmentNumber() {
	// TODO Auto-generated method stub
	return null;
}
public char[] getMail() {
	// TODO Auto-generated method stub
	return null;
}


}

