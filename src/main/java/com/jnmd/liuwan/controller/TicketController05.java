package com.jnmd.liuwan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TicketController05 {
    
    @RequestMapping("/ticket05")
    public ModelAndView getPassenger(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ticket05");
        return mv;
    }
}
