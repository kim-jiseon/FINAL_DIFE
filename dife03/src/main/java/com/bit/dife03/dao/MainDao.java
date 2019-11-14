package com.bit.dife03.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.dife03.db.MainManager;
import com.bit.dife03.vo.BoardVo;
import com.bit.dife03.vo.MainVo;

@Repository
public class MainDao {
	public HashMap<String, Integer> sel_cnt(){
		return MainManager.sel_cnt();
	}
	
	public List<MainVo> sel_board(){
		return MainManager.sel_board();
	}
}
