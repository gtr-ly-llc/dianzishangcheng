package com.nt.mapper;

import java.util.List;

import com.nt.pojo.Permission;

public interface PermissionMapper {
	public List<Permission> listPermissionsByUserName(String userName);
	
}
