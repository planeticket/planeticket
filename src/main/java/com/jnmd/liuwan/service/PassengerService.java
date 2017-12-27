package com.jnmd.liuwan.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jnmd.liuwan.domain.Passenger;
import com.jnmd.liuwan.mapper.PassengerMapper;

@Service
public class PassengerService {
    @Resource
    public PassengerMapper passengerMapper;
    
    public List<Passenger> getPassenger(int uid){
        return passengerMapper.getPassenger(uid);
    }
}
