package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.User;
import com.niit.shoppingcart.model.UserDetails;

public interface UserDAO
{

	

	public void save(UserDetails registeruser);

	public void save(User loginuser);
	


	
	
	
}
