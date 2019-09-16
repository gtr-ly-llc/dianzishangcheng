package com.nt.service.impl;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.mapper.UserMapper;
import com.nt.pojo.Goods;
import com.nt.pojo.Order;
import com.nt.pojo.ShopCart;
import com.nt.pojo.User;
import com.nt.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
    UserMapper userMapper;
    @Override
    public User login(User user) {
    	User u = userMapper.login(user);
        return u;
     }
    @Override
    public int register(User user) {
    	int i=0;
    	User us=userMapper.existUser(user);
    	if(us!=null) {
    		return i;
    	}
    	i=userMapper.register(user);
    	return i;
    }
    @Override
    public List<Goods> salesRanking(){
    	return userMapper.salesRanking();
    }
    @Override
    public List<Goods> popularRanking(){
    	return userMapper.popularRanking();
    }
    @Override
    public List<Goods> newProduct(){
    	return userMapper.newProduct();
    }
    @Override
    public Goods goodsDetail(int goodsid) {
    	return userMapper.goodsDetail(goodsid);
    }
    @Override
    public int addToCart(ShopCart addshopcart) {
    	int i=0;
    	ShopCart sc=userMapper.existShopCart(addshopcart);
    	if(sc!=null) {
    		return i;
    	}
    	return userMapper.addToCart(addshopcart);
    }
    @Override
	public List<ShopCart> selectCartList(int userid){
    	return userMapper.selectCartList(userid);
	}
    @Override
    public List<ShopCart> goPlaceOrder(List<Integer> shopcartidList){
    	return userMapper.goPlaceOrder(shopcartidList);
    }
    @Override
    public int saveBuyNumber(ShopCart updatebuynumber) {
    	return userMapper.saveBuyNumber(updatebuynumber);
    }
    @Override
    public int deleteFromCart(int userid,int goodsid) {
    	return userMapper.deleteFromCart(userid,goodsid);
    }
    @Override
    public int placeOrder(int userid,List<Order> orderGoodsList,double ordermoney) {
    	int ok=0;
    	Calendar cal = Calendar.getInstance();
    	int year = cal.get(Calendar.YEAR);//获取年
    	int month = cal.get(Calendar.MONTH )+1;//获取月
    	String mon=""+month;
    	if(month<10) {
    		mon="0"+month;
    	}
    	String id=""+(year-2000)+""+mon;
    	//goods.setGoodsid(Integer.parseInt(id));
    	int orderid=userMapper.maxOrderId();
    	Order order=new Order();
    	order.setUserid(userid);
    	order.setOrdertime(new Date());
    	order.setOrdermoney(ordermoney);
    	if(orderid>=Integer.parseInt(id+"01")) {
    		orderid += 1;
    	}else {
    		orderid=Integer.parseInt(id+"01");
    	}
    	order.setOrderid(orderid);
    	if(orderGoodsList!=null) {
    		ok+=userMapper.placeOrder(order);
    		ok+=userMapper.addOrderDetails(orderid,orderGoodsList);
    	}
    	else {
    		System.out.println("我擦，这里有错");
    	}
//    	ok+=userMapper.placeOrder(userid,goodsidList);
    	//ok+=userMapper.addOrderDetails(userid,goodsidList);
    	return ok;
    }
}


















