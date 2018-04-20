package com.cqfour.bysj.bean;

import javax.persistence.*;

@Table(name = "t_zpgwb")
public class Job {
    /**
     * 招牌岗位编号，Integer，自增
     */
    @Id
    private Integer zpgwbh;

    /**
     * 招牌信息编号，Integer，自增
     */
    private Integer zpxxbh;

    /**
     * 岗位名称，Char(32)
     */
    private String gwmc;

    /**
     * 岗位类型，Char(16)
     */
    private String gwlx;

    /**
     * 需求专业，Char(64)
     */
    private String xqzy;

    /**
     * 工作地点，Char(32)
     */
    private String gzdd;

    /**
     * 工作经验要求，Char(16)
     */
    private String gzjy;

    /**
     * 招牌数量，Integer
     */
    private Integer zpsl;

    /**
     * 岗位月薪，Integer
     */
    private Integer gwyx;

    /**
     * 岗位简介，Char(512)
     */
    private String gwjj;

    /**
     * 获取招牌岗位编号，Integer，自增
     *
     * @return zpgwbh - 招牌岗位编号，Integer，自增
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
     * 获取招牌信息编号，Integer，自增
     *
     * @return zpxxbh - 招牌信息编号，Integer，自增
     */
    public Integer getZpxxbh() {
        return zpxxbh;
    }

    /**
     * 设置招牌信息编号，Integer，自增
     *
     * @param zpxxbh 招牌信息编号，Integer，自增
     */
    public void setZpxxbh(Integer zpxxbh) {
        this.zpxxbh = zpxxbh;
    }

    /**
     * 获取岗位名称，Char(32)
     *
     * @return gwmc - 岗位名称，Char(32)
     */
    public String getGwmc() {
        return gwmc;
    }

    /**
     * 设置岗位名称，Char(32)
     *
     * @param gwmc 岗位名称，Char(32)
     */
    public void setGwmc(String gwmc) {
        this.gwmc = gwmc;
    }

    /**
     * 获取岗位类型，Char(16)
     *
     * @return gwlx - 岗位类型，Char(16)
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
     * 获取需求专业，Char(64)
     *
     * @return xqzy - 需求专业，Char(64)
     */
    public String getXqzy() {
        return xqzy;
    }

    /**
     * 设置需求专业，Char(64)
     *
     * @param xqzy 需求专业，Char(64)
     */
    public void setXqzy(String xqzy) {
        this.xqzy = xqzy;
    }

    /**
     * 获取工作地点，Char(32)
     *
     * @return gzdd - 工作地点，Char(32)
     */
    public String getGzdd() {
        return gzdd;
    }

    /**
     * 设置工作地点，Char(32)
     *
     * @param gzdd 工作地点，Char(32)
     */
    public void setGzdd(String gzdd) {
        this.gzdd = gzdd;
    }

    /**
     * 获取工作经验要求，Char(16)
     *
     * @return gzjy - 工作经验要求，Char(16)
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
     * 获取招牌数量，Integer
     *
     * @return zpsl - 招牌数量，Integer
     */
    public Integer getZpsl() {
        return zpsl;
    }

    /**
     * 设置招牌数量，Integer
     *
     * @param zpsl 招牌数量，Integer
     */
    public void setZpsl(Integer zpsl) {
        this.zpsl = zpsl;
    }

    /**
     * 获取岗位月薪，Integer
     *
     * @return gwyx - 岗位月薪，Integer
     */
    public Integer getGwyx() {
        return gwyx;
    }

    /**
     * 设置岗位月薪，Integer
     *
     * @param gwyx 岗位月薪，Integer
     */
    public void setGwyx(Integer gwyx) {
        this.gwyx = gwyx;
    }

    /**
     * 获取岗位简介，Char(512)
     *
     * @return gwjj - 岗位简介，Char(512)
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