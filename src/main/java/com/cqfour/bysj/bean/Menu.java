package com.cqfour.bysj.bean;

import javax.persistence.*;

@Table(name = "t_cdb")
public class Menu {
    /**
     * 菜单编号，Integer，自增
     */
    @Id
    private Integer cdbh;

    /**
     * 菜单名称，Char(32)
     */
    private String cdmc;

    /**
     * 菜单url,Char(255)
     */
    private String cdurl;

    /**
     * 菜单等级，Integer
     */
    private Integer cddj;

    /**
     * 父级菜单编号，Integer
     */
    private Integer fjcdbh;

    /**
     * 获取菜单编号，Integer，自增
     *
     * @return cdbh - 菜单编号，Integer，自增
     */
    public Integer getCdbh() {
        return cdbh;
    }

    /**
     * 设置菜单编号，Integer，自增
     *
     * @param cdbh 菜单编号，Integer，自增
     */
    public void setCdbh(Integer cdbh) {
        this.cdbh = cdbh;
    }

    /**
     * 获取菜单名称，Char(32)
     *
     * @return cdmc - 菜单名称，Char(32)
     */
    public String getCdmc() {
        return cdmc;
    }

    /**
     * 设置菜单名称，Char(32)
     *
     * @param cdmc 菜单名称，Char(32)
     */
    public void setCdmc(String cdmc) {
        this.cdmc = cdmc;
    }

    /**
     * 获取菜单url,Char(255)
     *
     * @return cdurl - 菜单url,Char(255)
     */
    public String getCdurl() {
        return cdurl;
    }

    /**
     * 设置菜单url,Char(255)
     *
     * @param cdurl 菜单url,Char(255)
     */
    public void setCdurl(String cdurl) {
        this.cdurl = cdurl;
    }

    /**
     * 获取菜单等级，Integer
     *
     * @return cddj - 菜单等级，Integer
     */
    public Integer getCddj() {
        return cddj;
    }

    /**
     * 设置菜单等级，Integer
     *
     * @param cddj 菜单等级，Integer
     */
    public void setCddj(Integer cddj) {
        this.cddj = cddj;
    }

    /**
     * 获取父级菜单编号，Integer
     *
     * @return fjcdbh - 父级菜单编号，Integer
     */
    public Integer getFjcdbh() {
        return fjcdbh;
    }

    /**
     * 设置父级菜单编号，Integer
     *
     * @param fjcdbh 父级菜单编号，Integer
     */
    public void setFjcdbh(Integer fjcdbh) {
        this.fjcdbh = fjcdbh;
    }
}