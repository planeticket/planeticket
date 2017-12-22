package com.jnmd.liuwan.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jnmd.liuwan.domain.Users;
import com.jnmd.liuwan.mapper.UsersMapper;

@Service
@Transactional(propagation=Propagation.SUPPORTS)
public class UsersService {
    
    @Resource
    private UsersMapper usersMapper;
    
    public Users getUsers(Users users){
        return usersMapper.getUsers(users);
    };
}
