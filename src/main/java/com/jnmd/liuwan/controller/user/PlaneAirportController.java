package com.jnmd.liuwan.controller.user;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.PlaneAirport;
import com.jnmd.liuwan.service.PlaneAirportService;

@Controller
@Scope("prototype")
public class PlaneAirportController {

    @Resource
    private PlaneAirportService planeAirportService;
    
    @RequestMapping("/getCity")
    public ModelAndView getCity(){
        List<PlaneAirport> cityList = planeAirportService.getCity();
        ModelAndView mv = new ModelAndView();
        mv.addObject("cityList", cityList);
        mv.setViewName("ticket01");
        return mv;
    }
}
