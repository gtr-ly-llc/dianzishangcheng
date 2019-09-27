package com.nt.mapper;

import java.util.List;

import com.nt.pojo.Role;

public interface RoleMapper {
	public List<Role> listRolesByUserName(String userName);
	
}
