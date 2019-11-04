package com.bit.dife03.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.dife03.db.OrdersManager;
import com.bit.dife03.vo.BasketVo;
import com.bit.dife03.vo.OrdersDetailVo;

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
	public int insertJumun(String mem_no, int ord_price, int ord_amount, ArrayList<OrdersDetailVo> list) {
		// TODO Auto-generated method stub
		return OrdersManager.insertJumun(mem_no,ord_price,ord_amount,list);
	}
	public String getMaxOrd()
	{
		return OrdersManager.maxOrd();
	}
}
