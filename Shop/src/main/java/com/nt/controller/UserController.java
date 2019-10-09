package com.nt.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.nt.pojo.Goods;

import com.nt.pojo.Notice;

import com.nt.pojo.Order;
import com.nt.pojo.ShopCart;

import com.nt.pojo.User;
import com.nt.realm.MD5Hash;
import com.nt.service.UserService;
import com.nt.util.RanCode;
@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
    UserService userService;
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping("index")
    public ModelAndView index(HttpServletRequest request){
		List<Goods> goodssalesList=userService.salesRanking();
		List<Goods> goodspopularList=userService.popularRanking();
		List<Goods> goodsnewList=userService.newProduct();
		List<Notice> noticeList=userService.selectNotice();
		List<Goods> typeList=userService.selectType();
        ModelAndView mav = new ModelAndView("before/index");
        mav.addObject("goodssalesList",goodssalesList);
        mav.addObject("goodspopularList",goodspopularList);
        mav.addObject("goodsnewList",goodsnewList);
        mav.addObject("noticeList",noticeList);
        HttpSession session = request.getSession();
        session.setAttribute("typeList",typeList);
		return mav;
    }
	/**
	 * 登陆界面
	 * @return
	 */
	@RequestMapping("login")
    public ModelAndView login(){
        ModelAndView mav = new ModelAndView("before/login");
		return mav;
    }
	@RequestMapping("facelogin")
    public ModelAndView facelogin(){
        ModelAndView mav = new ModelAndView("before/facelogin");
		return mav;
    }
	@RequestMapping("facerigister")
    public ModelAndView facerigister(){
        ModelAndView mav = new ModelAndView("before/facerigister");
		return mav;
    }
    /**
	 * 获取生成验证码显示到 UI 界面
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping("checkCode")
	public void checkCode(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		//设置相应类型,告诉浏览器输出的内容为图片
        response.setContentType("image/jpeg");
        //设置响应头信息，告诉浏览器不要缓存此内容
        response.setHeader("pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expire", 0);
        RanCode randomValidateCode = new RanCode();
        try {
            randomValidateCode.getRandcode(request, response);//输出图片方法
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
	/**
	 * 用户登录
	 * @param user
	 * @param code
	 * @param request
	 * @return
	 */
