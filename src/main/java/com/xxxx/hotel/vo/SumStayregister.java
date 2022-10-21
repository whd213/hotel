package com.xxxx.hotel.vo;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.math.BigDecimal;
import java.util.Date;

public class SumStayregister {
    private Integer id;

    private Integer predetermineid;

    private Integer rentouttypeid;

    private Integer roomid;

    private Integer paywayid;

    private Integer billunitid;

    private Integer passengertypeid;

    private Integer receivetargetid;

    private Integer deputyid;

    private Integer isbillid;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date registertime;

    private String staynumber;

    private BigDecimal sumconst;

    private String changingroomnumber;

    private BigDecimal changroommoney;

    private String remarks;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date paytime;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date changroomtime;

    private Integer remind;

    //添加字段
    private String sum1;//总金额
    private String sum2;//入住人数

    //添加字段
    private String roomNumber;//房间号
    private String teamName;//接待对象
    //private String name;//旅客姓名

    public String getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(String roomNumber) {
        this.roomNumber = roomNumber;
    }

    public String getTeamName() {
        return teamName;
    }

    public void setTeamName(String teamName) {
        this.teamName = teamName;
    }

    /*public String getName() {
        return name;
    }*/

    /*public void setName(String name) {
        this.name = name;
    }*/

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPredetermineid() {
        return predetermineid;
    }

    public void setPredetermineid(Integer predetermineid) {
        this.predetermineid = predetermineid;
    }

    public Integer getRentouttypeid() {
        return rentouttypeid;
    }

    public void setRentouttypeid(Integer rentouttypeid) {
        this.rentouttypeid = rentouttypeid;
    }

    public Integer getRoomid() {
        return roomid;
    }

    public void setRoomid(Integer roomid) {
        this.roomid = roomid;
    }

    public Integer getPaywayid() {
        return paywayid;
    }

    public void setPaywayid(Integer paywayid) {
        this.paywayid = paywayid;
    }

    public Integer getBillunitid() {
        return billunitid;
    }

    public void setBillunitid(Integer billunitid) {
        this.billunitid = billunitid;
    }

    public Integer getPassengertypeid() {
        return passengertypeid;
    }

    public void setPassengertypeid(Integer passengertypeid) {
        this.passengertypeid = passengertypeid;
    }

    public Integer getReceivetargetid() {
        return receivetargetid;
    }

    public void setReceivetargetid(Integer receivetargetid) {
        this.receivetargetid = receivetargetid;
    }

    public Integer getDeputyid() {
        return deputyid;
    }

    public void setDeputyid(Integer deputyid) {
        this.deputyid = deputyid;
    }

    public Integer getIsbillid() {
        return isbillid;
    }

    public void setIsbillid(Integer isbillid) {
        this.isbillid = isbillid;
    }

    public Date getRegistertime() {
        return registertime;
    }

    public void setRegistertime(Date registertime) {
        this.registertime = registertime;
    }

    public String getStaynumber() {
        return staynumber;
    }

    public void setStaynumber(String staynumber) {
        this.staynumber = staynumber == null ? null : staynumber.trim();
    }

    public BigDecimal getSumconst() {
        return sumconst;
    }

    public void setSumconst(BigDecimal sumconst) {
        this.sumconst = sumconst;
    }

    public String getChangingroomnumber() {
        return changingroomnumber;
    }

    public void setChangingroomnumber(String changingroomnumber) {
        this.changingroomnumber = changingroomnumber == null ? null : changingroomnumber.trim();
    }

    public String getSum1() {
        return sum1;
    }

    public void setSum1(String sum1) {
        this.sum1 = sum1;
    }

    public String getSum2() {
        return sum2;
    }

    public void setSum2(String sum2) {
        this.sum2 = sum2;
    }

    public BigDecimal getChangroommoney() {
        return changroommoney;
    }

    public void setChangroommoney(BigDecimal changroommoney) {
        this.changroommoney = changroommoney;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    public Date getPaytime() {
        return paytime;
    }

    public void setPaytime(Date paytime) {
        this.paytime = paytime;
    }

    public Date getChangroomtime() {
        return changroomtime;
    }

    public void setChangroomtime(Date changroomtime) {
        this.changroomtime = changroomtime;
    }

    public Integer getRemind() {
        return remind;
    }

    public void setRemind(Integer remind) {
        this.remind = remind;
    }
}

