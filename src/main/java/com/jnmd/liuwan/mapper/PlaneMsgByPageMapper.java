package com.jnmd.liuwan.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jnmd.liuwan.domain.PlaneMsg;

@Repository
public interface PlaneMsgByPageMapper {
    
    public List<PlaneMsg> getPlaneMsgByPage(String pacity,String cityname,Integer currentPage,Integer currentNum);
    
    public PlaneMsg getPlaneMsgById(int id);
    
}
