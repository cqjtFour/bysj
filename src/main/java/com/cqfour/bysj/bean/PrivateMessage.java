package com.cqfour.bysj.bean;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_znsxb")
public class PrivateMessage {
    /**
     * 自增id，Integer
     */
    @Id
    @Column(name = "ZNSXBH")
    private Integer znsxbh;

    /**
     * 发送用户账号，Char(64)
     */
    @Column(name = "FSYHZH")
    private Integer fsyhzh;

    /**
     * 接收用户账号，Char(64)
     */
    @Column(name = "JSYHZH")
    private Integer jsyhzh;

    /**
     * 发送时间，DateTime
     */
    @Column(name = "FSSJ")
    private Integer fssj;

    /**
     * 接收时间，DateTime
     */
    @Column(name = "JSSJ")
    private Date jssj;

    @Column(name = "ZT")
    private Short zt;

    /**
     * 消息内容，Char(1024)
     */
    @Column(name = "XXNR")
    private String xxnr;

    /**
     * 获取自增id，Integer
     *
     * @return ZNSXBH - 自增id，Integer
     */
    public Integer getZnsxbh() {
        return znsxbh;
    }

    /**
     * 设置自增id，Integer
     *
     * @param znsxbh 自增id，Integer
     */
    public void setZnsxbh(Integer znsxbh) {
        this.znsxbh = znsxbh;
    }

    /**
     * 获取发送用户账号，Char(64)
     *
     * @return FSYHZH - 发送用户账号，Char(64)
     */
    public Integer getFsyhzh() {
        return fsyhzh;
    }

    /**
     * 设置发送用户账号，Char(64)
     *
     * @param fsyhzh 发送用户账号，Char(64)
     */
    public void setFsyhzh(Integer fsyhzh) {
        this.fsyhzh = fsyhzh;
    }

    /**
     * 获取接收用户账号，Char(64)
     *
     * @return JSYHZH - 接收用户账号，Char(64)
     */
    public Integer getJsyhzh() {
        return jsyhzh;
    }

    /**
     * 设置接收用户账号，Char(64)
     *
     * @param jsyhzh 接收用户账号，Char(64)
     */
    public void setJsyhzh(Integer jsyhzh) {
        this.jsyhzh = jsyhzh;
    }

    /**
     * 获取发送时间，DateTime
     *
     * @return FSSJ - 发送时间，DateTime
     */
    public Integer getFssj() {
        return fssj;
    }

    /**
     * 设置发送时间，DateTime
     *
     * @param fssj 发送时间，DateTime
     */
    public void setFssj(Integer fssj) {
        this.fssj = fssj;
    }

    /**
     * 获取接收时间，DateTime
     *
     * @return JSSJ - 接收时间，DateTime
     */
    public Date getJssj() {
        return jssj;
    }

    /**
     * 设置接收时间，DateTime
     *
     * @param jssj 接收时间，DateTime
     */
    public void setJssj(Date jssj) {
        this.jssj = jssj;
    }

    /**
     * @return ZT
     */
    public Short getZt() {
        return zt;
    }

    /**
     * @param zt
     */
    public void setZt(Short zt) {
        this.zt = zt;
    }

    /**
     * 获取消息内容，Char(1024)
     *
     * @return XXNR - 消息内容，Char(1024)
     */
    public String getXxnr() {
        return xxnr;
    }

    /**
     * 设置消息内容，Char(1024)
     *
     * @param xxnr 消息内容，Char(1024)
     */
    public void setXxnr(String xxnr) {
        this.xxnr = xxnr;
    }
}