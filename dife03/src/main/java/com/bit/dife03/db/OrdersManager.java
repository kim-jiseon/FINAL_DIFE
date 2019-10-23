package com.bit.dife03.db;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.dife03.vo.BasketVo;

public class OrdersManager {
	

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
	
//	장바구니 리스트
	public static List<BasketVo> basketList(String mem_id)
	{
		List<BasketVo> list=null;
		
		SqlSession session = factory.openSession();
		list = session.selectList("orders.selectBasket",mem_id);
		session.close();
		System.out.println("리턴됨");
		return list;
	}
}
