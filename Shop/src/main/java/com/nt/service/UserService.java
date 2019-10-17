package com.nt.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.nt.pojo.Goods;

import com.nt.pojo.Notice;

import com.nt.pojo.Order;
import com.nt.pojo.ShopCart;

import com.nt.pojo.User;

public interface UserService {
	
	public User login(String user);
	
	public User getUser(String username);
	
	public int getUserID();
	
	public User getUserFromID(int userid);
	
	public int register(HttpServletRequest request,User user);
	
	public List<Goods> salesRanking();
	
	public List<Goods> popularRanking();
	
	public List<Goods> newProduct();


	public List<Notice> selectNotice();//查询公告
	
	public List<Goods> selectType();
	
	public List<Goods> showGoodsList(int typeid);

	
	public Goods goodsDetail(int goodsid);
	
	public int addToCart(ShopCart addshopcart);
	
	public List<ShopCart> selectCartList(int userid);
	
	public int saveBuyNumber(ShopCart updatebuynumber);
	
	public int deleteFromCart(int userid,int goodsid);
	
	public List<ShopCart> goPlaceOrder(List<Integer> shopcartidList);
	
	public int placeOrder(int userid,List<Order> orderGoodsList,double ordermoney);

}
