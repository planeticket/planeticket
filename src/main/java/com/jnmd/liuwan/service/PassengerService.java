package com.jnmd.liuwan.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
  
import com.jnmd.liuwan.domain.Passenger;
import com.jnmd.liuwan.mapper.PassengerMapper;
import com.jnmd.liuwan.exception.PassengerException;
  
@Service
@Transactional(propagation=Propagation.REQUIRED)
public class PassengerService {
    @Resource
    public PassengerMapper passengerMapper;
    
    public List<Passenger> getPassenger(int uid){
        return passengerMapper.getPassenger(uid);
    }
   @Transactional(rollbackFor=PassengerException.class)
    public  void  savePassenger(Passenger passenger){
       passengerMapper.savePassenger(passenger);  
    }
}
