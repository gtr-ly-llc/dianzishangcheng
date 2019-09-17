package com.nt.service;

import java.util.List;

import com.nt.pojo.Goods;
import com.nt.pojo.Notice;
import com.nt.pojo.User;

public interface UserService {
	
	public User login(User user);
	
	public int register(User user);
	
	public List<Goods> salesRanking();
	
	public List<Goods> popularRanking();
	
	public List<Goods> newProduct();

	public List<Notice> selectNotice();
}
