package com.cqfour.bysj.bean;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "t_yhb")
public class User {
    /**
     * 登录账号，Char(32)
     */
    @Id
    @Column(name = "DLZH")
    private String dlzh;

    /**
     * 角色编号，Integer，自增
     */
    @Column(name = "JSBH")
    private Integer jsbh;

    /**
     * 登录密码，Char(255)，加密保存
     */
    @Column(name = "DLMM")
    private String dlmm;

    /**
     * 账号状态，Integer，0正常，1已注销，2已禁止登录
     */
    @Column(name = "ZHZT")
    private Integer zhzt;

    /**
     * 密码找回的问题，Char(255)
     */
    @Column(name = "ZHWT")
    private String zhwt;

    /**
     * 密码找回的答案，Char(255)
     */
    @Column(name = "ZHDA")
    private String zhda;


    @Override
    public String toString() {
        return "User{" +
                "dlzh='" + dlzh + '\'' +
                ", jsbh=" + jsbh +
                ", dlmm='" + dlmm + '\'' +
                ", zhzt=" + zhzt +
                ", zhwt='" + zhwt + '\'' +
                ", zhda='" + zhda + '\'' +
                '}';
    }

    /**
     * 获取登录账号，Char(32)
     *
     * @return DLZH - 登录账号，Char(32)
     */
    public String getDlzh() {
        return dlzh;
    }

    /**
     * 设置登录账号，Char(32)
     *
     * @param dlzh 登录账号，Char(32)
     */
    public void setDlzh(String dlzh) {
        this.dlzh = dlzh;
    }

    /**
     * 获取角色编号，Integer，自增
     *
     * @return JSBH - 角色编号，Integer，自增
     */
    public Integer getJsbh() {
        return jsbh;
    }

    /**
     * 设置角色编号，Integer，自增
     *
     * @param jsbh 角色编号，Integer，自增
     */
    public void setJsbh(Integer jsbh) {
        this.jsbh = jsbh;
    }

    /**
     * 获取登录密码，Char(255)，加密保存
     *
     * @return DLMM - 登录密码，Char(255)，加密保存
     */
    public String getDlmm() {
        return dlmm;
    }

    /**
     * 设置登录密码，Char(255)，加密保存
     *
     * @param dlmm 登录密码，Char(255)，加密保存
     */
    public void setDlmm(String dlmm) {
        this.dlmm = dlmm;
    }

    /**
     * 获取账号状态，Integer，0正常，1已注销，2已禁止登录
     *
     * @return ZHZT - 账号状态，Integer，0正常，1已注销，2已禁止登录
     */
    public Integer getZhzt() {
        return zhzt;
    }

    /**
     * 设置账号状态，Integer，0正常，1已注销，2已禁止登录
     *
     * @param zhzt 账号状态，Integer，0正常，1已注销，2已禁止登录
     */
    public void setZhzt(Integer zhzt) {
        this.zhzt = zhzt;
    }

    /**
     * 获取密码找回的问题，Char(255)
     *
     * @return ZHWT - 密码找回的问题，Char(255)
     */
    public String getZhwt() {
        return zhwt;
    }

    /**
     * 设置密码找回的问题，Char(255)
     *
     * @param zhwt 密码找回的问题，Char(255)
     */
    public void setZhwt(String zhwt) {
        this.zhwt = zhwt;
    }

    /**
     * 获取密码找回的答案，Char(255)
     *
     * @return ZHDA - 密码找回的答案，Char(255)
     */
    public String getZhda() {
        return zhda;
    }

    /**
     * 设置密码找回的答案，Char(255)
     *
     * @param zhda 密码找回的答案，Char(255)
     */
    public void setZhda(String zhda) {
        this.zhda = zhda;
    }
}