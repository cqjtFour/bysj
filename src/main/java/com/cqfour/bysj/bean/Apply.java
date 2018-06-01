package com.cqfour.bysj.bean;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Table(name = "t_yp")
public class Apply {
    /**
     * 应聘表编号，Integer，自增
     */
    @Id
    @Column(name = "YPBBH")
    private Integer ypbbh;

    /**
     * 招牌岗位编号，Integer，自增
     */
    @Column(name = "ZPGWBH")
    private Integer zpgwbh;

    /**
     * 学号，Char(16)
     */
    @Column(name = "XH")
    private String xh;

    /**
     * 应聘时间
     */
    @Column(name = "YPSJ")
    private String ypsj;



    /**
     * 查看状态
     */
    @Column(name="CKZT")
    private Short ckzt;

    /**
     * 审核状态
     */
    @Column(name="SHZT")
    private Short shzt;


    /**
     * 通过zpgwbh关联Job
     */
    @Transient
    private Job job;

    /**
     * 通过xh关联Student
     */
    @Transient
    private Student student;

/*    *//**
     * 通过zybh关联Discipline
     *//*
    @Transient
    private Discipline discipline;*/

    public Job getJob(){
        return  this.job;
    }
    public void setJob(Job job){
        this.job=job;
    }

    public Student getStudent(){
        return this.student;
    }
    public void setStudent(Student student){
        this.student=student;
    }

 /*   public Discipline getDiscipline(){
        return this.discipline;
    }
    public void setDiscipline(Discipline discipline){
        this.discipline=discipline;
    }*/

    /**
     * 获取应聘表编号，Integer，自增
     *
     * @return YPBBH - 应聘表编号，Integer，自增
     */
    public Integer getYpbbh() {
        return ypbbh;
    }

    /**
     * 设置应聘表编号，Integer，自增
     *
     * @param ypbbh 应聘表编号，Integer，自增
     */
    public void setYpbbh(Integer ypbbh) {
        this.ypbbh = ypbbh;
    }

    /**
     * 获取招牌岗位编号，Integer，自增
     *
     * @return ZPGWBH - 招牌岗位编号，Integer，自增
     */
    public Integer getZpgwbh() {
        return zpgwbh;
    }

    /**
     * 设置招牌岗位编号，Integer，自增
     *
     * @param zpgwbh 招牌岗位编号，Integer，自增
     */
    public void setZpgwbh(Integer zpgwbh) {
        this.zpgwbh = zpgwbh;
    }

    /**
     * 获取学号，Char(16)
     *
     * @return XH - 学号，Char(16)
     */
    public String getXh() {
        return xh;
    }

    /**
     * 设置学号，Char(16)
     *
     * @param xh 学号，Char(16)
     */
    public void setXh(String xh) {
        this.xh = xh;
    }

    /**
     * 获取应聘时间
     *
     * @return YPSJ - 应聘时间
     */
    public String getYpsj() {
        return ypsj;
    }

    /**
     * 设置应聘时间
     *
     * @param ypsj 应聘时间
     */
    public void setYpsj(String ypsj) {
        this.ypsj = ypsj;
    }


    /**
     * 获取状态
     *
     */
    public Short getCkzt() {
        return ckzt;
    }

    /**
     * 设置状态
     *
     * @param ckzt 查看状态
     */

    public void setCkzt(Short ckzt) {
        this.ckzt = ckzt;
    }


    /**
     * 获取审核状态
     *
     */
    public Short getShzt() {
        return shzt;
    }

    /**
     * 设置状态
     *
     * @param shzt 查看状态
     */

    public void setShzt(Short shzt) {
        this.shzt = shzt;
    }
}