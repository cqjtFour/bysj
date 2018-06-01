package com.cqfour.bysj.bean;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "t_xlzpxxfbb")
public class JobInfo {
    /**
     * 校内招聘信息发布表编号
     */
    @Id
    @Column(name = "XNZPXXFBBBH")
    private Integer xnzpxxfbbbh;

    /**
     * 主键，自增
     */
    @Column(name = "ZGBH")
    private Integer zgbh;

    /**
     * 校内招聘内容标题
     */
    @Column(name = "XNZPNRBT")
    private String xnzpnrbt;

    /**
     * 招聘信息发布时间
     */
    @Column(name = "ZPXXFBSJ")
    private String zpxxfbsj;

    @Column(name = "ZPLX")
    private String zplx;
    /**
     * 获取校内招聘信息发布表编号
     *
     * @return XNZPXXFBBBH - 校内招聘信息发布表编号
     */
    public Integer getXnzpxxfbbbh() {
        return xnzpxxfbbbh;
    }

    /**
     * 设置校内招聘信息发布表编号
     *
     * @param xnzpxxfbbbh 校内招聘信息发布表编号
     */
    public void setXnzpxxfbbbh(Integer xnzpxxfbbbh) {
        this.xnzpxxfbbbh = xnzpxxfbbbh;
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
     * 获取校内招聘内容标题
     *
     * @return XNZPNRBT - 校内招聘内容标题
     */
    public String getXnzpnrbt() {
        return xnzpnrbt;
    }

    /**
     * 设置校内招聘内容标题
     *
     * @param xnzpnrbt 校内招聘内容标题
     */
    public void setXnzpnrbt(String xnzpnrbt) {
        this.xnzpnrbt = xnzpnrbt;
    }

    /**
     * 获取招聘信息发布时间
     *
     * @return ZPXXFBSJ - 招聘信息发布时间
     */
    public String getZpxxfbsj() {
        return zpxxfbsj;
    }

    /**
     * 设置招聘信息发布时间
     *
     * @param zpxxfbsj 招聘信息发布时间
     */
    public void setZpxxfbsj(String zpxxfbsj) {
        this.zpxxfbsj = zpxxfbsj;
    }
}