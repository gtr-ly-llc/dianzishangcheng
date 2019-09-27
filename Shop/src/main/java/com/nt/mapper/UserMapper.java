package com.nt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.nt.pojo.Goods;

import com.nt.pojo.Notice;

import com.nt.pojo.Order;
import com.nt.pojo.ShopCart;

import com.nt.pojo.User;

public interface UserMapper {
	
	public User existUser(User user);
	
	public int register(User user);
	
	public User login(String useremail);
	
	public User getUser(String useremail);
	
	public List<Goods> salesRanking();
	
	public List<Goods> popularRanking();
	
	public List<Goods> newProduct();

	public List<Notice> selectNotice();//查询公告

	public List<Goods> selectType();
	
	public List<Goods> showGoodsList(int typeid);
	
	public Goods goodsDetail(int goodsid);
	
	public ShopCart existShopCart(ShopCart addshopcart);
	
	public int addToCart(ShopCart addshopcart);
	
	public List<ShopCart> selectCartList(int userid);
	
	public List<ShopCart> goPlaceOrder(@Param(value="shopcartidList")List<Integer> shopcartidList);
	
	public int saveBuyNumber(ShopCart updatebuynumber);
	
	public int deleteFromCart(int userid,int goodsid);
	
	public int maxOrderId();
	
	public int placeOrder(Order order);
	
	//public int addOrderDetails(Order order);
	
	public int addOrderDetails(@Param(value="orderid")int orderid,@Param(value="orderGoodsList")List<Order> orderGoodsList);

}














