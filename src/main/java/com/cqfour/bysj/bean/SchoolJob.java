package com.cqfour.bysj.bean;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_xyzbyyb")
public class SchoolJob {
    /**
     * 自增id，Integer
     */
    @Id
    @Column(name = "XYZPYYBBH")
    private Integer xyzpyybbh;

    /**
     * 用人单位编号，Integer
     */
    @Column(name = "YRDWXXBBH")
    private Integer yrdwxxbbh;

    /**
     * 主键，自增
     */
    @Column(name = "ZGBH")
    private Integer zgbh;

    /**
     * 校园招聘单位负责人
     */
    @Column(name = "XYZPDWFZR")
    private String xyzpdwfzr;

    /**
     * 负责人电话
     */
    @Column(name = "FZRDH")
    private String fzrdh;

    /**
     * 负责人邮箱
     */
    @Column(name = "FZRYX")
    private String fzryx;

    /**
     * 预约日期
     */
    @Column(name = "YRRQ")
    private String yrrq;

    /**
     * 预约时间
     */
    @Column(name = "YYSJ")
    private String yysj;

    /**
     * 预约提交到系统的时间，DataTime
     */
    @Column(name = "YYTJSJ")
    private String yytjsj;

    /**
     * 状态，Integer,0表未答复，1表已答复
     */
    @Column(name = "YYZT")
    private Short yyzt;

    /**
     * 答复时间，StringTime
     */
    @Column(name = "DFSJ")
    private String dfsj;

    /**
     * 答复内容，Char(255)
     */
    @Column(name = "DFNR")
    private String dfnr;

    /**
     * 用人单位提交预约的内容，Char(1024)
     */
    @Column(name = "YYNR")
    private String yynr;

    /**
     * 获取自增id，Integer
     *
     * @return XYZPYYBBH - 自增id，Integer
     */
    public Integer getXyzpyybbh() {
        return xyzpyybbh;
    }

    /**
     * 设置自增id，Integer
     *
     * @param xyzpyybbh 自增id，Integer
     */
    public void setXyzpyybbh(Integer xyzpyybbh) {
        this.xyzpyybbh = xyzpyybbh;
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
     * 获取主键，自增
     *
     * @return ZGBH - 主键，自增
     */
    public Integer getZgbh() {
        return zgbh;
    }

    /**
     * 设置主键，自增
     *
     * @param zgbh 主键，自增
     */
    public void setZgbh(Integer zgbh) {
        this.zgbh = zgbh;
    }

    /**
     * 获取校园招聘单位负责人
     *
     * @return XYZPDWFZR - 校园招聘单位负责人
     */
    public String getXyzpdwfzr() {
        return xyzpdwfzr;
    }

    /**
     * 设置校园招聘单位负责人
     *
     * @param xyzpdwfzr 校园招聘单位负责人
     */
    public void setXyzpdwfzr(String xyzpdwfzr) {
        this.xyzpdwfzr = xyzpdwfzr;
    }

    /**
     * 获取负责人电话
     *
     * @return FZRDH - 负责人电话
     */
    public String getFzrdh() {
        return fzrdh;
    }

    /**
     * 设置负责人电话
     *
     * @param fzrdh 负责人电话
     */
    public void setFzrdh(String fzrdh) {
        this.fzrdh = fzrdh;
    }

    /**
     * 获取负责人邮箱
     *
     * @return FZRYX - 负责人邮箱
     */
    public String getFzryx() {
        return fzryx;
    }

    /**
     * 设置负责人邮箱
     *
     * @param fzryx 负责人邮箱
     */
    public void setFzryx(String fzryx) {
        this.fzryx = fzryx;
    }

    /**
     * 获取预约日期
     *
     * @return YRRQ - 预约日期
     */
    public String getYrrq() {
        return yrrq;
    }

    /**
     * 设置预约日期
     *
     * @param yrrq 预约日期
     */
    public void setYrrq(String yrrq) {
        this.yrrq = yrrq;
    }

    /**
     * 获取预约时间
     *
     * @return YYSJ - 预约时间
     */
    public String getYysj() {
        return yysj;
    }

    /**
     * 设置预约时间
     *
     * @param yysj 预约时间
     */
    public void setYysj(String yysj) {
        this.yysj = yysj;
    }

    /**
     * 获取预约提交到系统的时间，DataTime
     *
     * @return YYTJSJ - 预约提交到系统的时间，DataTime
     */
    public String getYytjsj() {
        return yytjsj;
    }

    /**
     * 设置预约提交到系统的时间，DataTime
     *
     * @param yytjsj 预约提交到系统的时间，DataTime
     */
    public void setYytjsj(String yytjsj) {
        this.yytjsj = yytjsj;
    }

    /**
     * 获取状态，Integer,0表未答复，1表已答复
     *
     * @return YYZT - 状态，Integer,0表未答复，1表已答复
     */
    public Short getYyzt() {
        return yyzt;
    }

    /**
     * 设置状态，Integer,0表未答复，1表已答复
     *
     * @param yyzt 状态，Integer,0表未答复，1表已答复
     */
    public void setYyzt(Short yyzt) {
        this.yyzt = yyzt;
    }

    /**
     * 获取答复时间，StringTime
     *
     * @return DFSJ - 答复时间，StringTime
     */
    public String getDfsj() {
        return dfsj;
    }

    /**
     * 设置答复时间，StringTime
     *
     * @param dfsj 答复时间，StringTime
     */
    public void setDfsj(String dfsj) {
        this.dfsj = dfsj;
    }

    /**
     * 获取答复内容，Char(255)
     *
     * @return DFNR - 答复内容，Char(255)
     */
    public String getDfnr() {
        return dfnr;
    }

    /**
     * 设置答复内容，Char(255)
     *
     * @param dfnr 答复内容，Char(255)
     */
    public void setDfnr(String dfnr) {
        this.dfnr = dfnr;
    }

    /**
     * 获取用人单位提交预约的内容，Char(1024)
     *
     * @return YYNR - 用人单位提交预约的内容，Char(1024)
     */
    public String getYynr() {
        return yynr;
    }

    /**
     * 设置用人单位提交预约的内容，Char(1024)
     *
     * @param yynr 用人单位提交预约的内容，Char(1024)
     */
    public void setYynr(String yynr) {
        this.yynr = yynr;
    }
}