package com.nt.mapper;

import java.util.List;

import com.nt.pojo.Notice;

public interface AdminMapper {
	public int login(String adminname,String adminpwd);
	
    public int addNotice(Notice notice);
    public List<Notice> deleteNoticeSelect();
    public int deleteNotice(int id);
    public Notice selectANotice(int id);

	
}
