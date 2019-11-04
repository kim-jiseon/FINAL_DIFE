package com.bit.dife03.db;

import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.dife03.vo.BasketVo;
import com.bit.dife03.vo.OrdersDetailVo;
import com.bit.dife03.vo.OrdersVo;

public class OrdersManager {

	public static SqlSessionFactory factory;
	static {
		try {
			System.out.println("static 진입");
			Reader reader = Resources.getResourceAsReader("com/bit/dife03/db/dbConfig.xml");
			/* System.out.println("리더생성"+reader); */
			factory = new SqlSessionFactoryBuilder().build(reader);
			/* System.out.println("factory:"+factory); */
			reader.close();
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
	}
	//orders max값
	public static String maxOrd()
	{
		String str=null;
		SqlSession session = factory.openSession();
		str = session.selectOne("orders.MaxOrd");
		session.close();
		return str;
	}
	//	장바구니 리스트
	public static List<BasketVo> basketList(String mem_id)
	{
		List<BasketVo> list=null;
		SqlSession session = factory.openSession();
		list = session.selectList("orders.selectBasket",mem_id);
		session.close();
		return list;
	}
	//주문 삭제 버튼 삭제시 tr값을 삭제하는 메소드
	public static int delBas(String bas_no)
	{
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.insert("orders.delBas",bas_no);
		session.commit();
		session.close();
		return re;
	}

	public static int insertJumun(String mem_no, int ord_price, int ord_amount, ArrayList<OrdersDetailVo> list) {
		int re = 0;
		int r =0;
		System.out.println("insert"+mem_no);
		System.out.println("insert"+ord_price);
		System.out.println("insert"+ord_amount);
		SqlSession session = factory.openSession();
        OrdersVo ordersVo = new OrdersVo();
        ordersVo.setOrd_price(ord_price);
        ordersVo.setMem_no(mem_no);
        ordersVo.setOrd_amount(ord_amount);
        re += session.insert("orders.insertOrders", ordersVo);
        String ord_no = session.selectOne("orders.MaxOrd");
       
        for(OrdersDetailVo vo:list)
        {
            vo.setOrd_no(ord_no);
            re +=session.insert("orders.insertOrdersDetail", vo);
        }
         
        if(re == list.size()+1)
        {
            session.commit();
            r= 1;
        }
        else
        {
            session.rollback();
        }
        session.close();
         
        return r;
	}
}
