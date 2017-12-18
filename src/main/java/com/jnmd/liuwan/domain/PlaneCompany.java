package com.jnmd.liuwan.domain;

public class PlaneCompany {     //航空公司
    private int pcId;   //ID
    private String pcName;      //航空公司名称
    public PlaneCompany() {
        super();
    }
    public PlaneCompany(String pcName) {
        super();
        this.pcName = pcName;
    }
    public PlaneCompany(int pcId, String pcName) {
        super();
        this.pcId = pcId;
        this.pcName = pcName;
    }
    public int getPcId() {
        return pcId;
    }
    public void setPcId(int pcId) {
        this.pcId = pcId;
    }
    public String getPcName() {
        return pcName;
    }
    public void setPcName(String pcName) {
        this.pcName = pcName;
    }
    @Override
    public String toString() {
        return "PlaneCompany [pcId=" + pcId + ", pcName=" + pcName + "]";
    }
}
