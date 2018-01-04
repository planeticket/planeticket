package com.jnmd.liuwan.mapper;

import org.springframework.stereotype.Repository;

import com.jnmd.liuwan.domain.Contact;
@Repository
public interface ContactMapper {
    public void saveContact(Contact contact);
}
