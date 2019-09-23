package com.nt.service;

import java.util.HashMap;
import java.util.List;

import com.nt.pojo.Goods;

import com.nt.pojo.Notice;

import com.nt.pojo.Order;
import com.nt.pojo.ShopCart;

import com.nt.pojo.User;

public interface UserService {
	
	public User login(User user);
	
	public int register(User user);
	
	public List<Goods> salesRanking();
	
	public List<Goods> popularRanking();
	
	public List<Goods> newProduct();


	public List<Notice> selectNotice();//查询公告

	
	public Goods goodsDetail(int goodsid);
	
	public int addToCart(ShopCart addshopcart);
	
	public List<ShopCart> selectCartList(int userid);
	
	public int saveBuyNumber(ShopCart updatebuynumber);
	
	public int deleteFromCart(int userid,int goodsid);
	
	public List<ShopCart> goPlaceOrder(List<Integer> shopcartidList);
	
	public int placeOrder(int userid,List<Order> orderGoodsList,double ordermoney);

}