//	@RequestMapping("userLogin")
//    public ModelAndView userLogin(User user,String code,HttpServletRequest request){
//		HttpSession session = request.getSession();
//		ModelAndView mav = new ModelAndView();
//		String verifyCode= (String) session.getAttribute("randomcode_key");
//        if(!code.equalsIgnoreCase(verifyCode)){
//        	mav.setViewName("before/login");
//        	mav.addObject("msg","验证码错误！");
//        	return mav;
//        }
//        if(MD5Hash.login(user)) 
//        	System.out.println("登录成功");
//        else
//        	System.out.println("登录失败");
////		User us=userService.login(user);
////		if(us!=null) {
////			int id=us.getUserid();
////			mav=index(request);
////			session.setAttribute("uid",id);
////			mav.addObject("msg","");
////		}else {
////			mav.setViewName("before/login");
////			if(user.getUseremail()!=""&&user.getUseremail()!=null) {
////				mav.addObject("msg","登录信息错误！");
////			}
////		}
//        mav=index(request);
//		return mav;
//    }
	/**
	 * 注册界面
	 * @return
	 */
	@RequestMapping("register")
    public ModelAndView register(){
        ModelAndView mav = new ModelAndView("before/register");
		return mav;
    }
	/**
	 * 用户注册
	 * @param user
	 * @param code
	 * @param request
	 * @return
	 */
	@RequestMapping("userRegister")
	public ModelAndView userRegister(User user,String code,HttpServletRequest request){
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView();
		String verifyCode= (String) session.getAttribute("randomcode_key");
        if(!code.equalsIgnoreCase(verifyCode)){
        	mav.setViewName("before/register");
        	mav.addObject("msg","验证码错误！");
        	return mav;
        }
        User afteruser=MD5Hash.encryption(user);
        int i=userService.register(afteruser);
		String msg="";
		if(i==0) {
			msg="用户名已存在！";
			mav.setViewName("before/register");
		}else {
			msg="注册成功！";
			mav.setViewName("before/login");
		}
		mav.addObject("msg",msg);
		return mav;
	}
	
	@RequestMapping("showGoodsList")
    public ModelAndView showGoodsList(Integer typeid){
		List<Goods> goodsList=userService.showGoodsList(typeid);
		List<Notice> noticeList=userService.selectNotice();
        ModelAndView mav = new ModelAndView("before/goods");
        mav.addObject("goodsList",goodsList);
        mav.addObject("noticeList",noticeList);
		return mav;
    }
	
	@RequestMapping("goodsDetail")
    public ModelAndView goodsDetail(Integer goodsid){
		Goods goods=userService.goodsDetail(goodsid);
        ModelAndView mav = new ModelAndView("before/goodsDetail");
        mav.addObject("goods",goods);
		return mav;
    }
	
	@RequestMapping("addToCart")
    public ModelAndView addToCart(ShopCart addshopcart,Integer goodsid){
		Goods goods=new Goods();
		goods.setGoodsid(goodsid);
		addshopcart.setGoods(goods);
		int ok=userService.addToCart(addshopcart);
		String msg="";
		if(ok==0) {
			msg="购物车已有该商品！";
		}else {
			msg="商品加入成功！";
		}
        ModelAndView mav = new ModelAndView();
        mav=goShopCart(addshopcart.getUserid());
        mav.addObject("msg",msg);
		return mav;
    }
	@RequestMapping("goShopCart")
    public ModelAndView goShopCart(Integer userid){
		List<ShopCart> cartList=userService.selectCartList(userid);
		for(ShopCart s: cartList) {
			System.out.println(s);
		}
        ModelAndView mav = new ModelAndView("before/cart");
        mav.addObject("cartList",cartList);
		return mav;
    }
	
	@RequestMapping("saveBuyNumber")
	@ResponseBody
    public void saveBuyNumber(Integer userid,Integer goodsid,Integer buynumber,HttpServletResponse response){
		ShopCart updatebuynumber=new ShopCart();
		updatebuynumber.setUserid(userid);
		updatebuynumber.setBuynumber(buynumber);
		Goods goods=new Goods();
		goods.setGoodsid(goodsid);
		updatebuynumber.setGoods(goods);
		int ok=userService.saveBuyNumber(updatebuynumber);
		try {
			response.getWriter().print(ok);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
	@RequestMapping("deleteFromCart")
    public ModelAndView deleteFromCart(Integer userid,Integer goodsid){
		int ok=userService.deleteFromCart(userid,goodsid);
        ModelAndView mav = new ModelAndView();
        mav=goShopCart(userid);
		return mav;
    }
	@RequestMapping("goPlaceOrder")
    public ModelAndView goPlaceOrder(Integer[] shopcartid){
		List<Integer> shopcartidList=new ArrayList<Integer>();
		for(int i = 0;i < shopcartid.length;i++) {
			shopcartidList.add(shopcartid[i]); 
		}
		List<ShopCart> cartList=userService.goPlaceOrder(shopcartidList);
        ModelAndView mav = new ModelAndView("before/orderconfirm");
        mav.addObject("cartList",cartList);
		return mav;
    }
	
	@RequestMapping("placeOrder")
    public ModelAndView placeOrder(Integer userid,Integer[] goodsid,Integer[] buynumber,double ordermoney){
		List<Order> orderGoodsList=new ArrayList<Order>();
		for(int i = 0;i < goodsid.length;i++) {
			Goods goods=new Goods();
			Order orderGoods=new Order();
			goods.setGoodsid(goodsid[i]);
			orderGoods.setGoods(goods);
			orderGoods.setBuynumber(buynumber[i]);
			orderGoodsList.add(orderGoods);
		}
		int ok=userService.placeOrder(userid,orderGoodsList,ordermoney);
        ModelAndView mav = new ModelAndView("before/orderdone");
		return mav;
    }
}
