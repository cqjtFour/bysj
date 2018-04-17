package com.cqfour.bysj.bean;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_yp")
public class Apply {
    /**
     * 应聘表编号，Integer，自增
     */
    @Id
    private Integer ypbbh;

    /**
     * 招牌岗位编号，Integer，自增
     */
    private Integer zpgwbh;

    /**
     * 学号，Char(16)
     */
    private String xh;

    /**
     * 应聘时间，Date
     */
    private Date ypsj;

    /**
     * 获取应聘表编号，Integer，自增
     *
     * @return ypbbh - 应聘表编号，Integer，自增
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
     * 获取学号，Char(16)
     *
     * @return xh - 学号，Char(16)
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
     * 获取应聘时间，Date
     *
     * @return ypsj - 应聘时间，Date
     */
    public Date getYpsj() {
        return ypsj;
    }

    /**
     * 设置应聘时间，Date
     *
     * @param ypsj 应聘时间，Date
     */
    public void setYpsj(Date ypsj) {
        this.ypsj = ypsj;
    }
}