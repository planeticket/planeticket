package com.jnmd.liuwan.domain;

public class Contact {
    private int contactId;
    private int uid;
    private String contactName;
    private String contactPhone;
    private int tid;
    public int getContactId() {
        return contactId;
    }
    public void setContactId(int contactId) {
        this.contactId = contactId;
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
    
    public int getUid() {
        return uid;
    }
    public void setUid(int uid) {
        this.uid = uid;
    }
    public int getTid() {
        return tid;
    }
    public void setTid(int tid) {
        this.tid = tid;
    }
    public Contact(int contactId, int uid, String contactName, String contactPhone, int tid) {
        super();
        this.contactId = contactId;
        this.uid = uid;
        this.contactName = contactName;
        this.contactPhone = contactPhone;
        this.tid = tid;
    }
    public Contact(int uid, String contactName, String contactPhone, int tid) {
        super();
        this.uid = uid;
        this.contactName = contactName;
        this.contactPhone = contactPhone;
        this.tid = tid;
    }
    public Contact() {
        super();
    }
    @Override
    public String toString() {
        return "Contact [contactId=" + contactId + ", uid=" + uid + ", contactName=" + contactName
                + ", contactPhone=" + contactPhone + ", tid=" + tid + "]";
    }
    
}
