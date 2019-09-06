package com.nt.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nt.pojo.User;
import com.nt.service.UserService;
@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
    UserService userService;
	@RequestMapping("login")
    public ModelAndView login(){
        ModelAndView mav = new ModelAndView("before/login");
		return mav;
    }
	@RequestMapping("userLogin")
    public ModelAndView userLogin(User user,HttpServletRequest request){
		HttpSession session = request.getSession();
		User us=userService.login(user);
		ModelAndView mav = new ModelAndView();
		if(us!=null) {
			int id=us.getUserid();
			mav.setViewName("before/index");
			session.setAttribute("id",id);
			mav.addObject("msg","");
		}else {
			mav.setViewName("before/login");
			if(user.getUseremail()!=""&&user.getUseremail()!=null) {
				mav.addObject("msg","登录信息错误！");
			}
		}
		return mav;
    }
	@RequestMapping("register")
    public ModelAndView register(){
        ModelAndView mav = new ModelAndView("before/register");
		return mav;
    }
	@RequestMapping("userRegister")
	public ModelAndView userRegister(User user,HttpServletRequest request){
		int i=userService.register(user);
		String msg="";
		ModelAndView mav = new ModelAndView();
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
}
