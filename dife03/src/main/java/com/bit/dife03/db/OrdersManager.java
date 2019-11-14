package com.bit.dife03.db;

import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.dife03.vo.BasketVo;
import com.bit.dife03.vo.JumunVo;
import com.bit.dife03.vo.OrdersDetailPageVo;
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
	//insertJumun
	public static int insertJumun(JumunVo jumun) {
		int re = 0;
		int r =0;
		SqlSession session = factory.openSession();
        OrdersVo ordersVo = new OrdersVo();
        ordersVo.setOrd_price(jumun.getOrd_price());
        ordersVo.setMem_no(jumun.getMem_no());
        ordersVo.setOrd_amount(jumun.getOrd_amount());
        re += session.insert("orders.insertOrders", ordersVo);
        String ord_no = session.selectOne("orders.MaxOrd");
        System.out.println(ord_no);
       ArrayList<OrdersDetailVo> list = (ArrayList<OrdersDetailVo>) jumun.getJumun();
        for(OrdersDetailVo vo:list)
        {
            vo.setOrd_no(ord_no);
            vo.setDet_price(vo.getDet_price());
            vo.setDet_amount(vo.getDet_amount());
            vo.setDet_rental(vo.getDet_rental());
            vo.setDet_return(vo.getDet_return());
            vo.setPos_no(vo.getPos_no());
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
	//상품 정보에 대한 리스트인데 가져오는 데이터 컬럼 수가 다름.
	public static List<OrdersDetailPageVo> ordersList(String mem_id) {
		// TODO Auto-generated method stub
		List<OrdersDetailPageVo> list = null;
		SqlSession session = factory.openSession();
		HashMap map = new HashMap();
		String ord_no = session.selectOne("orders.MaxOrd");
		map.put("mem_id", mem_id);
		map.put("ord_no",ord_no);
		list = session.selectList("orders.detailList", map);
		session.close();
		System.out.println("LIST:select 종료");
		return list;
	}
	//개인의 상품한 상품에 대한 리스트
	public static List<OrdersDetailPageVo> ordersDetail(HashMap map) {
		// TODO Auto-generated method stub
		System.out.println("ordersdetail:진입");
		List<OrdersDetailPageVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("orders.ordersHistory", map);
		session.close();
		return list;
	}
	//주문자의 특정 주문정보
	public static List<OrdersVo> mem_order(HashMap map) {
		// TODO Auto-generated method stub
		List<OrdersVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("orders.mem_orders",map);
		session.close();
		return list;
	}
	//특정 주문의 주문 번호
	public static String mem_order_no(HashMap map) {
		// TODO Auto-generated method stub
		String r= null;
		 SqlSession session = factory.openSession();
		 r = session.selectOne("orders.mem_ordes_no",map);
		 session.close();
		return r;
	}
	//주문번호 max count
	public static int mem_ord_max(String mem_id) {
		int r= 0;
		 SqlSession session = factory.openSession();
		 r = session.selectOne("orders.mem_ord_count",mem_id);
		 session.close();
		return r;
	}
	//특정 맴버의 모든 주문리스트
	public static List<OrdersVo> mem_ord_list(HashMap map) {
		List<OrdersVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("orders.mem_order_list",map);
		session.close();
		return list;
	}
	//모든 정보 삭제.
	public static String allDelBas(String mem_id) {
		int re=0;
		int r= 0;
		String str="";
		SqlSession session = factory.openSession();
		re += session.delete("orders.allDelBas",mem_id);
		re += session.update("orders.",mem_id);
		if(re ==2)
		{
			r=1;
			session.commit();
			
		}
		else
		{
			session.rollback();
		}
		return str+r;
	}
	
	
}
