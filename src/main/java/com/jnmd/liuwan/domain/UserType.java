package com.jnmd.liuwan.domain;

public class UserType {
    private int tid;
    private String tname;
    public int getTid() {
        return tid;
    }
    public void setTid(int tid) {
        this.tid = tid;
    }
    public String getTname() {
        return tname;
    }
    public void setTname(String tname) {
        this.tname = tname;
    }
    public UserType(int tid, String tname) {
        super();
        this.tid = tid;
        this.tname = tname;
    }
    public UserType() {
        super();
    }
    
    public UserType(String tname) {
        super();
        this.tname = tname;
    }
    @Override
    public String toString() {
        return "UserType [tid=" + tid + ", tname=" + tname + "]";
    }
    
}
