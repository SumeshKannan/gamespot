package com.gamespot.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gamespot.DAO.userregdao;
import com.gamespot.model.productmodel;
import com.gamespot.model.userreg;
@Repository
public class userregdaoimpl implements userregdao {

	@Autowired
	SessionFactory sessionFactory;
	
	public boolean insertuser(userreg i)
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


	public List<userreg> showall() {
		try{
			System.out.println("1");
		Session s = sessionFactory.openSession();
		System.out.println("1");
		Transaction t =s.getTransaction();
		System.out.println("1");
		t.begin();
		System.out.println("1");
		List<userreg> l = s.createQuery("from userreg").list();
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

	
	public userreg showuser(String id) {
		// TODO Auto-generated method stub
		
		try{
			Session s = sessionFactory.openSession();
			Transaction t =s.getTransaction();
			t.begin();
			userreg usr=s.get(userreg.class, id);
			t.commit();
			s.close();
			return usr;
		}
		catch(Exception e)
		{
			return null;
		}
		
	}


}

