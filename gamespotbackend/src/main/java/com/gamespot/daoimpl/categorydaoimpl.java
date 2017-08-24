package com.gamespot.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gamespot.DAO.categorydao;
import com.gamespot.model.categorymodel;

@Repository
public class categorydaoimpl implements categorydao 
{
	@Autowired
	SessionFactory sessionFactory;

	public boolean insertuser(categorymodel i) {
		try {
			Session s = sessionFactory.openSession();
			Transaction t = s.getTransaction();
			t.begin();
			s.save(i);
			t.commit();
			s.close();
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public boolean updateuser(categorymodel u) {
		try {
			Session s = sessionFactory.openSession();
			Transaction t = s.getTransaction();
			t.begin();
			s.update(u);
			t.commit();
			s.close();
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	

	public List<categorymodel> showall() {
		try {
			Session s = sessionFactory.openSession();
			Transaction t = s.getTransaction();
			t.begin();
			List<categorymodel> l = s.createQuery("from categorymodel").list();
			t.commit();
			s.close();
			return l;
		} catch (Exception e) {
			return null;
		}
	}

	
	public categorymodel showone(int id) {
		try {
			Session s = sessionFactory.openSession();
			Transaction t = s.getTransaction();
			t.begin();
			categorymodel p = s.get(categorymodel.class, id);
			t.commit();
			s.close();
			return p;
		} catch (Exception e) {
			return null;
		}
	}

	
	public boolean deleteuser(int id) {
		try {
			Session s = sessionFactory.openSession();
			Transaction t = s.getTransaction();
			t.begin();
			categorymodel p = s.get(categorymodel.class, id);
			s.delete(p);
			t.commit();
			s.close();
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
