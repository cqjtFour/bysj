package com.cqfour.bysj.bean;

import javax.persistence.*;
import java.util.List;

@Table(name = "t_yrdwb")
public class Employers {
    /**
     * 用人单位编号，Integer
     */
    @Id
    @Column(name = "YRDWXXBBH")
    private Integer yrdwxxbbh;

    /**
     * 登录账号，Char(32)
     */
    @Column(name = "DLZH")
    private String dlzh;

    /**
     * 单位名称，Char(32)
     */
    @Column(name = "DWMC")
    private String dwmc;

    /**
     * 单位性质，Char(32)
     */
    @Column(name = "DWXZ")
    private String dwxz;

    /**
     * 组织机构代码，Char(32)
     */
    @Column(name = "ZZJGDM")
    private String zzjgdm;

    /**
     * 所属行业，Char(64)
     */
    @Column(name = "SSHY")
    private String sshy;

    /**
     * 单位规模，Char(16)
     */
    @Column(name = "DWGM")
    private String dwgm;

    /**
     * 所在地，Char(128)
     */
    @Column(name = "SZD")
    private String szd;

    /**
     * 单位联系人，Char(16)
     */
    @Column(name = "DWLXR")
    private String dwlxr;

    /**
     * 联系人电话，Char(16)
     */
    @Column(name = "LXRDH")
    private String lxrdh;

    /**
     * 单位联系电话，Char(32)
     */
    @Column(name = "DWLXDH")
    private String dwlxdh;

    /**
     * 电子邮箱，Char(32)
     */
    @Column(name = "DZYX")
    private String dzyx;

    /**
     * 邮政编码，Char(8)
     */
    @Column(name = "YZBM")
    private String yzbm;

    /**
     * 单位基本情况简介，Char(1024)
     */
    @Column(name = "DWJBQKJJ")
    private String dwjbqkjj;


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
     * 获取单位名称，Char(32)
     *
     * @return DWMC - 单位名称，Char(32)
     */
    public String getDwmc() {
        return dwmc;
    }

    /**
     * 设置单位名称，Char(32)
     *
     * @param dwmc 单位名称，Char(32)
     */
    public void setDwmc(String dwmc) {
        this.dwmc = dwmc;
    }

    /**
     * 获取单位性质，Char(32)
     *
     * @return DWXZ - 单位性质，Char(32)
     */
    public String getDwxz() {
        return dwxz;
    }

    /**
     * 设置单位性质，Char(32)
     *
     * @param dwxz 单位性质，Char(32)
     */
    public void setDwxz(String dwxz) {
        this.dwxz = dwxz;
    }

    /**
     * 获取组织机构代码，Char(32)
     *
     * @return ZZJGDM - 组织机构代码，Char(32)
     */
    public String getZzjgdm() {
        return zzjgdm;
    }

    /**
     * 设置组织机构代码，Char(32)
     *
     * @param zzjgdm 组织机构代码，Char(32)
     */
    public void setZzjgdm(String zzjgdm) {
        this.zzjgdm = zzjgdm;
    }

    /**
     * 获取所属行业，Char(64)
     *
     * @return SSHY - 所属行业，Char(64)
     */
    public String getSshy() {
        return sshy;
    }

    /**
     * 设置所属行业，Char(64)
     *
     * @param sshy 所属行业，Char(64)
     */
    public void setSshy(String sshy) {
        this.sshy = sshy;
    }

    /**
     * 获取单位规模，Char(16)
     *
     * @return DWGM - 单位规模，Char(16)
     */
    public String getDwgm() {
        return dwgm;
    }

    /**
     * 设置单位规模，Char(16)
     *
     * @param dwgm 单位规模，Char(16)
     */
    public void setDwgm(String dwgm) {
        this.dwgm = dwgm;
    }

    /**
     * 获取所在地，Char(128)
     *
     * @return SZD - 所在地，Char(128)
     */
    public String getSzd() {
        return szd;
    }

    /**
     * 设置所在地，Char(128)
     *
     * @param szd 所在地，Char(128)
     */
    public void setSzd(String szd) {
        this.szd = szd;
    }

    /**
     * 获取单位联系人，Char(16)
     *
     * @return DWLXR - 单位联系人，Char(16)
     */
    public String getDwlxr() {
        return dwlxr;
    }

    /**
     * 设置单位联系人，Char(16)
     *
     * @param dwlxr 单位联系人，Char(16)
     */
    public void setDwlxr(String dwlxr) {
        this.dwlxr = dwlxr;
    }

    /**
     * 获取联系人电话，Char(16)
     *
     * @return LXRDH - 联系人电话，Char(16)
     */
    public String getLxrdh() {
        return lxrdh;
    }

    /**
     * 设置联系人电话，Char(16)
     *
     * @param lxrdh 联系人电话，Char(16)
     */
    public void setLxrdh(String lxrdh) {
        this.lxrdh = lxrdh;
    }

    /**
     * 获取单位联系电话，Char(32)
     *
     * @return DWLXDH - 单位联系电话，Char(32)
     */
    public String getDwlxdh() {
        return dwlxdh;
    }

    /**
     * 设置单位联系电话，Char(32)
     *
     * @param dwlxdh 单位联系电话，Char(32)
     */
    public void setDwlxdh(String dwlxdh) {
        this.dwlxdh = dwlxdh;
    }

    /**
     * 获取电子邮箱，Char(32)
     *
     * @return DZYX - 电子邮箱，Char(32)
     */
    public String getDzyx() {
        return dzyx;
    }

    /**
     * 设置电子邮箱，Char(32)
     *
     * @param dzyx 电子邮箱，Char(32)
     */
    public void setDzyx(String dzyx) {
        this.dzyx = dzyx;
    }

    /**
     * 获取邮政编码，Char(8)
     *
     * @return YZBM - 邮政编码，Char(8)
     */
    public String getYzbm() {
        return yzbm;
    }

    /**
     * 设置邮政编码，Char(8)
     *
     * @param yzbm 邮政编码，Char(8)
     */
    public void setYzbm(String yzbm) {
        this.yzbm = yzbm;
    }

    /**
     * 获取单位基本情况简介，Char(1024)
     *
     * @return DWJBQKJJ - 单位基本情况简介，Char(1024)
     */
    public String getDwjbqkjj() {
        return dwjbqkjj;
    }

    /**
     * 设置单位基本情况简介，Char(1024)
     *
     * @param dwjbqkjj 单位基本情况简介，Char(1024)
     */
    public void setDwjbqkjj(String dwjbqkjj) {
        this.dwjbqkjj = dwjbqkjj;
    }
}