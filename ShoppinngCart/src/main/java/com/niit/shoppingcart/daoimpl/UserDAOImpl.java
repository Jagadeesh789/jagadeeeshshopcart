package com.niit.shoppingcart.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;
import com.niit.shoppingcart.model.UserDetails;


@Repository("userDAO")
public class UserDAOImpl implements UserDAO 
{
	 
		 
		@Autowired
		private SessionFactory sessionFactory;


		public UserDAOImpl(SessionFactory sessionFactory)
		{
				this.sessionFactory = sessionFactory;
			}
		


		@Transactional
		public void save(UserDetails registeruser) 
		{
			sessionFactory.getCurrentSession().save(registeruser);
			
		}


@Transactional
		public void save(User loginuser) {
			
			sessionFactory.getCurrentSession().save(loginuser);
			
		}
		
		
	}
