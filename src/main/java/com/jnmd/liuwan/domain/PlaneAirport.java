package com.jnmd.liuwan.domain;

public class PlaneAirport {     //始发地
    private int paId;   //机场ID
    private String paCode;      //机场三级代码
    private String paCity;      //机场所属地区名称
    private String paName;      //机场名称
    private String paProvince;    //机场所属省份
    public PlaneAirport() {
        super();
    }
    public PlaneAirport(String paCode, String paCity, String paName, String paProvince) {
        super();
        this.paCode = paCode;
        this.paCity = paCity;
        this.paName = paName;
        this.paProvince = paProvince;
    }
    public PlaneAirport(int paId, String paCode, String paCity, String paName, String paProvince) {
        super();
        this.paId = paId;
        this.paCode = paCode;
        this.paCity = paCity;
        this.paName = paName;
        this.paProvince = paProvince;
    }
    public int getPaId() {
        return paId;
    }
    public void setPaId(int paId) {
        this.paId = paId;
    }
    public String getPaCode() {
        return paCode;
    }
    public void setPaCode(String paCode) {
        this.paCode = paCode;
    }
    public String getPaCity() {
        return paCity;
    }
    public void setPaCity(String paCity) {
        this.paCity = paCity;
    }
    public String getPaName() {
        return paName;
    }
    public void setPaName(String paName) {
        this.paName = paName;
    }
    public String getPaProvince() {
        return paProvince;
    }
    public void setPaProvince(String paProvince) {
        this.paProvince = paProvince;
    }
    @Override
    public String toString() {
        return "PlaneAirport [paId=" + paId + ", paCode=" + paCode + ", paCity=" + paCity + ", paName="
                + paName + ", paProvince=" + paProvince + "]";
    }
}
