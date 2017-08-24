package com.gamespot.daoimpl;


import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.gamespot.DAO.productdao;

import com.gamespot.model.productmodel;
@Repository
public class productdaoimpl implements productdao {
	
	
	@Autowired
	SessionFactory sessionFactory;
	
	public boolean insertProduct(productmodel i)
	{
	try
	{
		Session s = sessionFactory.openSession();
		Transaction t =s.getTransaction();
		t.begin();
		s.save(i);
		t.commit();
		s.close();
		return true;
	}
	catch(Exception e ){
		return false;
	}
	}
	public boolean updateuser(productmodel u)
	{
	try
	{
		Session s = sessionFactory.openSession();
		Transaction t =s.getTransaction();
		t.begin();
		s.update(u);
		t.commit();
		s.close();
		return true;
	}
	catch(Exception e ){
		return false;
	}

	}
	
	

	public List<productmodel> showall() {
		try{
			System.out.println("1");
		Session s = sessionFactory.openSession();
		System.out.println("1");
		Transaction t =s.getTransaction();
		System.out.println("1");
		t.begin();
		System.out.println("1");
		List<productmodel> l = s.createQuery("from productmodel").list();
		System.out.println("1");
		t.commit();
		System.out.println("1");
		s.close();
		System.out.println("1");
		return l;
		}
		catch(Exception e)
		{
			System.out.println("catch 1");
			System.out.println(e.getMessage());


		return null;
		}
		}
	
	
	public productmodel showone(int id) {
	try{
		Session s = sessionFactory.openSession();
		Transaction t =s.getTransaction();
		t.begin();
		productmodel p =s.get(productmodel.class, id);
		t.commit();
		s.close();
	return p;
	}
	catch(Exception e){
	return null;
	}
	}
	
	public boolean deleteuser( int id) {
		try{
			Session s = sessionFactory.openSession();
			Transaction t =s.getTransaction();
			t.begin();
			productmodel p =s.get(productmodel.class, id);
			s.delete(p);
			t.commit();
			s.close();
			return true;
			}
			catch(Exception e){
			return false;
			}
		
	}

	
	
	
	}

