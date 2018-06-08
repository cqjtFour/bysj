package com.cqfour.bysj.bean;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Table(name = "t_qyb")
public class Sign {
    /**
     * 签约表编号，Integer，自增
     */
    @Id
    @Column(name = "QYBBH")
    private Integer qybbh;

    /**
     * 用人单位编号，Integer
     */
    @Column(name = "YRDWXXBBH")
    private Integer yrdwxxbbh;

    /**
     * 学号，Char(16)
     */
    @Column(name = "XH")
    private String xh;

    /**
     * 是否签订三方，Integer，0表示未签订，1表示签订
     */
    @Column(name = "SFQDSF")
    private Short sfqdsf;

    /**
     * 签订时间
     */
    @Column(name = "QDSJ")
    private String qdsj;

    /**
     * 三方是否上交就业处，Integer，0表示未上交，1表示上交
     */
    @Column(name = "SFSFSJJYC")
    private Short sfsfsjjyc;

    /**
     * 上交时间
     */
    @Column(name = "SJSJ")
    private String sjsj;

    /**
     * 是否已毁约，Integer，0表示未毁约，1表示毁约
     */
    @Column(name = "SFYHY")
    private Short sfyhy;

    /**
     * 毁约时间
     */
    @Column(name = "HYSJ")
    private String hysj;

    /**
     * 新三方是否领取，Integer，0表否，1表是
     */
    @Column(name = "XSFSFLQ")
    private Short xsfsflq;

    /**
     * 领取时间
     */
    @Column(name = "LQSJ")
    private String lqsj;

    @Transient
    private Employers employers;

    @Transient
    private Student student;

    /**
     * 获取签约表编号，Integer，自增
     *
     * @return QYBBH - 签约表编号，Integer，自增
     */
    public Integer getQybbh() {
        return qybbh;
    }

    /**
     * 设置签约表编号，Integer，自增
     *
     * @param qybbh 签约表编号，Integer，自增
     */
    public void setQybbh(Integer qybbh) {
        this.qybbh = qybbh;
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
     * 获取是否签订三方，Integer，0表示未签订，1表示签订
     *
     * @return SFQDSF - 是否签订三方，Integer，0表示未签订，1表示签订
     */
    public Short getSfqdsf() {
        return sfqdsf;
    }

    /**
     * 设置是否签订三方，Integer，0表示未签订，1表示签订
     *
     * @param sfqdsf 是否签订三方，Integer，0表示未签订，1表示签订
     */
    public void setSfqdsf(Short sfqdsf) {
        this.sfqdsf = sfqdsf;
    }

    /**
     * 获取签订时间
     *
     * @return QDSJ - 签订时间
     */
    public String getQdsj() {
        return qdsj;
    }

    /**
     * 设置签订时间
     *
     * @param qdsj 签订时间
     */
    public void setQdsj(String qdsj) {
        this.qdsj = qdsj;
    }

    /**
     * 获取三方是否上交就业处，Integer，0表示未上交，1表示上交
     *
     * @return SFSFSJJYC - 三方是否上交就业处，Integer，0表示未上交，1表示上交
     */
    public Short getSfsfsjjyc() {
        return sfsfsjjyc;
    }

    /**
     * 设置三方是否上交就业处，Integer，0表示未上交，1表示上交
     *
     * @param sfsfsjjyc 三方是否上交就业处，Integer，0表示未上交，1表示上交
     */
    public void setSfsfsjjyc(Short sfsfsjjyc) {
        this.sfsfsjjyc = sfsfsjjyc;
    }

    /**
     * 获取上交时间
     *
     * @return SJSJ - 上交时间
     */
    public String getSjsj() {
        return sjsj;
    }

    /**
     * 设置上交时间
     *
     * @param sjsj 上交时间
     */
    public void setSjsj(String sjsj) {
        this.sjsj = sjsj;
    }

    /**
     * 获取是否已毁约，Integer，0表示未毁约，1表示毁约
     *
     * @return SFYHY - 是否已毁约，Integer，0表示未毁约，1表示毁约
     */
    public Short getSfyhy() {
        return sfyhy;
    }

    /**
     * 设置是否已毁约，Integer，0表示未毁约，1表示毁约
     *
     * @param sfyhy 是否已毁约，Integer，0表示未毁约，1表示毁约
     */
    public void setSfyhy(Short sfyhy) {
        this.sfyhy = sfyhy;
    }

    /**
     * 获取毁约时间
     *
     * @return HYSJ - 毁约时间
     */
    public String getHysj() {
        return hysj;
    }

    /**
     * 设置毁约时间
     *
     * @param hysj 毁约时间
     */
    public void setHysj(String hysj) {
        this.hysj = hysj;
    }

    /**
     * 获取新三方是否领取，Integer，0表否，1表是
     *
     * @return XSFSFLQ - 新三方是否领取，Integer，0表否，1表是
     */
    public Short getXsfsflq() {
        return xsfsflq;
    }

    /**
     * 设置新三方是否领取，Integer，0表否，1表是
     *
     * @param xsfsflq 新三方是否领取，Integer，0表否，1表是
     */
    public void setXsfsflq(Short xsfsflq) {
        this.xsfsflq = xsfsflq;
    }

    /**
     * 获取领取时间
     *
     * @return LQSJ - 领取时间
     */
    public String getLqsj() {
        return lqsj;
    }

    /**
     * 设置领取时间
     *
     * @param lqsj 领取时间
     */
    public void setLqsj(String lqsj) {
        this.lqsj = lqsj;
    }

    public Employers getEmployers() {
        return employers;
    }

    public void setEmployers(Employers employers) {
        this.employers = employers;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    @Override
    public String toString() {
        return "Sign{" +
                "qybbh=" + qybbh +
                ", yrdwxxbbh=" + yrdwxxbbh +
                ", xh='" + xh + '\'' +
                ", sfqdsf=" + sfqdsf +
                ", qdsj='" + qdsj + '\'' +
                ", sfsfsjjyc=" + sfsfsjjyc +
                ", sjsj='" + sjsj + '\'' +
                ", sfyhy=" + sfyhy +
                ", hysj='" + hysj + '\'' +
                ", xsfsflq=" + xsfsflq +
                ", lqsj='" + lqsj + '\'' +
                '}';
    }
}