package com.bit.dife03.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.dife03.db.PilotManager;
import com.bit.dife03.vo.PilListVo;
import com.bit.dife03.vo.PilReservationVo;

@Repository
public class PilotDao {
	//예약상담번호
	public int sel_nextNo() {
		return PilotManager.sel_nextNo();
	}
	
	//전체 레코드수
	public int sel_pil_cnt(HashMap map) {
		return PilotManager.sel_pil_cnt(map);
	}
	
	//파일럿 상세페이지
	public PilListVo sel_pil_detail(int info) {
		return PilotManager.sel_pil_detail(info);
	}
	
	//파일럿 리스트 셀렉
	public List<PilListVo> sel_pil(HashMap map){
		return PilotManager.sel_pil(map);
	}
	//예약 상담 insert
	public int insertPilRes(PilReservationVo vo) {
		// TODO Auto-generated method stub
		return PilotManager.insertPilRes(vo);
	}
	
	/*
	public List<PilListVo> selectPil_list(HashMap map){
		return PilotManager.selectPil_list(map);
	}
	*/
}
