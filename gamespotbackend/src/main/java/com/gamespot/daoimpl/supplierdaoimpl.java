package com.gamespot.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gamespot.DAO.supplierdao;

import com.gamespot.model.suppliermodel;
@Repository
public class supplierdaoimpl implements supplierdao {
	@Autowired
	SessionFactory sessionFactory;

	public boolean insertuser(suppliermodel i) {
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

	public boolean updateuser(suppliermodel u) {
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

	
	public List<suppliermodel> showall() {
		try {
			Session s = sessionFactory.openSession();
			Transaction t = s.getTransaction();
			t.begin();
			List<suppliermodel> l = s.createQuery("from suppliermodel").list();
			t.commit();
			s.close();
			return l;
		} catch (Exception e) {
			return null;
		}

	}

	
	public suppliermodel showone(int id) {
		try {
			Session s = sessionFactory.openSession();
			Transaction t = s.getTransaction();
			t.begin();
			suppliermodel p = s.get(suppliermodel.class, id);
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
			suppliermodel p = s.get(suppliermodel.class, id);
			s.delete(p);
			t.commit();
			s.close();
			return true;

		} catch (Exception e) {
			return false;
		}

	}

}
