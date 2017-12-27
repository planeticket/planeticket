package com.jnmd.liuwan.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jnmd.liuwan.domain.Passenger;

@Repository
public interface PassengerMapper {
    public List<Passenger> getPassenger(int uid);
}
