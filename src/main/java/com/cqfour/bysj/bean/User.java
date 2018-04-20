package com.cqfour.bysj.bean;

import javax.persistence.*;

@Table(name = "t_yhb")
public class User {
    /**
     * 登录账号，Char(32)
     */
    @Id
    private String dlzh;

    /**
     * 角色编号，Integer，自增
     */
    private Integer jsbh;

    /**
     * 登录密码，Char(255)
     */
    private String dlmm;

    /**
     * 账号状态，Integer，0正常，1已注销，2已禁止登录
     */
    private Integer zhzt;

    /**
     * 获取登录账号，Char(32)
     *
     * @return dlzh - 登录账号，Char(32)
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
     * @return jsbh - 角色编号，Integer，自增
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
     * 获取登录密码，Char(255)
     *
     * @return dlmm - 登录密码，Char(255)
     */
    public String getDlmm() {
        return dlmm;
    }

    /**
     * 设置登录密码，Char(255)
     *
     * @param dlmm 登录密码，Char(255)
     */
    public void setDlmm(String dlmm) {
        this.dlmm = dlmm;
    }

    /**
     * 获取账号状态，Integer，0正常，1已注销，2已禁止登录
     *
     * @return zhzt - 账号状态，Integer，0正常，1已注销，2已禁止登录
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
}