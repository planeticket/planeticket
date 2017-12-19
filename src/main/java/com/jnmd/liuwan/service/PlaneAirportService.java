package com.jnmd.liuwan.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jnmd.liuwan.domain.PlaneAirport;
import com.jnmd.liuwan.mapper.PlaneAirportMapper;

@Service
@Transactional(propagation=Propagation.REQUIRED)
public class PlaneAirportService {

    @Resource
    private PlaneAirportMapper planeAirportMapper;
    
    @Transactional(propagation=Propagation.SUPPORTS,readOnly=true)
    public List<PlaneAirport> getCity(){
        return planeAirportMapper.getCity();
    }
}
