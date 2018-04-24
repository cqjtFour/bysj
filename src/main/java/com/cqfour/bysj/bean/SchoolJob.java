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
     * 职工号，Char(16)
     */
    @Column(name = "DFR")
    private String dfr;

    /**
     * 预约提交到系统的时间，DataTime
     */
    @Column(name = "YYTJSJ")
    private Date yytjsj;

    /**
     * 状态，Integer,0表未答复，1表已答复
     */
    @Column(name = "YYZT")
    private Short yyzt;

    /**
     * 答复时间，DateTime
     */
    @Column(name = "DFSJ")
    private Date dfsj;

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
     * 获取职工号，Char(16)
     *
     * @return DFR - 职工号，Char(16)
     */
    public String getDfr() {
        return dfr;
    }

    /**
     * 设置职工号，Char(16)
     *
     * @param dfr 职工号，Char(16)
     */
    public void setDfr(String dfr) {
        this.dfr = dfr;
    }

    /**
     * 获取预约提交到系统的时间，DataTime
     *
     * @return YYTJSJ - 预约提交到系统的时间，DataTime
     */
    public Date getYytjsj() {
        return yytjsj;
    }

    /**
     * 设置预约提交到系统的时间，DataTime
     *
     * @param yytjsj 预约提交到系统的时间，DataTime
     */
    public void setYytjsj(Date yytjsj) {
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
     * 获取答复时间，DateTime
     *
     * @return DFSJ - 答复时间，DateTime
     */
    public Date getDfsj() {
        return dfsj;
    }

    /**
     * 设置答复时间，DateTime
     *
     * @param dfsj 答复时间，DateTime
     */
    public void setDfsj(Date dfsj) {
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