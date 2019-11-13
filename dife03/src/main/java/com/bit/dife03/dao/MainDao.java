package com.bit.dife03.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.dife03.db.MainManager;
import com.bit.dife03.vo.BoardVo;

@Repository
public class MainDao {
	public List<BoardVo> sel_board(){
		return MainManager.sel_board();
	}
}
