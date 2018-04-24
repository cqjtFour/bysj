package com.cqfour.bysj.bean;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_yrdwxxshb")
public class EmployersInfoCheck {
    /**
     * 审核表编号，Integer，自增
     */
    @Id
    @Column(name = "YRDWXXSHBBH")
    private Integer yrdwxxshbbh;

    /**
     * 职工号，Char(16)
     */
    @Column(name = "SHR")
    private String shr;

    /**
     * 用人单位编号，Integer
     */
    @Column(name = "YRDWXXBBH")
    private Integer yrdwxxbbh;

    /**
     * 提交时间，Date
     */
    @Column(name = "TJSJ")
    private Date tjsj;

    /**
     * 审核时间，Date
     */
    @Column(name = "SHSJ")
    private Date shsj;

    /**
     * 是否通过审核，Integer，0表是，1表否
     */
    @Column(name = "SFTGSH")
    private Short sftgsh;

    /**
     * 审核意见，Char(16)
     */
    @Column(name = "SHYJ")
    private String shyj;

    /**
     * 获取审核表编号，Integer，自增
     *
     * @return YRDWXXSHBBH - 审核表编号，Integer，自增
     */
    public Integer getYrdwxxshbbh() {
        return yrdwxxshbbh;
    }

    /**
     * 设置审核表编号，Integer，自增
     *
     * @param yrdwxxshbbh 审核表编号，Integer，自增
     */
    public void setYrdwxxshbbh(Integer yrdwxxshbbh) {
        this.yrdwxxshbbh = yrdwxxshbbh;
    }

    /**
     * 获取职工号，Char(16)
     *
     * @return SHR - 职工号，Char(16)
     */
    public String getShr() {
        return shr;
    }

    /**
     * 设置职工号，Char(16)
     *
     * @param shr 职工号，Char(16)
     */
    public void setShr(String shr) {
        this.shr = shr;
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
     * 获取提交时间，Date
     *
     * @return TJSJ - 提交时间，Date
     */
    public Date getTjsj() {
        return tjsj;
    }

    /**
     * 设置提交时间，Date
     *
     * @param tjsj 提交时间，Date
     */
    public void setTjsj(Date tjsj) {
        this.tjsj = tjsj;
    }

    /**
     * 获取审核时间，Date
     *
     * @return SHSJ - 审核时间，Date
     */
    public Date getShsj() {
        return shsj;
    }

    /**
     * 设置审核时间，Date
     *
     * @param shsj 审核时间，Date
     */
    public void setShsj(Date shsj) {
        this.shsj = shsj;
    }

    /**
     * 获取是否通过审核，Integer，0表是，1表否
     *
     * @return SFTGSH - 是否通过审核，Integer，0表是，1表否
     */
    public Short getSftgsh() {
        return sftgsh;
    }

    /**
     * 设置是否通过审核，Integer，0表是，1表否
     *
     * @param sftgsh 是否通过审核，Integer，0表是，1表否
     */
    public void setSftgsh(Short sftgsh) {
        this.sftgsh = sftgsh;
    }

    /**
     * 获取审核意见，Char(16)
     *
     * @return SHYJ - 审核意见，Char(16)
     */
    public String getShyj() {
        return shyj;
    }

    /**
     * 设置审核意见，Char(16)
     *
     * @param shyj 审核意见，Char(16)
     */
    public void setShyj(String shyj) {
        this.shyj = shyj;
    }
}