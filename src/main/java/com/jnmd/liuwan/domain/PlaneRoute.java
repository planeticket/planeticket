package com.jnmd.liuwan.domain;

public class PlaneRoute {
    private int prId;
    private String prReceive;
    private String prPhone;
    private String prAddress;
    private String prPostcode;
    private String prInvoiceType;
    private String prInvoiceTitle;
    private int uid;
    public int getPrId() {
        return prId;
    }
    public void setPrId(int prId) {
        this.prId = prId;
    }
    public String getPrReceive() {
        return prReceive;
    }
    public void setPrReceive(String prReceive) {
        this.prReceive = prReceive;
    }
    public String getPrPhone() {
        return prPhone;
    }
    public void setPrPhone(String prPhone) {
        this.prPhone = prPhone;
    }
    public String getPrAddress() {
        return prAddress;
    }
    public void setPrAddress(String prAddress) {
        this.prAddress = prAddress;
    }
    public String getPrPostcode() {
        return prPostcode;
    }
    public void setPrPostcode(String prPostcode) {
        this.prPostcode = prPostcode;
    }
    public String getPrInvoiceType() {
        return prInvoiceType;
    }
    public void setPrInvoiceType(String prInvoiceType) {
        this.prInvoiceType = prInvoiceType;
    }
    public String getPrInvoiceTitle() {
        return prInvoiceTitle;
    }
    public void setPrInvoiceTitle(String prInvoiceTitle) {
        this.prInvoiceTitle = prInvoiceTitle;
    }
    public int getUid() {
        return uid;
    }
    public void setUid(int uid) {
        this.uid = uid;
    }
    public PlaneRoute(int prId, String prReceive, String prPhone, String prAddress, String prPostcode,
            String prInvoiceType, String prInvoiceTitle, int uid) {
        super();
        this.prId = prId;
        this.prReceive = prReceive;
        this.prPhone = prPhone;
        this.prAddress = prAddress;
        this.prPostcode = prPostcode;
        this.prInvoiceType = prInvoiceType;
        this.prInvoiceTitle = prInvoiceTitle;
        this.uid = uid;
    }
    public PlaneRoute(String prReceive, String prPhone, String prAddress, String prPostcode,
            String prInvoiceType, String prInvoiceTitle, int uid) {
        super();
        this.prReceive = prReceive;
        this.prPhone = prPhone;
        this.prAddress = prAddress;
        this.prPostcode = prPostcode;
        this.prInvoiceType = prInvoiceType;
        this.prInvoiceTitle = prInvoiceTitle;
        this.uid = uid;
    }
    public PlaneRoute() {
        super();
    }
    @Override
    public String toString() {
        return "PlaneRoute [prId=" + prId + ", prReceive=" + prReceive + ", prPhone=" + prPhone
                + ", prAddress=" + prAddress + ", prPostcode=" + prPostcode + ", prInvoiceType="
                + prInvoiceType + ", prInvoiceTitle=" + prInvoiceTitle + ", uid=" + uid + "]";
    }
    
}
