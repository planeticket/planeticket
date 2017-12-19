package com.jnmd.liuwan.controller.user;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.Province;
import com.jnmd.liuwan.service.ProvinceService;

@Controller
@Scope("prototype")
public class ProvinceController {

    @Resource
    private ProvinceService provinceService;
    
    @RequestMapping("/provinceController")
    public ModelAndView getProvinces(){
        ModelAndView mv=new ModelAndView();
        List<Province> provinces=provinceService.getProvinces();
        SimpleDateFormat df1 = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat df2 = new SimpleDateFormat("HH:mm");
        System.out.println(provinces);
        mv.addObject("provinces", provinces);
        mv.addObject("df1", df1.format(new Date()));
        mv.addObject("df2", df2.format(new Date()));
        mv.setViewName("ticket01");
        return mv;
    }
}















