package com.gamespot.DAO;

import java.util.List;

import org.springframework.stereotype.Service;


import com.gamespot.model.userreg;

@Service
public interface userregdao {
	  boolean insertuser(userreg i);
	  List<userreg> showall();
	  userreg showuser(String id);
}
