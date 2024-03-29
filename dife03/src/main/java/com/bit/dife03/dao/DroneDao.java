package com.bit.dife03.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.dife03.db.DroneManager;
import com.bit.dife03.vo.DroneVo;

@Repository
public class DroneDao {

	public List<DroneVo> sel_droAll(HashMap map){
		return DroneManager.sel_droAll(map);
	}

	public List<DroneVo> sel_droAllList(HashMap map){
		return DroneManager.sel_droAllList(map);
	}

	public DroneVo sel_droDetail(String dro_no) {
		return DroneManager.sel_droDetail(dro_no);
	}

	public int get_droCount(HashMap map) {
		return DroneManager.get_droCount(map);
	}
	
	public int in_droRental(String dro_no) {
		return DroneManager.in_droRental(dro_no);
	}
/*
	public Object sel_droCon(String dro_no) {
		// TODO Auto-generated method stub
		return DroneManager.sel_droCon(dro_no);
	}

	public int in_droBasket(String dro_no) {
		// TODO Auto-generated method stub
		return DroneManager.in_droBasket(dro_no);
	}*/

	public int insertBasket(HashMap map) {
		// TODO Auto-generated method stub
		return DroneManager.insertBasket(map);
	}

	public int insertOrder(HashMap map) {
		// TODO Auto-generated method stub
		return DroneManager.insertOrder(map);
	}

}
