package com.nt.service;

import java.util.List;

import com.nt.pojo.User;

public interface UserService {
	
	public User login(User user);
	
	public int register(User user);
	
}
