package com.jnmd.liuwan.controller;

import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.PlaneMsg;
import com.jnmd.liuwan.service.PlaneMsgByPageService;
import com.jnmd.liuwan.domain.Users;
import com.jnmd.liuwan.service.planeMsgService;

@Controller
@Scope("prototype")
public class TicketController02 {
    @Resource
    private PlaneMsgByPageService planeMsgByPageService;
    
    @RequestMapping("/getMsgByPage")
    public ModelAndView getplaneMsg(String pacity,String cityname,@DateTimeFormat(pattern = "yyyy-MM-dd")Date startDay,@DateTimeFormat(pattern = "yyyy-MM-dd")Date endDay,String startTime,String endTime,Integer currentPage,Integer currentNum) throws Exception{
        HttpSession session=request.getSession();
        Users user=(Users)session.getAttribute("user");
        System.out.println("user2="+user);
        if(user!=null){
          SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

          String day = sdf.format(startDay);
          String str1= day.toString();

          String str2 = startTime.toString()+":00";
          String str = str1+" "+str2;
        
          SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
          Date d = sdf1.parse(str);
          System.out.println(currentPage);
          currentNum = 9;

          List<PlaneMsg> planeMsgsbefore = planeMsgByPageService.getPlaneMsgByPage(pacity, cityname, startDay, endDay, currentPage,currentNum);
          List<PlaneMsg> planeMsgafter=new ArrayList<PlaneMsg>();
          for(PlaneMsg i : planeMsgsbefore){
              if(i.getStartTime().after(d)){
                  planeMsgafter.add(i);
              }  
          }

          int count = planeMsgafter.size();
          int totalPage = (int)Math.ceil((count*1.0)/9);

          ModelAndView mv = new ModelAndView();
          Map<String, Object> map = new HashMap<String,Object>();
          mv.addObject("planeMsgs", planeMsgafter);
          mv.addObject("pacity",pacity);
          mv.addObject("cityname",cityname);
          mv.addObject("startDay",startDay);

          mv.addObject("totalPage", totalPage);
          mv.addObject("currentNum", currentNum);

          map.put("planeMsgs", planeMsgafter);
          map.put("pacity", pacity);
          map.put("cityname", cityname);
          map.put("startDay", startDay);
          map.put("totalPage", totalPage);
          map.put("currentPage", currentPage);
          map.put("currentNum", currentNum);
          mv.addObject("map",map);
          mv.setViewName("forward:/WEB-INF/jsp/ticket02.jsp");
          return mv;
          
        }else{
            mv.setViewName("index2");
            return mv;
        }     
    }
    
}
