package com.nt.pojo;

import java.util.Date;

public class Notice {
	private int noticeid;
	private String noticetitle;
	private String noticecontent;
	private Date noticetime;
	public int getNoticeid() {
		return noticeid;
	}
	public void setNoticeid(int noticeid) {
		this.noticeid = noticeid;
	}
	public String getNoticetitle() {
		return noticetitle;
	}
	public void setNoticetitle(String noticetitle) {
		this.noticetitle = noticetitle;
	}
	public String getNoticecontent() {
		return noticecontent;
	}
	public void setNoticecontent(String noticecontent) {
		this.noticecontent = noticecontent;
	}
	public Date getNoticetime() {
		return noticetime;
	}
	public void setNoticetime(Date noticetime) {
		this.noticetime = noticetime;
	}
	@Override
	public String toString() {
		return "Notice [noticeid=" + noticeid + ", noticetitle=" + noticetitle + ", noticecontent=" + noticecontent
				+ ", noticetime=" + noticetime + "]";
	}
	
}
