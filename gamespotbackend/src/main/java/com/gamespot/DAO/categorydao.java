package com.gamespot.DAO;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gamespot.model.categorymodel;

@Service
public interface categorydao {
	 boolean insertuser(categorymodel i);
	 boolean updateuser(categorymodel u);
	 boolean deleteuser(int id);
	 List<categorymodel> showall();
	 categorymodel showone(int id);
	 
	
}
