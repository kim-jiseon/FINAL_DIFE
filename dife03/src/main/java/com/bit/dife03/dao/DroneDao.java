package com.bit.dife03.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.dife03.db.DroneManager;
import com.bit.dife03.vo.DroneVo;

@Repository
public class DroneDao {

	public List<DroneVo> sel_droAll(){
		return DroneManager.sel_droAll();
	}

	public Object sel_droDetail(String pos_no) {
		return DroneManager.sel_droDetail(pos_no);
	}

	public int get_droCount() {
		// TODO Auto-generated method stub
		return DroneManager.get_droCount();
	}

	public Object droListPage(HashMap map) {
		// TODO Auto-generated method stub
		
		return DroneManager.droListPage(map);
	}	
	
}
