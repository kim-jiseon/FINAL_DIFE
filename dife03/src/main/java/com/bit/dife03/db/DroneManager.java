package com.bit.dife03.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.dife03.vo.DroneVo;

public class DroneManager {

	public static SqlSessionFactory factory;
	public static SqlSession session;
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
	
	/* 드론 페이지 초기화면 및 검색 카테고리 불러오기 */
	public static List<DroneVo> sel_droAll(HashMap map) {
		List<DroneVo> list = null;
		String id = "drone.sel_droAll";
//		SqlSession session = factory.openSession();		
//		list =  session.selectList("drone.sel_droAll");
		session = factory.openSession();		
		list =  session.selectList(id, map);
		//System.out.println(list);
		sqlTest(map, id);
		session.close();
		return list;
	}
	
	/* 드론수 카운트 */
	public static int get_droCount(HashMap map) {
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.selectOne("drone.get_droCount");
		//System.out.println(re);
		session.close();
		return re;
	}

	/* 드론 상세정보
	public static Object sel_droCon(String dro_no) {
		// TODO Auto-generated method stub
		List<DroneVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("drone.sel_droDetail", dro_no);
		session.close();
		return list;
	} */

	/* 드론 페이지에서 상세 검색 결과 */
	public static DroneVo sel_droDetail(String dro_no) {
		// TODO Auto-generated method stub
		DroneVo droInfo = null;
		SqlSession session = factory.openSession();
		droInfo = session.selectOne("drone.sel_droDetail", dro_no);
		session.close();
		return droInfo;
	}

	/* 주문 */
	public static int in_droRental(String dro_no) {
		// TODO Auto-generated method stub
		int re = 0;
		SqlSession session = factory.openSession();
		re = session.insert("drone.in_droRental", dro_no);
		session.close();
		return re;
	}

	/* 장바구니 */
	public static int insertBasket(HashMap map) {
		int re = 0;
		SqlSession session = factory.openSession();
		String pos_no= null;
		pos_no = session.selectOne("drone.sel_pos_no",map);
		System.out.println(pos_no);
		map.put("pos_no", pos_no);
		String mem_no = session.selectOne("drone.sel_mem_no",map);
		map.put("mem_no",mem_no );
		System.out.println("mem_no:"+mem_no);
		re = session.insert("drone.in_droBasket", map);
		System.out.println("re:"+re);
		if(re==1)	
		{
		session.commit();
		}
		else {
			session.rollback();
		}
		session.close();
		return re;
	}

	public static int insertOrder(HashMap map) {
		// TODO Auto-generated method stub
		int re = 0;
		int r =0;
		SqlSession session = factory.openSession();
		String pos_no= null;
		pos_no = session.selectOne("drone.sel_pos_no",map);
		System.out.println(pos_no);
		map.put("pos_no", pos_no);
		String mem_no = session.selectOne("drone.sel_mem_no",map);
		map.put("mem_no",mem_no );
		System.out.println("mem_no:"+mem_no);
		r += session.insert("drone.insertOrders", map);
		String ord_no = session.selectOne("orders.MaxOrd");
		map.put("ord_no",ord_no);
		System.out.println(ord_no);
		r += session.insert("drone.insertOrdersDetail", map);
		System.out.println("r:"+r);
		if(r==2)	
		{
			re =1;
			session.commit();
		}
		else
		{
			session.rollback();
		}
		session.close();
		System.out.println(re);
		return re;
	}

	public static List<DroneVo> sel_droAllList(HashMap map) {
		// TODO Auto-generated method stub
		List<DroneVo> list = null;
		SqlSession session = factory.openSession();		
		list =  session.selectList("drone.sel_droAll");
		System.out.println(list);
		session.close();
		return list;
	}

/*	public static int in_droOrder(OrdersVo o) {
		int re = 0;
		SqlSession session = factory.openSession(true);
		
		return re;
	}*/
	
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
