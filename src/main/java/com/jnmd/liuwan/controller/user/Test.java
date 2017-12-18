package com.jnmd.liuwan.controller.user;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Scope("prototype")
public class Test {
    @RequestMapping("/saveController")
    public String save(){
        return "forward:/WEB-INF/jsp/ticket03.jsp";
    }
}
