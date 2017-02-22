package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.Suppiler;

public interface SuppilerDAO {

	
	public List<Suppiler> list();
	
	public Suppiler get(int id);
	
	public List getAllSuppilers();
	
	public Suppiler getSingleSuppiler(int id);
	
	public void update(Suppiler supplier);
	
	public void saveOrUpdate(Suppiler supplier);
	
	public void delete(int id);
}
