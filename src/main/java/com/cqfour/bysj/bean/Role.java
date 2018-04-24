package com.cqfour.bysj.bean;

import javax.persistence.*;

@Table(name = "t_jsb")
public class Role {
    /**
     * 角色编号，Integer，自增
     */
    @Id
    @Column(name = "JSBH")
    private Integer jsbh;

    /**
     * 角色名称，Char(16)
     */
    @Column(name = "JSMC")
    private String jsmc;

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
     * 获取角色名称，Char(16)
     *
     * @return JSMC - 角色名称，Char(16)
     */
    public String getJsmc() {
        return jsmc;
    }

    /**
     * 设置角色名称，Char(16)
     *
     * @param jsmc 角色名称，Char(16)
     */
    public void setJsmc(String jsmc) {
        this.jsmc = jsmc;
    }
}