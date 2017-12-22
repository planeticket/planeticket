package com.jnmd.liuwan.domain;

import java.util.Date;

public class PlaneMsg { //航班信息
    private int pmId;   //ID
    private String pmFight;     //航班编号
    private PlaneAirport planeAirport;  //始发地城市
    private Province province;  //目的地城市
    private Date startTime;     //始发时间
    private Date endTime;       //到达时间
    private String duringtime;    //经历时间
    private double pmPrice;     //价格
    private PlaneCompany planeCompany;  //航空公司
    private PlaneOil planeOil;  //机建燃油信息
    
    public PlaneMsg() {
    }
    public PlaneMsg(String pmFight, PlaneAirport planeAirport, Province province, Date startTime,
            Date endTime, String duringtime, double pmPrice, PlaneCompany planeCompany, PlaneOil planeOil) {
        super();
        this.pmFight = pmFight;
        this.planeAirport = planeAirport;
        this.province = province;
        this.startTime = startTime;
        this.endTime = endTime;
        this.duringtime = duringtime;
        this.pmPrice = pmPrice;
        this.planeCompany = planeCompany;
        this.planeOil = planeOil;
    }

    public PlaneMsg(int pmId, String pmFight, PlaneAirport planeAirport, Province province, Date startTime,
            Date endTime, String duringtime, double pmPrice, PlaneCompany planeCompany, PlaneOil planeOil) {
        super();
        this.pmId = pmId;
        this.pmFight = pmFight;
        this.planeAirport = planeAirport;
        this.province = province;
        this.startTime = startTime;
        this.endTime = endTime;
        this.duringtime = duringtime;
        this.pmPrice = pmPrice;
        this.planeCompany = planeCompany;
        this.planeOil = planeOil;
    }
    public String getDuringtime() {
        return duringtime;
    }
    public void setDuringtime(String duringtime) {
        this.duringtime = duringtime;
    }
    public int getPmId() {
        return pmId;
    }
    public void setPmId(int pmId) {
        this.pmId = pmId;
    }
    public String getPmFight() {
        return pmFight;
    }
    public void setPmFight(String pmFight) {
        this.pmFight = pmFight;
    }
    public PlaneAirport getPlaneAirport() {
        return planeAirport;
    }
    public void setPlaneAirport(PlaneAirport planeAirport) {
        this.planeAirport = planeAirport;
    }
    public Province getProvince() {
        return province;
    }
    public void setProvince(Province province) {
        this.province = province;
    }
    public Date getStartTime() {
        return startTime;
    }
    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }
    public Date getEndTime() {
        return endTime;
    }
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
    public double getPmPrice() {
        return pmPrice;
    }
    public void setPmPrice(double pmPrice) {
        this.pmPrice = pmPrice;
    }
    public PlaneCompany getPlaneCompany() {
        return planeCompany;
    }
    public void setPlaneCompany(PlaneCompany planeCompany) {
        this.planeCompany = planeCompany;
    }
    public PlaneOil getPlaneOil() {
        return planeOil;
    }
    public void setPlaneOil(PlaneOil planeOil) {
        this.planeOil = planeOil;
    }
    @Override
    public String toString() {
        return "PlaneMsg [pmId=" + pmId + ", pmFight=" + pmFight + ", planeAirport=" + planeAirport
                + ", province=" + province + ", startTime=" + startTime + ", endTime=" + endTime
                + ", duringtime=" + duringtime + ", pmPrice=" + pmPrice + ", planeCompany=" + planeCompany
                + ", planeOil=" + planeOil + "]";
    }
}
