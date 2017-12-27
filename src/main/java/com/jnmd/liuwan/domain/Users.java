package com.jnmd.liuwan.domain;

public class Users {
    private int uid;
    private String userName;
    private String password;
    
    public int getUid() {
        return uid;
    }
    public void setUid(int uid) {
        this.uid = uid;
    }
    public String getUserName() {
        return userName;
    }
    public String getPassword() {
        return password;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public Users(){
        super();
    }
    public Users(String userName, String password) {
        super();
        this.userName = userName;
        this.password = password;
    }
    public Users(int uid, String userName, String password) {
        super();
        this.uid = uid;
        this.userName = userName;
        this.password = password;
    }
    @Override
    public String toString() {
        return "Users [uid=" + uid + ", userName=" + userName + ", password=" + password + "]";
    }
    
    
}
