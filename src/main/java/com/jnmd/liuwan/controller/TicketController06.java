package com.jnmd.liuwan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class TicketController06 {
    @RequestMapping("/ticket06")
    public ModelAndView getPassenger(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ticket06");
        return mv;
    }
}
