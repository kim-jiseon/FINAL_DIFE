package com.bit.dife03.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.dife03.db.AdminManager;
import com.bit.dife03.vo.AdminVo;

@Repository
public class AdminDao {

	
	public List<AdminVo> listAll() {
		// TODO Auto-generated method stub
		return AdminManager.listAdmin();
	}

}
