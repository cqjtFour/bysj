package com.cqfour.bysj.bean;

import javax.persistence.*;

@Table(name = "t_yp")
public class Apply {
    /**
     * 应聘表编号，Integer，自增
     */
    @Id
    @Column(name = "YPBBH")
    private Integer ypbbh;

    /**
     * 招牌岗位编号，Integer，自增
     */
    @Column(name = "ZPGWBH")
    private Integer zpgwbh;

    /**
     * 学号，Char(16)
     */
    @Column(name = "XH")
    private String xh;

    /**
     * 应聘时间
     */
    @Column(name = "YPSJ")
    private String ypsj;


    /**
     * 查看状态
     */
    @Column(name="CKZT")
    private Short ckzt;

    public Short getCkzt() {
        return ckzt;
    }

    public void setCkzt(Short ckzt) {
        this.ckzt = ckzt;
    }

    /**
     * 获取应聘表编号，Integer，自增
     *
     * @return YPBBH - 应聘表编号，Integer，自增
     */
    public Integer getYpbbh() {
        return ypbbh;
    }

    /**
     * 设置应聘表编号，Integer，自增
     *
     * @param ypbbh 应聘表编号，Integer，自增
     */
    public void setYpbbh(Integer ypbbh) {
        this.ypbbh = ypbbh;
    }

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
     * 获取学号，Char(16)
     *
     * @return XH - 学号，Char(16)
     */
    public String getXh() {
        return xh;
    }

    /**
     * 设置学号，Char(16)
     *
     * @param xh 学号，Char(16)
     */
    public void setXh(String xh) {
        this.xh = xh;
    }

    /**
     * 获取应聘时间
     *
     * @return YPSJ - 应聘时间
     */
    public String getYpsj() {
        return ypsj;
    }

    /**
     * 设置应聘时间
     *
     * @param ypsj 应聘时间
     */
    public void setYpsj(String ypsj) {
        this.ypsj = ypsj;
    }
}