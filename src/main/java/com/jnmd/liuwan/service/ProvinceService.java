package com.jnmd.liuwan.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jnmd.liuwan.domain.Province;
import com.jnmd.liuwan.mapper.ProvinceMapper;

@Service
@Transactional(propagation=Propagation.SUPPORTS)
public class ProvinceService {

    @Resource
    private ProvinceMapper provinceMapper;
    
    public List<Province> getProvinces(){
        return provinceMapper.getProvinces();
    }
}

















