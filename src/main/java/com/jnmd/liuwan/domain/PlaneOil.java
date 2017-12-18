package com.jnmd.liuwan.domain;

public class PlaneOil { //机建燃油信息
    private int poId;   //ID
    private double poCreate;    //机建费
    private double poOil;       //燃油费
    private PlaneCompany planeCompany;  //航空公司
    public PlaneOil() {
        super();
    }
    public PlaneOil(double poCreate, double poOil, PlaneCompany planeCompany) {
        super();
        this.poCreate = poCreate;
        this.poOil = poOil;
        this.planeCompany = planeCompany;
    }
    public PlaneOil(int poId, double poCreate, double poOil, PlaneCompany planeCompany) {
        super();
        this.poId = poId;
        this.poCreate = poCreate;
        this.poOil = poOil;
        this.planeCompany = planeCompany;
    }
    public int getPoId() {
        return poId;
    }
    public void setPoId(int poId) {
        this.poId = poId;
    }
    public double getPoCreate() {
        return poCreate;
    }
    public void setPoCreate(double poCreate) {
        this.poCreate = poCreate;
    }
    public double getPoOil() {
        return poOil;
    }
    public void setPoOil(double poOil) {
        this.poOil = poOil;
    }
    public PlaneCompany getPlaneCompany() {
        return planeCompany;
    }
    public void setPlaneCompany(PlaneCompany planeCompany) {
        this.planeCompany = planeCompany;
    }
    @Override
    public String toString() {
        return "PlaneOil [poId=" + poId + ", poCreate=" + poCreate + ", poOil=" + poOil + ", planeCompany="
                + planeCompany + "]";
    }
}
