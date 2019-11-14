package com.bit.dife03.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.dife03.vo.MainVo;

public class MainManager {
	public static SqlSessionFactory factory;
	
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/bit/dife03/db/dbConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
	}
	
	public static HashMap<String, Integer> sel_cnt() {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		SqlSession session = factory.openSession();
		map.put("pil_cnt", session.selectOne("main.sel_pil_cnt"));
		map.put("dro_cnt", session.selectOne("main.sel_dro_cnt"));
		map.put("mem_cnt", session.selectOne("main.sel_mem_cnt"));
		session.close();
		return map;
	}
	
	public static List<MainVo> sel_board(){
		List<MainVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("main.sel_board");
		session.close();
		return list;
	}
}
