package com.jnmd.liuwan.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.jnmd.liuwan.domain.PlaneMsg;

@Repository
public interface planeMsgMapper {
    public List<PlaneMsg> getPlaneMsg(String pacity,String cityname,Date startTime,Date endTime) throws Exception;
}
