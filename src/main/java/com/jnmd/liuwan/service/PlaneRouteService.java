package com.jnmd.liuwan.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jnmd.liuwan.domain.PlaneRoute;
import com.jnmd.liuwan.exception.PassengerException;
import com.jnmd.liuwan.mapper.PlaneRouteMapper;

@Service
@Transactional(propagation=Propagation.REQUIRED)
public class PlaneRouteService {
    @Resource
    private PlaneRouteMapper planeRouteMapper;
    @Transactional(rollbackFor=PassengerException.class)
    public void savePlaneRoute(PlaneRoute planeRoute){
        planeRouteMapper.savePlaneRoute(planeRoute);
    }
}
