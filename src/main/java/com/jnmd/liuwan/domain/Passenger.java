package com.jnmd.liuwan.domain;

import java.util.Date;

public class Passenger {
    private int psgId;//乘客Id
    private String psgName;//乘客姓名
    private int tid;//
    private  int psgSex;
    private  String psgCountry;
    private  Date psgBirthday;
    private String psgPaper;
    private  String psgPapercode;
    private int uid;
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
    public int getTid() {
        return tid;
    }
    public void setTid(int tid) {
        this.tid = tid;
    }
    public int getUid() {
        return uid;
    }
    public void setUid(int uid) {
        this.uid = uid;
    }
    public Passenger(int psgId, String psgName, int tid, int psgSex, String psgCountry, Date psgBirthday,
            String psgPaper, String psgPapercode, int uid) {
        super();
        this.psgId = psgId;
        this.psgName = psgName;
        this.tid = tid;
        this.psgSex = psgSex;
        this.psgCountry = psgCountry;
        this.psgBirthday = psgBirthday;
        this.psgPaper = psgPaper;
        this.psgPapercode = psgPapercode;
        this.uid = uid;
    }
    public Passenger(String psgName, int tid, int psgSex, String psgCountry, Date psgBirthday,
            String psgPaper, String psgPapercode, int uid) {
        super();
        this.psgName = psgName;
        this.tid = tid;
        this.psgSex = psgSex;
        this.psgCountry = psgCountry;
        this.psgBirthday = psgBirthday;
        this.psgPaper = psgPaper;
        this.psgPapercode = psgPapercode;
        this.uid = uid;
    }
    public Passenger() {
        super();
    }
    @Override
    public String toString() {
        return "Passenger [psgId=" + psgId + ", psgName=" + psgName + ", tid=" + tid + ", psgSex=" + psgSex
                + ", psgCountry=" + psgCountry + ", psgBirthday=" + psgBirthday + ", psgPaper=" + psgPaper
                + ", psgPapercode=" + psgPapercode + ", uid=" + uid + "]";
    }
    
}
