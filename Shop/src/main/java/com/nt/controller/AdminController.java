package com.nt.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nt.pojo.Notice;
import com.nt.service.AdminService;
@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
    AdminService adminService;
	@RequestMapping("login")
    public ModelAndView login(){
        ModelAndView mav = new ModelAndView("admin/login");
		return mav;
    }
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
	 @RequestMapping("/toAddNotice")
	    public String toAddNotice(Model model) {
	    	model.addAttribute("notice", new Notice());
	    	return "admin/addNotice";
	    }
	    @RequestMapping("/addNotice")
	    public String addNotice(@ModelAttribute Notice notice) {
	    	return adminService.addNotice(notice);
	    }
	    @RequestMapping("/deleteNoticeSelect")
		public String deleteNoticeSelect(Model model) {
			return adminService.deleteNoticeSelect(model);
		}
		@RequestMapping("/selectANotice")
		public String selectANotice(Model model, int id) {
			return adminService.selectANotice(model, id);
		}
		@RequestMapping("/deleteNotice")
		public String deleteNotice(int id) {
			return adminService.deleteNotice(id);
		}


	
	
}
