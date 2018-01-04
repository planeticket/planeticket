package com.jnmd.liuwan.mapper;

import org.springframework.stereotype.Repository;

import com.jnmd.liuwan.domain.PlaneRoute;
@Repository
public interface PlaneRouteMapper {
    public void savePlaneRoute(PlaneRoute planeRoute);
}
