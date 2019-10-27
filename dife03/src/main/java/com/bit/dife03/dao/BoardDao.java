package com.bit.dife03.dao;

import java.util.List;

import org.springframework.stereotype.Repository;


import com.bit.dife03.db.BoardManager;
import com.bit.dife03.vo.BoardVo;

@Repository
public class BoardDao {

	
	public List<BoardVo> listAll() {
		// TODO Auto-generated method stub
		return BoardManager.listBoard();
	}

}
