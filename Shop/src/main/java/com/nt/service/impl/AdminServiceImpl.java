package com.nt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.mapper.AdminMapper;
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
}
