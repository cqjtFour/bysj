package com.cqfour.bysj.bean;

import cn.afterturn.easypoi.excel.annotation.Excel;

public class JiuYeStudentInfo {

    @Excel(name = "序号",orderNum ="0")
    private String id;
    @Excel(name = "学号",orderNum ="1")
    private String stuNo;
    @Excel(name = "姓名", orderNum = "2")
    private String stuName;
    @Excel(name = "所属专业", orderNum = "3")
    private String zy;
    @Excel(name = "所属学院", orderNum = "4")
    private String xy;
    @Excel(name = "是否签订三方", replace = {"是_1", "否_0"}, orderNum = "5")
    private String sfqdsfxy;
    @Excel(name = "三方是否上交", replace = {"是_1", "否_0"}, orderNum = "6")
    private String sfsfsj;
    @Excel(name = "是否毁约", replace = {"是_1", "否_0"}, orderNum = "7")
    private String sfhy;
    @Excel(name = "新三方是否领取", replace = {"是_1", "否_0"}, orderNum = "7")
    private String xsfsflq;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getStuNo() {
        return stuNo;
    }

    public void setStuNo(String stuNo) {
        this.stuNo = stuNo;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getZy() {
        return zy;
    }

    public void setZy(String zy) {
        this.zy = zy;
    }

    public String getXy() {
        return xy;
    }

    public void setXy(String xy) {
        this.xy = xy;
    }

    public String getSfqdsfxy() {
        return sfqdsfxy;
    }

    public void setSfqdsfxy(String sfqdsfxy) {
        this.sfqdsfxy = sfqdsfxy;
    }

    public String getSfsfsj() {
        return sfsfsj;
    }

    public void setSfsfsj(String sfsfsj) {
        this.sfsfsj = sfsfsj;
    }

    public String getSfhy() {
        return sfhy;
    }

    public void setSfhy(String sfhy) {
        this.sfhy = sfhy;
    }

    public String getXsfsflq() {
        return xsfsflq;
    }

    public void setXsfsflq(String xsfsflq) {
        this.xsfsflq = xsfsflq;
    }

    public JiuYeStudentInfo(String stuNo, String stuName, String zy, String xy, String sfqdsfxy, String sfsfsj, String sfhy, String xsfsflq) {
        this.stuNo = stuNo;
        this.stuName = stuName;
        this.zy = zy;
        this.xy = xy;
        this.sfqdsfxy = sfqdsfxy;
        this.sfsfsj = sfsfsj;
        this.sfhy = sfhy;
        this.xsfsflq = xsfsflq;
    }

    public JiuYeStudentInfo() {
    }
}
