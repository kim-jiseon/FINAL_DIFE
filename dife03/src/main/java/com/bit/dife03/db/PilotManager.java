package com.bit.dife03.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.logging.Log;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.dife03.vo.PilInfoVo;

public class PilotManager {
	public static SqlSessionFactory factory;
	
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/bit/dife03/db/dbConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
	}
	
	public static List<PilInfoVo> sel_pil(String category, String location){
		HashMap map = new HashMap();
		map.put("category", category);
		map.put("location", location);
		System.out.println(category+", "+location);
		List<PilInfoVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("pilInfo.sel_pil", map);
		session.close();
		return list;
	}
	
	public static List<PilInfoVo> selectPil_info() {
		List<PilInfoVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("pilInfo.selectPil_info");
		session.close();
		return list;
	}
}
