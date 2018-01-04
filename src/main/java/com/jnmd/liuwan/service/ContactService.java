package com.jnmd.liuwan.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jnmd.liuwan.domain.Contact;
import com.jnmd.liuwan.mapper.ContactMapper;

@Service
@Transactional(propagation=Propagation.REQUIRED)
public class ContactService {
    @Resource
    private ContactMapper contactMapper;
    
    public void saveContact(Contact contact){
        contactMapper.saveContact(contact);
    }
}
