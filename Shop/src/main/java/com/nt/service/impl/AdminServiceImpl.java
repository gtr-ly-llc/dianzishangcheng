package com.nt.service.impl;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.mapper.AdminMapper;
import com.nt.pojo.Goods;
import com.nt.pojo.User;
import com.nt.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
    AdminMapper adminMapper;
    @Override
    public int login(String adminname,String adminpwd) {
    	int u = adminMapper.login(adminname,adminpwd);
        return u;
     }
    @Override
    public List<Goods> selectGoods(){
    	List<Goods> goodsList=adminMapper.selectGoods();
    	return goodsList;
    }
    @Override
    public int addGoods(Goods goods) {
    	int ok=0;
    	List<Goods> g=adminMapper.existGoods(goods);
    	if(g.size()>0) {
    		return ok;
    	}
    	Calendar cal = Calendar.getInstance();
    	int year = cal.get(Calendar.YEAR);//获取年
    	int month = cal.get(Calendar.MONTH )+1;//获取月
    	String mon=""+month;
    	if(month<10) {
    		mon="0"+month;
    	}
    	String id=""+(year-2000)+""+mon;
    	goods.setGoodsid(Integer.parseInt(id));
    	List<Goods> goodsid=adminMapper.existGoods(goods);
    	if(goodsid.size()==0) {
    		goods.setGoodsid(Integer.parseInt(id+"01"));
    	}else {
    		goods.setGoodsid(0);
    	}
    	ok=adminMapper.addGoods(goods);
    	return ok;
    }
    @Override
    public List<Goods> selectType(){
    	List<Goods> typeList=adminMapper.selectType();
    	return typeList;
    }
    @Override
    public int addType(String typename) {
    	int ok=0;
    	Goods g=adminMapper.existType(typename);
    	if(g!=null) {
    		return ok;
    	}
    	ok=adminMapper.addType(typename);
    	return ok;
    }
    @Override
    public int deleteType(Goods typeid) {
    	int ok=adminMapper.deleteType(typeid);
    	return ok;
    }
}
