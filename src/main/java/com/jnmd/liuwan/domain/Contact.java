package com.jnmd.liuwan.domain;

public class Contact {
    private int contactId;
    private Users users;
    private String contactName;
    private String contactPhone;
    private UserType userType;
    public int getContactId() {
        return contactId;
    }
    public void setContactId(int contactId) {
        this.contactId = contactId;
    }
    public Users getUsers() {
        return users;
    }
    public void setUsers(Users users) {
        this.users = users;
    }
    public String getContactName() {
        return contactName;
    }
    public void setContactName(String contactName) {
        this.contactName = contactName;
    }
    public String getContactPhone() {
        return contactPhone;
    }
    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone;
    }
    public UserType getUserType() {
        return userType;
    }
    public void setUserType(UserType userType) {
        this.userType = userType;
    }
    @Override
    public String toString() {
        return "Contact [contactId=" + contactId + ", users=" + users + ", contactName=" + contactName
                + ", contactPhone=" + contactPhone + ", userType=" + userType + "]";
    }
    public Contact(int contactId, Users users, String contactName, String contactPhone, UserType userType) {
        super();
        this.contactId = contactId;
        this.users = users;
        this.contactName = contactName;
        this.contactPhone = contactPhone;
        this.userType = userType;
    }
    public Contact() {
        super();
    }
    public Contact(Users users, String contactName, String contactPhone, UserType userType) {
        super();
        this.users = users;
        this.contactName = contactName;
        this.contactPhone = contactPhone;
        this.userType = userType;
    }
    
}
