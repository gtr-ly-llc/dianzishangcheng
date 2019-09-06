package com.nt.pojo;

import java.util.Date;

public class Follow {
	private int followid;
	private int userid;
	private int goodsid;
	private Date followtime;
	public int getFollowid() {
		return followid;
	}
	public void setFollowid(int followid) {
		this.followid = followid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public Date getFollowtime() {
		return followtime;
	}
	public void setFollowtime(Date followtime) {
		this.followtime = followtime;
	}
	
}
