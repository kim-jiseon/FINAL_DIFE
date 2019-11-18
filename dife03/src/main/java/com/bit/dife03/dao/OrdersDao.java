package com.bit.dife03.dao;


import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.dife03.db.OrdersManager;
import com.bit.dife03.vo.BasketVo;
import com.bit.dife03.vo.JumunVo;
import com.bit.dife03.vo.OrdersDetailPageVo;
import com.bit.dife03.vo.OrdersVo;


@Repository
public class OrdersDao {

	public List<BasketVo> basketList(String mem_id)
	{
		return OrdersManager.basketList(mem_id);
	}
	public int  delBas(String bas_no)
	{
		return OrdersManager.delBas(bas_no);
	}
	public int insertJumun(JumunVo jumun) {
		// TODO Auto-generated method stub
		return OrdersManager.insertJumun(jumun);
	}
	public String getMaxOrd()
	{
		return OrdersManager.maxOrd();
	}
	public List<OrdersDetailPageVo> ordersList(String mem_id) {
		// TODO Auto-generated method stub
		return OrdersManager.ordersList(mem_id);
	}
	public Object ordList(String mem_id) {
		// TODO Auto-generated method stub
		return null;
	}
	public List<OrdersDetailPageVo> ordersDetail(HashMap map) {
		// TODO Auto-generated method stub
		return OrdersManager.ordersDetail(map);
	}
	public List<OrdersVo> mem_order(HashMap map) {
		// TODO Auto-generated method stub
		return OrdersManager.mem_order(map);
	}
	public int mem_ord_max(String mem_id) {
		// TODO Auto-generated method stub
		return OrdersManager.mem_ord_max(mem_id);
	}
	public String mem_order_no(HashMap map) {
		// TODO Auto-generated method stub
		return OrdersManager.mem_order_no(map);
	}
	public List<OrdersVo> mem_ord_list(HashMap map) {
		// TODO Auto-generated method stub
		return OrdersManager.mem_ord_list(map);
	}
	public int allDelBas(String mem_id) {
		// TODO Auto-generated method stub
		return OrdersManager.allDelBas(mem_id);
	}
	public int delJumun(HashMap map, int list_count) {
		// TODO Auto-generated method stub
		return OrdersManager.delJumun(map,list_count);
	}
}
