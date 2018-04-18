package com.cqfour.bysj.bean;

import javax.persistence.*;

@Table(name = "t_xyb")
public class Faculty {
    /**
     * 学院编号，Integer，自增
     */
    @Id
    private Integer xybh;

    /**
     * 学院名称，Char(16)
     */
    private String xymc;

    /**
     * 学院联系人，Char(16)
     */
    private String xylxr;

    /**
     * 联系电话，Char(16)
     */
    private String lxdh;

    /**
     * 学院简介，Char(2000)
     */
    private String xyjj;

    /**
     * 获取学院编号，Integer，自增
     *
     * @return xybh - 学院编号，Integer，自增
     */
    public Integer getXybh() {
        return xybh;
    }

    /**
     * 设置学院编号，Integer，自增
     *
     * @param xybh 学院编号，Integer，自增
     */
    public void setXybh(Integer xybh) {
        this.xybh = xybh;
    }

    /**
     * 获取学院名称，Char(16)
     *
     * @return xymc - 学院名称，Char(16)
     */
    public String getXymc() {
        return xymc;
    }

    /**
     * 设置学院名称，Char(16)
     *
     * @param xymc 学院名称，Char(16)
     */
    public void setXymc(String xymc) {
        this.xymc = xymc;
    }

    /**
     * 获取学院联系人，Char(16)
     *
     * @return xylxr - 学院联系人，Char(16)
     */
    public String getXylxr() {
        return xylxr;
    }

    /**
     * 设置学院联系人，Char(16)
     *
     * @param xylxr 学院联系人，Char(16)
     */
    public void setXylxr(String xylxr) {
        this.xylxr = xylxr;
    }

    /**
     * 获取联系电话，Char(16)
     *
     * @return lxdh - 联系电话，Char(16)
     */
    public String getLxdh() {
        return lxdh;
    }

    /**
     * 设置联系电话，Char(16)
     *
     * @param lxdh 联系电话，Char(16)
     */
    public void setLxdh(String lxdh) {
        this.lxdh = lxdh;
    }

    /**
     * 获取学院简介，Char(2000)
     *
     * @return xyjj - 学院简介，Char(2000)
     */
    public String getXyjj() {
        return xyjj;
    }

    /**
     * 设置学院简介，Char(2000)
     *
     * @param xyjj 学院简介，Char(2000)
     */
    public void setXyjj(String xyjj) {
        this.xyjj = xyjj;
    }
}