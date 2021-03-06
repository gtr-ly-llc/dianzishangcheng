package com.nt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.nt.pojo.Notice;
import com.nt.pojo.Goods;
import com.nt.pojo.Order;
import com.nt.service.AdminService;
import com.nt.pojo.UploadedImageFile;
import com.nt.util.UploadFile;
@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
    AdminService adminService;
	/**
	 * 登录页面
	 * @return
	 */
	@RequestMapping("login")
    public ModelAndView login(){
        ModelAndView mav = new ModelAndView("admin/login");
		return mav;
    }
	/**
	 * 管理员登录
	 * @param adminname
	 * @param adminpwd
	 * @param request
	 * @return
	 */
	@RequestMapping("adminLogin")
    public ModelAndView userLogin(String adminname,String adminpwd,HttpServletRequest request){
		HttpSession session = request.getSession();
		int i=-1;
		i=adminService.login(adminname,adminpwd);
		ModelAndView mav = new ModelAndView();
		if(i==1) {
			mav.setViewName("admin/main");
			session.setAttribute("loginstatus",i);
			mav.addObject("msg","");
		}else {
			mav.setViewName("admin/login");
			if(i==0) {
				mav.addObject("msg","登录失败！");
			}
		}
		return mav;
    }

	
	//公告管理
	/**
	 * 添加公告页面
	 * @return
	 */
	    @RequestMapping("/addNotice")
	    public ModelAndView addNotice(Notice notice,HttpServletRequest request) {
	    	int ok =adminService.addNotice(notice);
	    	ModelAndView mav = new ModelAndView();
	        if(ok==1) {
	        	mav.addObject("msg","添加公告成功！");
			}else {
				mav.addObject("msg","此公告已存在！");
			}
			return mav;
	    }
	    
	    @RequestMapping("goDeleteNotice")
	    public ModelAndView goDeleteNotice() {
	    	List<Notice> noticeList =adminService.goDeleteNotice();
	    	ModelAndView mav = new ModelAndView("admin/deleteNoticeSelect");
	    	mav.addObject("noticeList",noticeList);
			return mav;
	    }
		@RequestMapping("/deleteNotice")
		public ModelAndView  deleteNotice(Integer noticeid,HttpServletRequest request) {
			int ok=adminService.deleteNotice(noticeid);
	        ModelAndView mav = new ModelAndView();
	        mav=selectType("delete");
	        if(ok==1) {
				mav.addObject("msg","删除公告成功！");
			}else {
				mav.addObject("msg","公告不存在或删除异常！");
			}
			return mav;
		}
		
		 
	
	

	/**
	 * 添加商品页面
	 * @return
	 */
    @RequestMapping("goAddGoods")
    public ModelAndView goAddGoods(){
        ModelAndView mav = new ModelAndView();
        mav=selectType("select");
        mav.setViewName("admin/addGoods");
		return mav;
    }
    /**
     * 查询商品列表
     * @param operation
     * @param request
     * @return
     */
    @RequestMapping("selectGoods")
    public ModelAndView selectGoods(String operation){
		List<Goods> goodsList=adminService.selectGoods();
		ModelAndView mav = new ModelAndView();
        if("select".equals(operation)) {
        	mav.setViewName("admin/selectGoods");
        }
        if("delete".equals(operation)) {
        	mav.setViewName("admin/deleteSelectGoods");
        }
        if("update".equals(operation)) {
        	mav.setViewName("admin/updateSelectGoods");
        }
        mav.addObject("goodsList",goodsList);
		return mav;
    }
    /**
     * 添加商品
     * @param goods
     * @param request
     * @return
     */
    @RequestMapping("addGoods")
    public ModelAndView addGoods(Goods goods,UploadedImageFile file){
    	ModelAndView mav = new ModelAndView();
    	String newFileName = UploadFile.uploadFile(file); // 上传图片，获取图片的新名称
		if(newFileName.isEmpty()) { // 图片写入磁盘失败
			mav.setViewName("redirect:jumpAddGood");
			mav.addObject("mess", "图片上传失败，请重试");
			return mav;
		}
		goods.setGoodspicture(newFileName);
		int ok=adminService.addGoods(goods);
        mav=goAddGoods();
        if(ok==1) {
        	mav.addObject("msg","添加商品成功！");
		}else {
			mav.addObject("msg","此商品已存在或名称重复！");
		}
		return mav;
    }
    /**
     * 删除商品
     * @param goodsid
     * @param request
     * @return
     */
    @RequestMapping("deleteGoods")
    public ModelAndView deleteGoods(Integer goodsid,HttpServletRequest request){
		int ok=adminService.deleteGoods(goodsid);
        ModelAndView mav = new ModelAndView();
        mav=selectGoods("delete");
        if(ok==1) {
        	mav.addObject("msg","删除商品成功！");
		}else {
			mav.addObject("msg","商品不存在或删除异常！");
		}
		return mav;
    }
    @RequestMapping("goUpdateGoods")
    public ModelAndView goUpdateGoods(Integer goodsid,HttpServletRequest request){
		Goods goods=adminService.productDetails(goodsid);
        ModelAndView mav = new ModelAndView();
        mav=selectType("select");
        mav.setViewName("admin/updateAgoods");
        if(goods!=null) {
        	mav.addObject("goods",goods);
		}else {
			mav.addObject("msg","商品不存在！");
		}
		return mav;
    }
    @RequestMapping("updateGoods")
    public ModelAndView updateGoods(Goods goods,UploadedImageFile file){
    	ModelAndView mav = new ModelAndView();
    	if(!file.getImage().isEmpty()) {
    		String newFileName = UploadFile.uploadFile(file); // 上传图片，获取图片的新名称
    		if(newFileName.isEmpty()) { // 图片写入磁盘失败
    			mav.setViewName("redirect:jumpAddGood");
    			mav.addObject("mess", "图片上传失败，请重试");
    			return mav;
    		}
    		goods.setGoodspicture(newFileName);
    	}
		int ok=adminService.updateGoods(goods);
		Goods goodsnew=adminService.productDetails(goods.getGoodsid());
        mav=selectType("select");
        mav.setViewName("admin/updateAgoods");
    	mav.addObject("goods",goodsnew);
        if(ok==1) {
        	mav.addObject("msg","商品修改成功！");
		}else {
			mav.addObject("msg","商品不存在！");
		}
		return mav;
    }
    
    @RequestMapping("goodsDetail")
    public ModelAndView goodsDetail(Integer goodsid){
		Goods gooddate=adminService.goodsDetail(goodsid);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("admin/goodsDetail");
        mav.addObject("gooddate",gooddate);
		return mav;
    }
    /**
     * 查询商品类别列表
     * @param operation
     * @return
     */
	@RequestMapping("selectType")
    public ModelAndView selectType(String operation){
		List<Goods> typeList=adminService.selectType();
		ModelAndView mav = new ModelAndView();
		if("select".equals(operation)) {
		}
        if("add".equals(operation)) {
        	mav.setViewName("admin/addType");
        }
        if("delete".equals(operation)) {
        	mav.setViewName("admin/deleteType");
        }
        mav.addObject("typeList",typeList);
		return mav;
    }
	/**
	 * 添加商品类别
	 * @param typename
	 * @param request
	 * @return
	 */
    @RequestMapping("addType")
    public ModelAndView addType(String typename,HttpServletRequest request){
		int ok=adminService.addType(typename);
        ModelAndView mav = new ModelAndView();
        mav=selectType("add");
        if(ok==1) {
        	mav.addObject("msg","添加类型成功！");
		}else {
			mav.addObject("msg","此类型已存在！");
		}
		return mav;
    }
    /**
     * 删除商品类别
     * @param typeid
     * @param request
     * @return
     */
    @RequestMapping("deleteType")
    public ModelAndView deleteType(Goods typeid,HttpServletRequest request){
		int ok=adminService.deleteType(typeid);
        ModelAndView mav = new ModelAndView();
        mav=selectType("delete");
        if(ok==1) {
			mav.addObject("msg","删除类型成功！");
		}else {
			mav.addObject("msg","类型不存在或删除异常！");
		}
		return mav;
    }



    
    @RequestMapping("goOrderManager")
    public ModelAndView goOrderManager(){
		List<Order> orderList=adminService.goOrderManager();
        ModelAndView mav = new ModelAndView("admin/orderManager");
        mav.addObject("orderList",orderList);
		return mav;
    }
    @RequestMapping("deleteOrder")
    public ModelAndView deleteOrder(Integer orderid){
		int ok=adminService.deleteOrder(orderid);
        ModelAndView mav = new ModelAndView();
        mav=goOrderManager();
        if(ok==1) {
			mav.addObject("msg","删除类型成功！");
		}else {
			mav.addObject("msg","类型不存在或删除异常！");
		}
		return mav;
    }

}
