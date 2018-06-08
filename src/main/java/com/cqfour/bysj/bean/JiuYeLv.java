package com.cqfour.bysj.bean;

import org.springframework.stereotype.Component;

@Component
public class JiuYeLv {

    private String xymc;
    private Double num;

    public String getXymc() {
        return xymc;
    }

    public void setXymc(String xymc) {
        this.xymc = xymc;
    }

    public Double getNum() {
        return num;
    }

    public void setNum(Double num) {
        this.num = num;
    }
}
