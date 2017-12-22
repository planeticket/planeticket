package com.jnmd.liuwan.controller.user;

import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.PlaneMsg;
import com.jnmd.liuwan.service.planeMsgService;

@Controller
@Scope("prototype")
public class TicketController02 {
    @Resource
    private planeMsgService planeMsgService;
    
    @RequestMapping("/getMsg")
    public ModelAndView getplaneMsg(String pacity,String cityname,@DateTimeFormat(pattern = "yyyy-MM-dd")Date startDay,@DateTimeFormat(pattern = "yyyy-MM-dd")Date endDay,String startTime,String endTime) throws Exception{
//        System.out.println("pacity========"+pacity);
//        System.out.println("cityname=======" +cityname);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String day = sdf.format(startDay);
//        SimpleDateFormat sdf1= new SimpleDateFormat("hh:mm:ss");
//        String time = sdf1.format(startTime);
//        System.out.println(time);
//        String str = day+" "+time;
        String str1= day.toString();
        String str2 = startTime.toString()+":00";
        String str = str1+" "+str2;
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Date d = sdf1.parse(str);
        System.out.println(d);
        List<PlaneMsg> planeMsgsbefore = planeMsgService.getPlaneMsg(pacity,cityname,startDay,endDay);
        List<PlaneMsg> planeMsgafter=new ArrayList<PlaneMsg>();
        System.out.println(planeMsgsbefore);
        for(PlaneMsg i : planeMsgsbefore){
            System.out.println(i.getPlaneAirport().getPaCity());
            if(i.getStartTime().after(d)){
                planeMsgafter.add(i);
            }  
        }
        System.out.println(planeMsgsbefore);
        ModelAndView mv = new ModelAndView();
        mv.addObject("planeMsgs", planeMsgafter);
        mv.addObject("pacity",pacity);
        mv.addObject("cityname",cityname);
        mv.addObject("startDay",startDay);
        mv.setViewName("ticket02");
        return mv;
    }
}
