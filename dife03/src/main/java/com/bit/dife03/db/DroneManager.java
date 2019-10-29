package com.bit.dife03.db;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.dife03.vo.DroneVo;

public class DroneManager {

	public static SqlSessionFactory factory;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/bit/dife03/db/dbConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
			
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
	}
	
	// 드론 페이지 초기화면
	public static List<DroneVo> selectAll_dro() {
		List<DroneVo> list = null;
		SqlSession session = factory.openSession();		
		list =  session.selectList("drone.selectAll_dro");
		session.close();
		return list;
	}
	
	// 드론 페이지에서 상세 검색 결과
	public static List<DroneVo> sel_droDetail(String pos_no) {
		List<DroneVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("drone.sel_droDetail", pos_no);
		return list;
	}
	
	// 드론 개수 카운트
	public static int getDroneCount() {
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.selectOne("drone.getDroneCount");
		session.close();
		return re;
	}
	
	
	
	// 보류
	// 바로 주문하기는 따로 페이지 만들어서 제이쿼리로 실행해야됨
	// 드론 상세페이지에서 주문하기
/*	public static int in_droOrder(OrdersVo o) {
		int re = 0;
		SqlSession session = factory.openSession(true);
		
		return re;
	}*/
}
