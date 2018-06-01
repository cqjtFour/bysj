package com.cqfour.bysj.bean;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "t_xnzpgx")
public class ReserveInfo {

    @Id
    @Column(name = "XNZPGSBBH")
    private Integer xnzpgsbbh;

    @Column(name = "XNZPXXFBBBH")
    private Integer xnzpxxfbbbh;

    @Column(name = "YRDWXXBBH")
    private Integer yrdwxxbbh;

    @Column(name = "ZPDD")
    private String zpdd;

    @Column(name = "ZPSJ")
    private String zpsj;

    @Column(name = "ZPZY")
    private String zpzy;

    public Integer getXnzpgsbbh() {
        return xnzpgsbbh;
    }

    public void setXnzpgsbbh(Integer xnzpgsbbh) {
        this.xnzpgsbbh = xnzpgsbbh;
    }

    public Integer getXnzpxxfbbbh() {
        return xnzpxxfbbbh;
    }

    public void setXnzpxxfbbbh(Integer xnzpxxfbbbh) {
        this.xnzpxxfbbbh = xnzpxxfbbbh;
    }

    public Integer getYrdwxxbbh() {
        return yrdwxxbbh;
    }

    public void setYrdwxxbbh(Integer yrdwxxbbh) {
        this.yrdwxxbbh = yrdwxxbbh;
    }

    public String getZpdd() {
        return zpdd;
    }

    public void setZpdd(String zpdd) {
        this.zpdd = zpdd;
    }

    public String getZpsj() {
        return zpsj;
    }

    public void setZpsj(String zpsj) {
        this.zpsj = zpsj;
    }

    public String getZpzy() {
        return zpzy;
    }

    public void setZpzy(String zpzy) {
        this.zpzy = zpzy;
    }
}