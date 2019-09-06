package com.nt.pojo;

import java.util.Date;

public class Order {
	private int orderid;
	private int userid;
	private int goodsid;
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
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
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
}
