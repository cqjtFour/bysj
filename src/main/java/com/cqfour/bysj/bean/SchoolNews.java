package com.cqfour.bysj.bean;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_xxxxfbb")
public class SchoolNews {
    /**
     * 学校信息发布表编号，Integer，自增
     */
    @Id
    private Integer fbbbh;

    /**
     * 职工号，Char(16)
     */
    private String zgh;

    /**
     * 信息类型，Char(32)
     */
    private String xxlx;

    /**
     * 信息标题，Char(128)
     */
    private String xxbt;

    /**
     * 发布时间，Date
     */
    private Date xxfbsj;

    /**
     * 信息正文，Char(4096)
     */
    private String xxzw;

    /**
     * 获取学校信息发布表编号，Integer，自增
     *
     * @return fbbbh - 学校信息发布表编号，Integer，自增
     */
    public Integer getFbbbh() {
        return fbbbh;
    }

    /**
     * 设置学校信息发布表编号，Integer，自增
     *
     * @param fbbbh 学校信息发布表编号，Integer，自增
     */
    public void setFbbbh(Integer fbbbh) {
        this.fbbbh = fbbbh;
    }

    /**
     * 获取职工号，Char(16)
     *
     * @return zgh - 职工号，Char(16)
     */
    public String getZgh() {
        return zgh;
    }

    /**
     * 设置职工号，Char(16)
     *
     * @param zgh 职工号，Char(16)
     */
    public void setZgh(String zgh) {
        this.zgh = zgh;
    }

    /**
     * 获取信息类型，Char(32)
     *
     * @return xxlx - 信息类型，Char(32)
     */
    public String getXxlx() {
        return xxlx;
    }

    /**
     * 设置信息类型，Char(32)
     *
     * @param xxlx 信息类型，Char(32)
     */
    public void setXxlx(String xxlx) {
        this.xxlx = xxlx;
    }

    /**
     * 获取信息标题，Char(128)
     *
     * @return xxbt - 信息标题，Char(128)
     */
    public String getXxbt() {
        return xxbt;
    }

    /**
     * 设置信息标题，Char(128)
     *
     * @param xxbt 信息标题，Char(128)
     */
    public void setXxbt(String xxbt) {
        this.xxbt = xxbt;
    }

    /**
     * 获取发布时间，Date
     *
     * @return xxfbsj - 发布时间，Date
     */
    public Date getXxfbsj() {
        return xxfbsj;
    }

    /**
     * 设置发布时间，Date
     *
     * @param xxfbsj 发布时间，Date
     */
    public void setXxfbsj(Date xxfbsj) {
        this.xxfbsj = xxfbsj;
    }

    /**
     * 获取信息正文，Char(4096)
     *
     * @return xxzw - 信息正文，Char(4096)
     */
    public String getXxzw() {
        return xxzw;
    }

    /**
     * 设置信息正文，Char(4096)
     *
     * @param xxzw 信息正文，Char(4096)
     */
    public void setXxzw(String xxzw) {
        this.xxzw = xxzw;
    }
}