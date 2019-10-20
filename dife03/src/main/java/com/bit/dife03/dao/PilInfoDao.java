package com.bit.dife03.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.dife03.db.PilotManager;
import com.bit.dife03.vo.PilInfoVo;

@Repository
public class PilInfoDao {
	public PilInfoVo sel_pil_detail(int info) {
		return PilotManager.sel_pil_detail(info);
	}
	
	public List<PilInfoVo> sel_pil(String category, String location){
		return PilotManager.sel_pil(category, location);
	}
	
	public List<PilInfoVo> selectPil_info(){
		return PilotManager.selectPil_info();
	}
}
