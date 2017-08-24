package com.gamespot.DAO;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gamespot.model.suppliermodel;

@Service

public interface supplierdao {
	 boolean insertuser(suppliermodel i);
	 boolean updateuser(suppliermodel u);
	 boolean deleteuser( int id);
	 List<suppliermodel> showall();
	 suppliermodel showone(int id);
}
