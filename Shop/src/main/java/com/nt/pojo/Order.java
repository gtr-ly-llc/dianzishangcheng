package com.nt.pojo;

import java.util.Date;

public class Order {
	private int orderid;
	private int userid;
	private User user;
	private Goods goods;
	private int buynumber;
	private double ordermoney;
	private int orderstatus;	//状态
	private Date ordertime;
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public int getBuynumber() {
		return buynumber;
	}
	public void setBuynumber(int buynumber) {
		this.buynumber = buynumber;
	}
	public double getOrdermoney() {
		return ordermoney;
	}
	public void setOrdermoney(double ordermoney) {
		this.ordermoney = ordermoney;
	}
	public int getOrderstatus() {
		return orderstatus;
	}
	public void setOrderstatus(int orderstatus) {
		this.orderstatus = orderstatus;
	}
	public Date getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Order [orderid=" + orderid + ", userid=" + userid + ", user=" + user + ", goods=" + goods
				+ ", buynumber=" + buynumber + ", ordermoney=" + ordermoney + ", orderstatus=" + orderstatus
				+ ", ordertime=" + ordertime + "]";
	}
}
