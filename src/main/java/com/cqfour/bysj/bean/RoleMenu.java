package com.cqfour.bysj.bean;

import javax.persistence.*;

@Table(name = "t_jsglcdb")
public class RoleMenu {
    /**
     * 角色关联菜单表编号，Integer，自增
     */
    @Id
    private Integer jsglcdbbh;

    /**
     * 菜单编号，Integer，自增
     */
    private Integer cdbh;

    /**
     * 角色编号，Integer，自增
     */
    private Integer jsbh;

    /**
     * 获取角色关联菜单表编号，Integer，自增
     *
     * @return jsglcdbbh - 角色关联菜单表编号，Integer，自增
     */
    public Integer getJsglcdbbh() {
        return jsglcdbbh;
    }

    /**
     * 设置角色关联菜单表编号，Integer，自增
     *
     * @param jsglcdbbh 角色关联菜单表编号，Integer，自增
     */
    public void setJsglcdbbh(Integer jsglcdbbh) {
        this.jsglcdbbh = jsglcdbbh;
    }

    /**
     * 获取菜单编号，Integer，自增
     *
     * @return cdbh - 菜单编号，Integer，自增
     */
    public Integer getCdbh() {
        return cdbh;
    }

    /**
     * 设置菜单编号，Integer，自增
     *
     * @param cdbh 菜单编号，Integer，自增
     */
    public void setCdbh(Integer cdbh) {
        this.cdbh = cdbh;
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
}