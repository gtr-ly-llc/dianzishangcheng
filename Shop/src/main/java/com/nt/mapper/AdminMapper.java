package com.nt.mapper;

import java.util.List;

import com.nt.pojo.Goods;

public interface AdminMapper {
	public int login(String adminname,String adminpwd);
	public List<Goods> selectGoods();
	public List<Goods> existGoods(Goods goods);
	public int addGoods(Goods goods);
	//public Goods selectGoodsId(Goods goods);
	public List<Goods> selectType();
	public Goods existType(String typename);
	public int addType(String typename);
	public int deleteType(Goods typeid);
}
