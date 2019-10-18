package com.bit.dife03.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.dife03.db.PilotManager;
import com.bit.dife03.vo.PilInfoVo;

@Repository
public class PilInfoDao {
	public List<PilInfoVo> sel_pilOne(String category, String location){
		return PilotManager.sel_pilOne(category, location);
	}
	
	public List<PilInfoVo> selectPil_info(){
		return PilotManager.selectPil_info();
	}
}
