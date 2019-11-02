package com.bit.dife03.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.dife03.db.DroneManager;
import com.bit.dife03.vo.DroneVo;

@Repository
public class DroneDao {

	public List<DroneVo> selectAll_dro(){
		return DroneManager.selectAll_dro();
	}

	public Object sel_droDetail(String pos_no) {
		return DroneManager.sel_droDetail(pos_no);
	}

	public int getCount() {
		// TODO Auto-generated method stub
		return DroneManager.get_droCount();
	}
	
	
}
