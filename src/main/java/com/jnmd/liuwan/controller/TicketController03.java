package com.jnmd.liuwan.controller;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.PlaneMsg;
import com.jnmd.liuwan.service.planeMsgService;

@Controller
@Scope("prototype")
public class TicketController03{
    
    @Resource
    private planeMsgService planeMsgService;
    
    @RequestMapping("/order")
    public ModelAndView getOrder(@RequestParam(value="pmid")int pmid){
        ModelAndView mv = new ModelAndView();
        PlaneMsg pm = planeMsgService.getPlaneMsgById(pmid);
        System.out.println(pm);
        mv.addObject("planeMsgByid", pm);
        mv.setViewName("ticket03");
        return mv;
    }
}
