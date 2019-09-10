package com.nt.service;

import java.util.List;

import com.nt.pojo.Goods;

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
}
