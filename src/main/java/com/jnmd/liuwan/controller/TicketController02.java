package com.jnmd.liuwan.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
    public ModelAndView getplaneMsg(HttpServletRequest request,String pacity,String cityname,@DateTimeFormat(pattern = "yyyy-MM-dd")Date startDay,@DateTimeFormat(pattern = "yyyy-MM-dd")Date endDay,String startTime,String endTime,Integer currentPage,Integer currentNum) throws Exception{
        
        HttpSession session=request.getSession();
        Users user=(Users)session.getAttribute("user");
        
        ModelAndView mv = new ModelAndView();
        if(user!=null){
          SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
          
          if (session.getAttribute("pacity") == null || session.getAttribute("cityname") == null || session.getAttribute("startDay") == null || session.getAttribute("startTime") == null) {
            session.setAttribute("pacity",pacity);
            session.setAttribute("cityname",cityname);
            session.setAttribute("startDay",startDay);
            session.setAttribute("startTime",startTime);
          }
          
          pacity = (String) session.getAttribute("pacity");
          cityname = (String) session.getAttribute("cityname");
          startDay = (Date) session.getAttribute("startDay");
          startTime = (String) session.getAttribute("startTime");
          
          
          String day = sdf.format(startDay);
          String str1= day.toString();

          String str2 = startTime.toString()+":00";
          String str = str1+" "+str2;
        
          SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
          Date d = sdf1.parse(str);
          
          int count = planeMsgByPageService.getCount(pacity, cityname,d);
          int totalPage = (int)Math.ceil((count*1.0)/currentNum);
         
          int start = (currentPage - 1)*currentNum;

          List<PlaneMsg> planeMsgsbefore = planeMsgByPageService.getPlaneMsgByPage(pacity, cityname, d, endDay, start,currentNum);
          List<PlaneMsg> planeMsgafter=new ArrayList<PlaneMsg>();
          for(PlaneMsg i : planeMsgsbefore){
              if(i.getStartTime().after(d)){
                  planeMsgafter.add(i);
              }  
          }

          mv.addObject("planeMsgs", planeMsgafter);
          mv.addObject("pacity",pacity);
          mv.addObject("cityname",cityname);
          mv.addObject("startDay",startDay);

          mv.addObject("totalPage", totalPage);
          mv.addObject("currentNum", currentNum);
          mv.addObject("count",count);
          mv.addObject("currentPage", currentPage);
          
          mv.setViewName("forward:/WEB-INF/jsp/ticket02.jsp");
          return mv;
          
        }else{
            mv.setViewName("index2");
            return mv;
        }     
    }
    
}
