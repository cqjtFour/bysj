package com.cqfour.bysj.bean;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

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
    private String fsyhzh;

    /**
     * 发送用户名称，Char(64)
     */
    @Column(name = "FSYHMC")
    private String fsyhmc;

    /**
     * 接收用户账号，Char(64)
     */
    @Column(name = "JSYHZH")
    private String jsyhzh;

    /**
     * 接收用户名称，Char(64)
     */
    @Column(name = "JSYHMC")
    private String jsyhmc;

    /**
     * 发送时间
     */
    @Column(name = "FSSJ")
    private String fssj;

    /**
     * 接收时间
     */
    @Column(name = "JSSJ")
    private String jssj;

    /**
     * 状态是否已读 ， 0表示接收用户未接收，1表示已接收
     */
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
    public String getFsyhzh() {
        return fsyhzh;
    }

    /**
     * 设置发送用户账号，Char(64)
     *
     * @param fsyhzh 发送用户账号，Char(64)
     */
    public void setFsyhzh(String fsyhzh) {
        this.fsyhzh = fsyhzh;
    }

    /**
     * 获取发送用户名称，Char(64)
     *
     * @return FSYHMC - 发送用户名称，Char(64)
     */
    public  String getFsyhmc(){ return  this.fsyhmc;}

    /**
     * 设置发送用户名称，Char(64)
     *
     * @param fsyhmc 发送用户名称，Char(64)
     */
    public void  setFsyhmc(String fsyhmc){ this.fsyhmc=fsyhmc; }

    /**
     * 获取接收用户账号，Char(64)
     *
     * @return JSYHZH - 接收用户账号，Char(64)
     */
    public String getJsyhzh() {
        return jsyhzh;
    }

    /**
     * 设置接收用户账号，Char(64)
     *
     * @param jsyhzh 接收用户账号，Char(64)
     */
    public void setJsyhzh(String jsyhzh) {
        this.jsyhzh = jsyhzh;
    }

    /**
     * 获取接收用户名称，Char(64)
     *
     * @return JSYHMC - 接收用户名称，Char(64)
     */
    public String getJsyhmc() {
        return jsyhmc;
    }

    /**
     * 设置接收用户名称，Char(64)
     *
     * @param jsyhmc 接收用户名称，Char(64)
     */
    public void setJsyhmc(String jsyhmc) {
        this.jsyhmc = jsyhmc;
    }

    /**
     * 获取发送时间
     *
     * @return FSSJ - 发送时间
     */
    public String getFssj() {
        return fssj;
    }

    /**
     * 设置发送时间
     *
     * @param fssj 发送时间
     */
    public void setFssj(String fssj) {
        this.fssj = fssj;
    }

    /**
     * 获取接收时间
     *
     * @return JSSJ - 接收时间
     */
    public String getJssj() {
        return jssj;
    }

    /**
     * 设置接收时间
     *
     * @param jssj 接收时间
     */
    public void setJssj(String jssj) {
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