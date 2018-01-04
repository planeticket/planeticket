package com.jnmd.liuwan.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.Passenger;
import com.jnmd.liuwan.service.PassengerService;

@Controller
public class TicketController04 {
    
    @Resource
    public PassengerService passengerService;
    
    @RequestMapping("/getPassenger")
    public ModelAndView getPassenger(){
        ModelAndView mv = new ModelAndView();
        int uid=3;
        List<Passenger> psg = passengerService.getPassenger(uid);
        mv.addObject("passenger", psg);
        mv.setViewName("ticket04");
        return mv;
    }
}
