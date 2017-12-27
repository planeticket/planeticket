package com.jnmd.liuwan.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jnmd.liuwan.domain.PlaneMsg;
import com.jnmd.liuwan.mapper.PlaneMsgByPageMapper;

@Service
@Transactional(propagation=Propagation.REQUIRED)
public class PlaneMsgByPageService {
    
    @Resource
    private PlaneMsgByPageMapper planeMsgByPageMapper;
    
    public List<PlaneMsg> getPlaneMsgByPage(String pacity,String cityname,Date startTime,Date endTime,Integer currentPage,Integer currentNum){
        return planeMsgByPageMapper.getPlaneMsgByPage(pacity, cityname,(currentPage-1)*9,currentNum);
    }
    
    public PlaneMsg getPlaneMsgById(int id){
        return planeMsgByPageMapper.getPlaneMsgById(id);
    }
}
