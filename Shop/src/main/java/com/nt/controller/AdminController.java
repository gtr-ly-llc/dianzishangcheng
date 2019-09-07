package com.nt.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
}
