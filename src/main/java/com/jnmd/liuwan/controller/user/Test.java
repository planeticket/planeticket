package com.jnmd.liuwan.controller.user;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Scope("prototype")
public class Test{
    @RequestMapping("/saveController")
    public String save(HttpServletRequest request){
        SimpleDateFormat df1 = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat df2 = new SimpleDateFormat("HH:mm");
        request.setAttribute("df1", df1.format(new Date()));
        request.setAttribute("df2", df2.format(new Date()));
        return "forward:/WEB-INF/jsp/ticket01.jsp";
    }
}
