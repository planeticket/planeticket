package com.jnmd.liuwan.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jnmd.liuwan.domain.PlaneMsg;
import com.jnmd.liuwan.mapper.planeMsgMapper;

@Service
public class planeMsgService {
    @Resource
    private planeMsgMapper planeMsgMapper;
    
    public List<PlaneMsg> getPlaneMsg(String pacity,String cityname,Date startTime,Date endTime) throws Exception{
        return planeMsgMapper.getPlaneMsg(pacity,cityname,startTime,endTime);
        
    }
    
    public PlaneMsg getPlaneMsgById(int id){
        return planeMsgMapper.getPlaneMsgById(id);
    }
}
