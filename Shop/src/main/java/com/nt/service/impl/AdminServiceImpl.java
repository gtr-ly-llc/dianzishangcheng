package com.nt.service.impl;

import java.util.Calendar;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.nt.mapper.AdminMapper;
import com.nt.pojo.Notice;
import com.nt.pojo.Goods;
import com.nt.pojo.Order;
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

    //公告管理
    @Override
	public int addNotice(Notice notice) {
    	int ok=0;
    	ok=adminMapper.addNotice(notice);
    	return ok;
	}
  
	@Override
	public int deleteNotice(int noticeid) {
		int ok=adminMapper.deleteNotice(noticeid);
    	return ok;
	}
	 
	@Override
	public List<Notice> goDeleteNotice() {
		List<Notice> noticeList=adminMapper.goDeleteNotice();
    	return noticeList;
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
    public int deleteGoods(int goodsid) {
    	int ok=adminMapper.deleteGoods(goodsid);
    	return ok;
    }
    @Override
    public Goods productDetails(int goodsid) {
    	return adminMapper.productDetails(goodsid);
    }
    @Override
    public int updateGoods(Goods goods) {
    	return adminMapper.updateGoods(goods);
    }
    @Override
    public Goods goodsDetail(int goodsid) {
    	return adminMapper.goodsDetail(goodsid);
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



    @Override
    public List<Order> goOrderManager(){
    	return adminMapper.goOrderManager();
    }
    @Override
    public int deleteOrder(int orderid) {
    	return adminMapper.deleteOrder(orderid);
    }

}
