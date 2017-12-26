package com.jnmd.liuwan.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.PlaneAirport;
import com.jnmd.liuwan.domain.Province;
import com.jnmd.liuwan.domain.Users;
import com.jnmd.liuwan.service.PlaneAirportService;
import com.jnmd.liuwan.service.ProvinceService;
@Controller
@Scope("prototype")
public class TicketController01 {
    @Resource
    private PlaneAirportService planeAirportService;
    @Resource
    private ProvinceService provinceService;
    @RequestMapping("/getMessage")
    public ModelAndView getMessage(HttpServletRequest request){
        List<PlaneAirport> cityList = planeAirportService.getCity();
        List<Province> provinces=provinceService.getProvinces();
        SimpleDateFormat df1 = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat df2 = new SimpleDateFormat("HH:mm");
        ModelAndView mv = new ModelAndView();
        mv.addObject("cityList", cityList);
        System.out.println(provinces);
        HttpSession session=request.getSession();
        Users user=(Users)session.getAttribute("user");
        System.out.println("user1="+user);
        mv.addObject("provinces", provinces);
        mv.addObject("df1", df1.format(new Date()));
        mv.addObject("df2", df2.format(new Date()));
        mv.setViewName("ticket01");
        return mv;
    }
  
}
