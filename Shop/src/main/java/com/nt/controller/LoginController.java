package com.nt.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.nt.pojo.Goods;
import com.nt.pojo.Notice;
import com.nt.pojo.User;
import com.nt.realm.MD5Hash;
import com.nt.service.UserService;

@Controller
@RequestMapping("")
public class LoginController {
	@Autowired
    UserService userService;
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
	@RequestMapping(value="/login",method=RequestMethod.POST) 
	public ModelAndView login(Model model,String useremail, String userpwd,String code,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession ses = request.getSession();
		String verifyCode= (String) ses.getAttribute("randomcode_key");
		if(!code.equalsIgnoreCase(verifyCode)){
        	model.addAttribute("error", "验证码错误");
        	 mav.setViewName("before/login");
             return mav;  
        }
		Subject subject = SecurityUtils.getSubject();  
        UsernamePasswordToken token = new UsernamePasswordToken(useremail, userpwd);
        try {  
            subject.login(token);
            Session session=subject.getSession();
            session.setAttribute("subject", subject);
            User us=userService.login(subject.getPrincipal().toString());
            ses.setAttribute("uid",us.getUserid());
            mav=index(request);
            return mav;//"redirect:jsp/before/index.jsp";
            
        } catch (AuthenticationException e) {
            model.addAttribute("error", "验证失败");
            mav.setViewName("before/login");
            return mav; 
        }
	}
	@RequestMapping(value="/faceLogin",method=RequestMethod.POST) 
	public ModelAndView faceLogin(Model model,int userid,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession ses = request.getSession();
		Subject subject = SecurityUtils.getSubject();
		User user=userService.getUserFromID(userid);
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUseremail(), user.getUserpwd());
        try {
        	token.setRememberMe(false);
            subject.login(token);
            Session session=subject.getSession();
            session.setAttribute("subject", subject);
            User us=userService.login(subject.getPrincipal().toString());
            ses.setAttribute("uid",us.getUserid());
            mav=index(request);
            return mav;//"redirect:jsp/before/index.jsp";
            
        } catch (AuthenticationException e) {
            model.addAttribute("error", "验证失败");
            mav.setViewName("before/login");
            return mav; 
        }
	}
	@RequestMapping("logout")
	public ModelAndView userRegister(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		mav=index(request);
		return mav;
	}
}
