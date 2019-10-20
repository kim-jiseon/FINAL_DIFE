package com.bit.dife03.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Handler;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.logging.Log;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.dife03.vo.PilInfoVo;

public class PilotManager {
	public static SqlSessionFactory factory;
	public static SqlSession session;
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
		
		String id = "pilInfo.sel_pil";
		
		sqlTest(map, id);
		//SqlSession session = factory.openSession();
		list = session.selectList(id, map);
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
	
	//쿼리문 콘솔 출력 메소드
	public static void sqlTest(Map map, String id) {
		session = factory.openSession();
		BoundSql sql = session.getConfiguration().getMappedStatement(id).getBoundSql(map);
		String sql2 = sql.getSql();
		List<ParameterMapping> paramMapping = sql.getParameterMappings();
		String value = "";
			for (ParameterMapping mapping : paramMapping) {
				String propValue = mapping.getProperty();
				value = map.get(propValue).toString();
				System.out.println("value값:"+value);
				sql2 = sql2.replaceFirst("\\?", "'"+value+"'");
				
			}
		System.out.println("sql:"+sql2);
	}
}
