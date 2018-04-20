package com.cqfour.bysj.bean;

import javax.persistence.*;

@Table(name = "t_jycry")
public class EmploymentDepartment {
    /**
     * 职工号，Char(16)
     */
    @Id
    private String zgh;

    /**
     * 登录账号，Char(32)
     */
    private String dlzh;

    /**
     * 人员名称，Char(16)
     */
    private String rymc;

    /**
     * 职位，Char(16)
     */
    private String zw;

    /**
     * 手机号码，Char(16)
     */
    private String sj;

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
     * 获取人员名称，Char(16)
     *
     * @return rymc - 人员名称，Char(16)
     */
    public String getRymc() {
        return rymc;
    }

    /**
     * 设置人员名称，Char(16)
     *
     * @param rymc 人员名称，Char(16)
     */
    public void setRymc(String rymc) {
        this.rymc = rymc;
    }

    /**
     * 获取职位，Char(16)
     *
     * @return zw - 职位，Char(16)
     */
    public String getZw() {
        return zw;
    }

    /**
     * 设置职位，Char(16)
     *
     * @param zw 职位，Char(16)
     */
    public void setZw(String zw) {
        this.zw = zw;
    }

    /**
     * 获取手机号码，Char(16)
     *
     * @return sj - 手机号码，Char(16)
     */
    public String getSj() {
        return sj;
    }

    /**
     * 设置手机号码，Char(16)
     *
     * @param sj 手机号码，Char(16)
     */
    public void setSj(String sj) {
        this.sj = sj;
    }
}