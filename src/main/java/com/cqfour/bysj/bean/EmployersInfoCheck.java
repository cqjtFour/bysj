package com.cqfour.bysj.bean;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Table(name = "t_yrdwxxshb")
public class EmployersInfoCheck {
    /**
     * 审核表编号，Integer，自增
     */
    @Id
    @Column(name = "YRDWXXSHBBH")
    private Integer yrdwxxshbbh;

    /**
     * 主键，自增
     */
    @Column(name = "ZGBH")
    private Integer zgbh;

    /**
     * 用人单位编号，Integer
     */
    @Column(name = "YRDWXXBBH")
    private Integer yrdwxxbbh;

    /**
     * 提交时间
     */
    @Column(name = "TJSJ")
    private String tjsj;

    /**
     * 审核时间
     */
    @Column(name = "SHSJ")
    private String shsj;

    /**
     * 审核状态，Integer，0表未审核，1表通过审核，2表驳回
     */
    @Column(name = "SHZT")
    private Short shzt;

    /**
     * 审核意见，Char(16)
     */
    @Column(name = "SHYJ")
    private String shyj;

    /**
     * 审核公司
     */
    @Transient
    private Employers employers;

    /**
     * 审核工作人员
     */
    @Transient
    private EmploymentDepartment employmentDepartment;

    public Employers getEmployers() {
        return employers;
    }

    public void setEmployers(Employers employers) {
        this.employers = employers;
    }

    public EmploymentDepartment getEmploymentDepartment() {
        return employmentDepartment;
    }

    public void setEmploymentDepartment(EmploymentDepartment employmentDepartment) {
        this.employmentDepartment = employmentDepartment;
    }


    /**
     * 获取审核表编号，Integer，自增
     *
     * @return YRDWXXSHBBH - 审核表编号，Integer，自增
     */
    public Integer getYrdwxxshbbh() {
        return yrdwxxshbbh;
    }

    /**
     * 设置审核表编号，Integer，自增
     *
     * @param yrdwxxshbbh 审核表编号，Integer，自增
     */
    public void setYrdwxxshbbh(Integer yrdwxxshbbh) {
        this.yrdwxxshbbh = yrdwxxshbbh;
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
     * 获取提交时间
     *
     * @return TJSJ - 提交时间
     */
    public String getTjsj() {
        return tjsj;
    }

    /**
     * 设置提交时间
     *
     * @param tjsj 提交时间
     */
    public void setTjsj(String tjsj) {
        this.tjsj = tjsj;
    }

    /**
     * 获取审核时间
     *
     * @return SHSJ - 审核时间
     */
    public String getShsj() {
        return shsj;
    }

    /**
     * 设置审核时间
     *
     * @param shsj 审核时间
     */
    public void setShsj(String shsj) {
        this.shsj = shsj;
    }

    /**
     * 获取审核状态，Integer，0表未审核，1表通过审核，2表驳回
     *
     * @return SHZT - 审核状态，Integer，0表未审核，1表通过审核，2表驳回
     */
    public Short getShzt() {
        return shzt;
    }

    /**
     * 设置审核状态，Integer，0表未审核，1表通过审核，2表驳回
     *
     * @param shzt 审核状态，Integer，0表未审核，1表通过审核，2表驳回
     */
    public void setShzt(Short shzt) {
        this.shzt = shzt;
    }

    /**
     * 获取审核意见，Char(16)
     *
     * @return SHYJ - 审核意见，Char(16)
     */
    public String getShyj() {
        return shyj;
    }

    /**
     * 设置审核意见，Char(16)
     *
     * @param shyj 审核意见，Char(16)
     */
    public void setShyj(String shyj) {
        this.shyj = shyj;
    }

    @Override
    public String toString(){
        String str;
        str="单位名称:"+this.getEmployers().getDwmc()+"-提交时间:"+this.getTjsj()+"-审核人:"+this.getEmploymentDepartment().getRymc()+
                "-审核时间:"+this.getShsj()+"-状态:"+String.valueOf(this.getShzt())+"-意见:"+this.getShyj();
        return  str;
    }
}