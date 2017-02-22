package com.niit.shoppingcart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@Entity
@Table(name="register")
@Component
public class UserDetails {
	
			 @Id
			 @GeneratedValue(strategy=GenerationType.AUTO)
			 @Column(name="id")
		     private int id;	
			 
			 
			 @Column(name="username")
		     private String username;
			 
					 
			 
			 @Column(name="mailid")
		     private String mailid;
			 
			 
			 @Column(name="phone")
		     private String phone;
			 
		
			 
			 @Column(name="password")
		     private String password;
			 
			 
			 @Column(name="confirmpassword")
		     private String confirmpassword; 
			 
			private boolean status=true;

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

			public String getMailid() {
				return mailid;
			}

			public void setMailid(String mailid) {
				this.mailid = mailid;
			}

			public String getPhone() {
				return phone;
			}

			public void setPhone(String phone) {
				this.phone = phone;
			}

		
			public String getPassword() {
				return password;
			}

			public void setPassword(String password) {
				this.password = password;
			}

			public String getConfirmpassword() {
				return confirmpassword;
			}

			public void setConfirmpassword(String confirmpassword) {
				this.confirmpassword = confirmpassword;
			}

			public boolean isStatus() {
				return status;
			}

			public void setStatus(boolean status) {
				this.status = status;
			}
						
}