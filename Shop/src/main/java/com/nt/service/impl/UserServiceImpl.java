package com.nt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.mapper.UserMapper;
import com.nt.pojo.User;
import com.nt.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
    UserMapper userMapper;
    @Override
    public User login(User user) {
    	User u = userMapper.login(user);
    	System.out.println(u);
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
    
}
