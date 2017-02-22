package com.niit.shoppingcart.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.dao.SuppilerDAO;
import com.niit.shoppingcart.model.Suppiler;

@Repository("supplierDAO")
public class SuppilerDAOImpl implements SuppilerDAO {
	public List<Suppiler> list1() {
		return null;
	}

	@Autowired
	private SessionFactory sessionFactory;

	public SuppilerDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void saveOrUpdate(Suppiler supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);

	}

	@Transactional
	public void delete(int id) {
		Suppiler SuppilerToDelete = new Suppiler();
		SuppilerToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(SuppilerToDelete);
	}

	@Transactional
	public List<Suppiler> listSuppiler() {
		@SuppressWarnings("unchecked")
		List<Suppiler> listSuppiler = sessionFactory.getCurrentSession().createCriteria(Suppiler.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listSuppiler;
	}

	@Transactional
	public Suppiler get(int id) {
		String hql = "from Suppiler where id=" + "'" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Suppiler> listSuppiler = query.list();
		if (listSuppiler != null && !listSuppiler.isEmpty()) {
			return listSuppiler.get(0);
		}
		return null;
	}

	@Transactional
	public List getAllSuppilers() {
		Session session = sessionFactory.getCurrentSession();
		List list = session.createQuery("from Suppiler").list();
		
		return list;
	}

	@Transactional
	public Suppiler getSingleSuppiler(int id) {
		Session session = sessionFactory.openSession();
		Suppiler supplier = (Suppiler) session.load(Suppiler.class, id);
		return supplier;
	}

	public List<Suppiler> list() {
		@SuppressWarnings("unchecked")
		List<Suppiler> listsupplier = sessionFactory.getCurrentSession()
				.createCriteria(Suppiler.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listsupplier;

	}

	@Transactional
	public void update(Suppiler supplier) {
		sessionFactory.getCurrentSession().update(supplier);
		
	}

}
