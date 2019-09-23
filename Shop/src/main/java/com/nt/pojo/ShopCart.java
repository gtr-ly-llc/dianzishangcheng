package com.nt.pojo;

public class ShopCart {
	private int shopcartid;
	private int userid;
	private Goods goods;
	private int buynumber;
	public int getShopcartid() {
		return shopcartid;
	}
	public void setShopcartid(int shopcartid) {
		this.shopcartid = shopcartid;
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
	@Override
	public String toString() {
		return "ShopCart [shopcartid=" + shopcartid + ", userid=" + userid + ", goods=" + goods + ", buynumber="
				+ buynumber + "]";
	}
	
}
