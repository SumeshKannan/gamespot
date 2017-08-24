package com.gamespot.DAO;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gamespot.model.productmodel;

@Service

public interface productdao {
	 boolean insertProduct(productmodel i);
	 boolean updateuser(productmodel u);
	 boolean deleteuser(int id);
	 List<productmodel> showall();
	 productmodel showone(int id);
}
