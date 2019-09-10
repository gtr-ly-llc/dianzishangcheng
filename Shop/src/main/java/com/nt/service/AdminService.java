package com.nt.service;

import org.springframework.ui.Model;

import com.nt.pojo.Notice;

public interface AdminService {
	public int login(String adminname,String adminpwd);
	//公告管理 
	public String addNotice(Notice notice);
	public String deleteNoticeSelect(Model model);
	public String selectANotice(Model model,int id);
	public String deleteNotice(int id);
}
