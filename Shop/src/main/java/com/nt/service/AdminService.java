package com.nt.service;

import org.springframework.ui.Model;
import com.nt.pojo.Notice;
import java.util.List;
import com.nt.pojo.Goods;
import com.nt.pojo.Order;


public interface AdminService {
	public int login(String adminname,String adminpwd);
	
	public List<Goods> selectGoods();
	
	public int addGoods(Goods goods);
	
	public int deleteGoods(int goodsid);
	
	public Goods productDetails(int goodsid);
	
	public int updateGoods(Goods goods);
	
	public List<Goods> selectType();
	
	public int addType(String typename);
	
	public int deleteType(Goods typeid);

	//公告管理 
	public int addNotice(Notice notice);//添加公告
	public int deleteNotice(int noticeid);//删除公告
	public List<Notice> goDeleteNotice();
	
	

	
	public List<Order> goOrderManager();
	
	public int deleteOrder(int orderid);

}
