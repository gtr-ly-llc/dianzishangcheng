package com.nt.pojo;

public class Goods {
	private int goodsid;
	private String goodsname;
	private int typeid;
	private String typename;
	private double goodsoriginal;	//原价
	private double goodscurrent;	//现价
	private int goodsstock;			//库存
	private String goodspicture;	//图片
	public int getGoodsid() {
		return goodsid;
	}
	@Override
	public String toString() {
		return "Goods [goodsid=" + goodsid + ", goodsname=" + goodsname + ", typeid=" + typeid + ", typename="
				+ typename + ", goodsoriginal=" + goodsoriginal + ", goodscurrent=" + goodscurrent + ", goodsstock="
				+ goodsstock + ", goodspicture=" + goodspicture + "]";
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public int getTypeid() {
		return typeid;
	}
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public double getGoodsoriginal() {
		return goodsoriginal;
	}
	public void setGoodsoriginal(double goodsoriginal) {
		this.goodsoriginal = goodsoriginal;
	}
	public double getGoodscurrent() {
		return goodscurrent;
	}
	public void setGoodscurrent(double goodscurrent) {
		this.goodscurrent = goodscurrent;
	}
	public int getGoodsstock() {
		return goodsstock;
	}
	public void setGoodsstock(int goodsstock) {
		this.goodsstock = goodsstock;
	}
	public String getGoodspicture() {
		return goodspicture;
	}
	public void setGoodspicture(String goodspicture) {
		this.goodspicture = goodspicture;
	}
	
}
