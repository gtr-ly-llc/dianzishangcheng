package com.nt.service.impl;

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
