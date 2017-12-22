package com.jnmd.liuwan.controller.user;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.Users;
import com.jnmd.liuwan.service.UsersService;

@Controller
@Scope("prototype")
public class UserController {
    
    @Resource
    private UsersService usersService;
    
    @RequestMapping("/userMapper")
    public String getUsers(Users users,HttpServletRequest request){        
        ModelAndView mv=new ModelAndView();
        Users users1=usersService.getUsers(users);
        String reqUri=request.getRequestURI();        
        String uri=(String)request.getSession().getAttribute("uri");
        System.out.println("con="+uri);
        if(users1!=null){
            HttpSession session=request.getSession();
            session.setAttribute("user", users1);
//            mv.addObject("user",users1);
//            mv.setViewName("redirect/getMessage");
//            mv.setViewName(uri);
            System.out.println(reqUri);
            return "redirect:/getMessage";
        }else{
//            mv.setViewName("index2");
            return "index2"; 
        }     
    }
}
