package com.bit.dife03.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.dife03.db.OrdersManager;
import com.bit.dife03.vo.BasketVo;
import com.bit.dife03.vo.JumunVo;
import com.bit.dife03.vo.OrdersDetailPageVo;


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
}
