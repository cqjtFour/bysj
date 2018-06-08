package com.cqfour.bysj.bean;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.List;

@Table(name = "t_xnzpgs")
public class ReserveInfo {

    @Id
    @Column(name = "XNZPGSBBH")
    private Integer xnzpgsbbh;

    @Column(name = "XNZPXXFBBBH")
    private Integer xnzpxxfbbbh;

    @Column(name = "YRDWXXBBH")
    private Integer yrdwxxbbh;

    @Column(name = "ZPDD")
    private String zpdd;

    @Column(name = "ZPSJ")
    private String zpsj;

    @Column(name = "ZPZY")
    private String zpzy;

    @Transient
    private JobInfo jobInfo;

    @Transient
    private Employers employers;

    @Transient
    private List<ReserveInfoJob> reserveInfoJob;

    public List<ReserveInfoJob> getReserveInfoJob() {
        return reserveInfoJob;
    }

    public void setReserveInfoJob(List<ReserveInfoJob> reserveInfoJob) {
        this.reserveInfoJob = reserveInfoJob;
    }

    public Employers getEmployers() {
        return employers;
    }

    public void setEmployers(Employers employers) {
        this.employers = employers;
    }

    public JobInfo getJobInfo() {
        return jobInfo;
    }

    public void setJobInfo(JobInfo jobInfo) {
        this.jobInfo = jobInfo;
    }

    public Integer getXnzpgsbbh() {
        return xnzpgsbbh;
    }

    public void setXnzpgsbbh(Integer xnzpgsbbh) {
        this.xnzpgsbbh = xnzpgsbbh;
    }

    public Integer getXnzpxxfbbbh() {
        return xnzpxxfbbbh;
    }

    public void setXnzpxxfbbbh(Integer xnzpxxfbbbh) {
        this.xnzpxxfbbbh = xnzpxxfbbbh;
    }

    public Integer getYrdwxxbbh() {
        return yrdwxxbbh;
    }

    public void setYrdwxxbbh(Integer yrdwxxbbh) {
        this.yrdwxxbbh = yrdwxxbbh;
    }

    public String getZpdd() {
        return zpdd;
    }

    public void setZpdd(String zpdd) {
        this.zpdd = zpdd;
    }

    public String getZpsj() {
        return zpsj;
    }

    public void setZpsj(String zpsj) {
        this.zpsj = zpsj;
    }

    public String getZpzy() {
        return zpzy;
    }

    public void setZpzy(String zpzy) {
        this.zpzy = zpzy;
    }
}