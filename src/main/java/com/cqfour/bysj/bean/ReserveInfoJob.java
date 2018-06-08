package com.cqfour.bysj.bean;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "t_xyzpgwb")
public class ReserveInfoJob {
    /**
     * 岗位编号,自增
     */
    @Id
    @Column(name = "GWBH")
    private Integer gwbh;

    /**
     * 岗位名称
     */
    @Column(name="GWMC")
    private String gwmc;

    /**
     * 校园招聘预约表编号
     */
    @Column(name = "XYZPYYBBH")
    private Integer xyzpyybbh;

    /**
     * 需要专业
     */
    @Column(name = "XYZY")
    private String xyzy;

    /**
     * 人数
     */
    @Column(name = "RS")
    private String rs;

    /**
     * 薪资待遇
     */
    @Column(name = "DY")
    private String dy;

    /**
     * 获取岗位编号,自增
     *
     * @return GWBH - 岗位编号,自增
     */
    public Integer getGwbh() {
        return gwbh;
    }

    /**
     * 设置岗位编号,自增
     *
     * @param gwbh 岗位编号,自增
     */
    public void setGwbh(Integer gwbh) {
        this.gwbh = gwbh;
    }


    /**
     * 获取岗位名称
     *
     * @return GWMC - 岗位名称,自增
     */
    public String  getGwmc() {
        return gwmc;
    }

    /**
     * 设置岗位名称
     *
     * @param gwmc 岗位名称
     */
    public void setGwmc(String gwmc) {
        this.gwmc= gwmc;
    }

    /**
     * 获取自增id，Integer
     *
     * @return XYZPYYBBH - 自增id，Integer
     */
    public Integer getXyzpyybbh() {
        return xyzpyybbh;
    }

    /**
     * 设置自增id，Integer
     *
     * @param xyzpyybbh 自增id，Integer
     */
    public void setXyzpyybbh(Integer xyzpyybbh) {
        this.xyzpyybbh = xyzpyybbh;
    }

    /**
     * 获取需要专业
     *
     * @return XYZY - 需要专业
     */
    public String getXyzy() {
        return xyzy;
    }

    /**
     * 设置需要专业
     *
     * @param xyzy 需要专业
     */
    public void setXyzy(String xyzy) {
        this.xyzy = xyzy;
    }

    /**
     * 获取人数
     *
     * @return RS - 人数
     */
    public String getRs() {
        return rs;
    }

    /**
     * 设置人数
     *
     * @param rs 人数
     */
    public void setRs(String rs) {
        this.rs = rs;
    }

    /**
     * 获取薪资待遇
     *
     * @return DY - 薪资待遇
     */
    public String getDy() {
        return dy;
    }

    /**
     * 设置薪资待遇
     *
     * @param dy 薪资待遇
     */
    public void setDy(String dy) {
        this.dy = dy;
    }

    @Override
    public String toString() {
        return "ReserveInfoJob{" +
                "gwbh=" + gwbh +
                ", gwmc='" + gwmc + '\'' +
                ", xyzpyybbh=" + xyzpyybbh +
                ", xyzy='" + xyzy + '\'' +
                ", rs='" + rs + '\'' +
                ", dy='" + dy + '\'' +
                '}';
    }
}