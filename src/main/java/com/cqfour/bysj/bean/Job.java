package com.cqfour.bysj.bean;

import javax.persistence.*;

@Table(name = "t_zpgwb")
public class Job {
    /**
     * 招牌岗位编号，Integer，自增
     */
    @Id
    @Column(name = "ZPGWBH")
    private Integer zpgwbh;

    /**
     * 用人单位编号，Integer
     */
    @Column(name = "YRDWXXBBH")
    private Integer yrdwxxbbh;

    /**
     * 岗位名称，Char(32)
     */
    @Column(name = "SS")
    private String ss;

    /**
     * 岗位类型，Char(16)
     */
    @Column(name = "GWLX")
    private String gwlx;

    /**
     * 需求专业，Char(128)
     */
    @Column(name = "ZY")
    private String zy;

    /**
     * 工作地点，Char(64)
     */
    @Column(name = "DD")
    private String dd;

    /**
     * 工作经验要求，Char(16)
     */
    @Column(name = "GZJY")
    private String gzjy;

    /**
     * 学历要求
     */
    @Column(name = "XLYQ")
    private String xlyq;

    /**
     * 招聘数量，Char(16)
     */
    @Column(name = "ZPSL")
    private String zpsl;

    /**
     * 岗位月薪，Char(16)
     */
    @Column(name = "YX")
    private String yx;

    /**
     * 发布时间，Char(255)
     */
    @Column(name = "FBSJ")
    private String fbsj;

    /**
     * 岗位简介，Char(512)
     */
    @Column(name = "GWJJ")
    private String gwjj;

    /**
     * 获取招牌岗位编号，Integer，自增
     *
     * @return ZPGWBH - 招牌岗位编号，Integer，自增
     */
    public Integer getZpgwbh() {
        return zpgwbh;
    }

    /**
     * 设置招牌岗位编号，Integer，自增
     *
     * @param zpgwbh 招牌岗位编号，Integer，自增
     */
    public void setZpgwbh(Integer zpgwbh) {
        this.zpgwbh = zpgwbh;
    }

    /**
     * 获取用人单位编号，Integer
     *
     * @return YRDWXXBBH - 用人单位编号，Integer
     */
    public Integer getYrdwxxbbh() {
        return yrdwxxbbh;
    }

    /**
     * 设置用人单位编号，Integer
     *
     * @param yrdwxxbbh 用人单位编号，Integer
     */
    public void setYrdwxxbbh(Integer yrdwxxbbh) {
        this.yrdwxxbbh = yrdwxxbbh;
    }

    /**
     * 获取岗位名称，Char(32)
     *
     * @return SS - 岗位名称，Char(32)
     */
    public String getSs() {
        return ss;
    }

    /**
     * 设置岗位名称，Char(32)
     *
     * @param ss 岗位名称，Char(32)
     */
    public void setSs(String ss) {
        this.ss = ss;
    }

    /**
     * 获取岗位类型，Char(16)
     *
     * @return GWLX - 岗位类型，Char(16)
     */
    public String getGwlx() {
        return gwlx;
    }

    /**
     * 设置岗位类型，Char(16)
     *
     * @param gwlx 岗位类型，Char(16)
     */
    public void setGwlx(String gwlx) {
        this.gwlx = gwlx;
    }

    /**
     * 获取需求专业，Char(128)
     *
     * @return ZY - 需求专业，Char(128)
     */
    public String getZy() {
        return zy;
    }

    /**
     * 设置需求专业，Char(128)
     *
     * @param zy 需求专业，Char(128)
     */
    public void setZy(String zy) {
        this.zy = zy;
    }

    /**
     * 获取工作地点，Char(64)
     *
     * @return DD - 工作地点，Char(64)
     */
    public String getDd() {
        return dd;
    }

    /**
     * 设置工作地点，Char(64)
     *
     * @param dd 工作地点，Char(64)
     */
    public void setDd(String dd) {
        this.dd = dd;
    }

    /**
     * 获取工作经验要求，Char(16)
     *
     * @return GZJY - 工作经验要求，Char(16)
     */
    public String getGzjy() {
        return gzjy;
    }

    /**
     * 设置工作经验要求，Char(16)
     *
     * @param gzjy 工作经验要求，Char(16)
     */
    public void setGzjy(String gzjy) {
        this.gzjy = gzjy;
    }

    /**
     * 获取学历要求
     *
     * @return XLYQ - 学历要求
     */
    public String getXlyq() {
        return xlyq;
    }

    /**
     * 设置学历要求
     *
     * @param xlyq 学历要求
     */
    public void setXlyq(String xlyq) {
        this.xlyq = xlyq;
    }

    /**
     * 获取招聘数量，Char(16)
     *
     * @return ZPSL - 招聘数量，Char(16)
     */
    public String getZpsl() {
        return zpsl;
    }

    /**
     * 设置招聘数量，Char(16)
     *
     * @param zpsl 招聘数量，Char(16)
     */
    public void setZpsl(String zpsl) {
        this.zpsl = zpsl;
    }

    /**
     * 获取岗位月薪，Char(16)
     *
     * @return YX - 岗位月薪，Char(16)
     */
    public String getYx() {
        return yx;
    }

    /**
     * 设置岗位月薪，Char(16)
     *
     * @param yx 岗位月薪，Char(16)
     */
    public void setYx(String yx) {
        this.yx = yx;
    }

    /**
     * 获取发布时间，Char(255)
     *
     * @return FBSJ - 发布时间，Char(255)
     */
    public String getFbsj() {
        return fbsj;
    }

    /**
     * 设置发布时间，Char(255)
     *
     * @param fbsj 发布时间，Char(255)
     */
    public void setFbsj(String fbsj) {
        this.fbsj = fbsj;
    }

    /**
     * 获取岗位简介，Char(512)
     *
     * @return GWJJ - 岗位简介，Char(512)
     */
    public String getGwjj() {
        return gwjj;
    }

    /**
     * 设置岗位简介，Char(512)
     *
     * @param gwjj 岗位简介，Char(512)
     */
    public void setGwjj(String gwjj) {
        this.gwjj = gwjj;
    }
}