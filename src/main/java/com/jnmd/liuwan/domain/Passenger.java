package com.jnmd.liuwan.domain;

import java.util.Date;

public class Passenger {
    private int psgId;//乘客Id
    private String psgName;//乘客姓名
    private UserType userType;//
    private  int psgSex;
    private  String psgCountry;
    private  Date psgBirthday;
    private String psgPaper;
    private  String psgPapercode;
    private Users users;
    public int getPsgId() {
        return psgId;
    }
    public void setPsgId(int psgId) {
        this.psgId = psgId;
    }
    public String getPsgName() {
        return psgName;
    }
    public void setPsgName(String psgName) {
        this.psgName = psgName;
    }
    public UserType getUserType() {
        return userType;
    }
    public void setUserType(UserType userType) {
        this.userType = userType;
    }
    public int getPsgSex() {
        return psgSex;
    }
    public void setPsgSex(int psgSex) {
        this.psgSex = psgSex;
    }
    public String getPsgCountry() {
        return psgCountry;
    }
    public void setPsgCountry(String psgCountry) {
        this.psgCountry = psgCountry;
    }
    public Date getPsgBirthday() {
        return psgBirthday;
    }
    public void setPsgBirthday(Date psgBirthday) {
        this.psgBirthday = psgBirthday;
    }
    public String getPsgPaper() {
        return psgPaper;
    }
    public void setPsgPaper(String psgPaper) {
        this.psgPaper = psgPaper;
    }
    public String getPsgPapercode() {
        return psgPapercode;
    }
    public void setPsgPapercode(String psgPapercode) {
        this.psgPapercode = psgPapercode;
    }
    public Users getUsers() {
        return users;
    }
    public void setUsers(Users users) {
        this.users = users;
    }
    
    public Passenger(int psgId, String psgName, UserType userType, int psgSex, String psgCountry,
            Date psgBirthday, String psgPaper, String psgPapercode, Users users) {
        super();
        this.psgId = psgId;
        this.psgName = psgName;
        this.userType = userType;
        this.psgSex = psgSex;
        this.psgCountry = psgCountry;
        this.psgBirthday = psgBirthday;
        this.psgPaper = psgPaper;
        this.psgPapercode = psgPapercode;
        this.users = users;
    }
    
    public Passenger(String psgName, UserType userType, int psgSex, String psgCountry, Date psgBirthday,
            String psgPaper, String psgPapercode, Users users) {
        super();
        this.psgName = psgName;
        this.userType = userType;
        this.psgSex = psgSex;
        this.psgCountry = psgCountry;
        this.psgBirthday = psgBirthday;
        this.psgPaper = psgPaper;
        this.psgPapercode = psgPapercode;
        this.users = users;
    }
    
    public Passenger() {
        super();
    }
    @Override
    public String toString() {
        return "Passager [psgId=" + psgId + ", psgName=" + psgName + ", userType=" + userType + ", psgSex="
                + psgSex + ", psgCountry=" + psgCountry + ", psgBirthday=" + psgBirthday + ", psgPaper="
                + psgPaper + ", psgPapercode=" + psgPapercode + ", users=" + users + "]";
    }
    
    
    
    
}
