package com.cqfour.bysj.bean;

import javax.persistence.*;

@Table(name = "t_zyb")
public class Discipline {
    /**
     * 专业编号，Integer
     */
    @Id
    @Column(name = "ZYBH")
    private Integer zybh;

    /**
     * 学院编号，Integer，自增
     */
    @Column(name = "XYBH")
    private Integer xybh;

    /**
     * 专业名称，Char(32)
     */
    @Column(name = "ZYMC")
    private String zymc;

    /**
     * 应届生毕业生人数，Integer
     */
    @Column(name = "YJBYSRS")
    private Integer yjbysrs;

    @Transient
    private Faculty faculty;

    public Faculty getFaculty() {
        return faculty;
    }

    public void setFaculty(Faculty faculty) {
        this.faculty = faculty;
    }

    /**
     * 获取专业编号，Integer
     *
     * @return ZYBH - 专业编号，Integer
     */
    public Integer getZybh() {
        return zybh;
    }

    /**
     * 设置专业编号，Integer
     *
     * @param zybh 专业编号，Integer
     */
    public void setZybh(Integer zybh) {
        this.zybh = zybh;
    }

    /**
     * 获取学院编号，Integer，自增
     *
     * @return XYBH - 学院编号，Integer，自增
     */
    public Integer getXybh() {
        return xybh;
    }

    /**
     * 设置学院编号，Integer，自增
     *
     * @param xybh 学院编号，Integer，自增
     */
    public void setXybh(Integer xybh) {
        this.xybh = xybh;
    }

    /**
     * 获取专业名称，Char(32)
     *
     * @return ZYMC - 专业名称，Char(32)
     */
    public String getZymc() {
        return zymc;
    }

    /**
     * 设置专业名称，Char(32)
     *
     * @param zymc 专业名称，Char(32)
     */
    public void setZymc(String zymc) {
        this.zymc = zymc;
    }

    /**
     * 获取应届生毕业生人数，Integer
     *
     * @return YJBYSRS - 应届生毕业生人数，Integer
     */
    public Integer getYjbysrs() {
        return yjbysrs;
    }

    /**
     * 设置应届生毕业生人数，Integer
     *
     * @param yjbysrs 应届生毕业生人数，Integer
     */
    public void setYjbysrs(Integer yjbysrs) {
        this.yjbysrs = yjbysrs;
    }
}