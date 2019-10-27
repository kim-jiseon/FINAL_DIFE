package com.bit.dife03.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.dife03.db.PilotManager;
import com.bit.dife03.vo.PilListVo;

@Repository
public class PilInfoDao {
	public int sel_pil_cnt() {
		return PilotManager.sel_pil_cnt();
	}
	
	public PilListVo sel_pil_detail(int info) {
		return PilotManager.sel_pil_detail(info);
	}
	
	public List<PilListVo> sel_pil(String category, String location){
		return PilotManager.sel_pil(category, location);
	}
	
	public List<PilListVo> selectPil_list(HashMap map){
		return PilotManager.selectPil_list(map);
	}
}
