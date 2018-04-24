package com.cqfour.bysj.bean;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_zpxxb")
public class JobInfo {
    /**
     * 招牌信息编号，Integer，自增
     */
    @Id
    @Column(name = "ZPXXBH")
    private Integer zpxxbh;

    /**
     * 用人单位编号，Integer
     */
    @Column(name = "YRDWXXBBH")
    private Integer yrdwxxbbh;

    /**
     * 招聘标题，Char(64)
     */
    @Column(name = "ZPBT")
    private String zpbt;

    /**
     * 发布时间，Date
     */
    @Column(name = "FBSJ")
    private Date fbsj;

    /**
     * 正文内容，Char(500)
     */
    @Column(name = "ZWNR")
    private String zwnr;

    /**
     * 获取招牌信息编号，Integer，自增
     *
     * @return ZPXXBH - 招牌信息编号，Integer，自增
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
     * 获取招聘标题，Char(64)
     *
     * @return ZPBT - 招聘标题，Char(64)
     */
    public String getZpbt() {
        return zpbt;
    }

    /**
     * 设置招聘标题，Char(64)
     *
     * @param zpbt 招聘标题，Char(64)
     */
    public void setZpbt(String zpbt) {
        this.zpbt = zpbt;
    }

    /**
     * 获取发布时间，Date
     *
     * @return FBSJ - 发布时间，Date
     */
    public Date getFbsj() {
        return fbsj;
    }

    /**
     * 设置发布时间，Date
     *
     * @param fbsj 发布时间，Date
     */
    public void setFbsj(Date fbsj) {
        this.fbsj = fbsj;
    }

    /**
     * 获取正文内容，Char(500)
     *
     * @return ZWNR - 正文内容，Char(500)
     */
    public String getZwnr() {
        return zwnr;
    }

    /**
     * 设置正文内容，Char(500)
     *
     * @param zwnr 正文内容，Char(500)
     */
    public void setZwnr(String zwnr) {
        this.zwnr = zwnr;
    }
}