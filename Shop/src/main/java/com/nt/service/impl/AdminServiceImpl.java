package com.nt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.nt.mapper.AdminMapper;
import com.nt.pojo.Notice;
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
	public String addNotice(Notice notice) {
    	adminMapper.addNotice(notice);
		return "forward:/deleteNoticeSelect";
	}
 
	@Override
	public String deleteNoticeSelect(Model model) {
		model.addAttribute("allNotice", adminMapper.deleteNoticeSelect());
		return "admin/deleteNoticeSelect";
	}
 
	@Override
	public String selectANotice(Model model, int id) {
		model.addAttribute("notice", adminMapper.selectANotice(id));
		return "admin/noticeDetail";
	}
 
	@Override
	public String deleteNotice(int id) {
		adminMapper.deleteNotice(id);
		return "forward:/admin/deleteNoticeSelect";
	}

    
    
}
