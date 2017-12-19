package com.jnmd.liuwan.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jnmd.liuwan.domain.PlaneAirport;

@Repository
public interface PlaneAirportMapper {
    
    public List<PlaneAirport> getCity();

}
