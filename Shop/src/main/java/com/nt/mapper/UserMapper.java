package com.nt.mapper;

import java.util.List;

import com.nt.pojo.User;

public interface UserMapper {
	public User existUser(User user);
	public int register(User user);
	public User login(User user);
}
