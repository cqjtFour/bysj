package com.cqfour.bysj.bean;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.ArrayList;
import java.util.List;

@Table(name = "t_cdb")
public class Menu {
    /**
     * 菜单编号，Integer，自增
     */
    @Id
    @Column(name = "CDBH")
    private Integer cdbh;

    /**
     * 菜单名称，Char(32)
     */
    @Column(name = "CDMC")
    private String cdmc;

    /**
     * 菜单url,Char(255)
     */
    @Column(name = "CDURL")
    private String cdurl;

    /**
     * 菜单等级，Integer
     */
    @Column(name = "CDDJ")
    private Integer cddj;

    /**
     * 父级菜单编号，Integer
     */
    @Column(name = "FJCDBH")
    private Integer fjcdbh;

    @Transient
    private List<RoleMenu> roleMenus;

    @Transient
    private List<Menu> children = new ArrayList<>();

    public List<Menu> getChildren() {
        return children;
    }

    public void setChildren(List<Menu> children) {
        this.children = children;
    }

    public List<RoleMenu> getRoleMenus() {
        return roleMenus;
    }

    public void setRoleMenus(List<RoleMenu> roleMenus) {
        this.roleMenus = roleMenus;
    }

    /**
     * 获取菜单编号，Integer，自增
     *
     * @return CDBH - 菜单编号，Integer，自增
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
     * 获取菜单名称，Char(32)
     *
     * @return CDMC - 菜单名称，Char(32)
     */
    public String getCdmc() {
        return cdmc;
    }

    /**
     * 设置菜单名称，Char(32)
     *
     * @param cdmc 菜单名称，Char(32)
     */
    public void setCdmc(String cdmc) {
        this.cdmc = cdmc;
    }

    /**
     * 获取菜单url,Char(255)
     *
     * @return CDURL - 菜单url,Char(255)
     */
    public String getCdurl() {
        return cdurl;
    }

    /**
     * 设置菜单url,Char(255)
     *
     * @param cdurl 菜单url,Char(255)
     */
    public void setCdurl(String cdurl) {
        this.cdurl = cdurl;
    }

    /**
     * 获取菜单等级，Integer
     *
     * @return CDDJ - 菜单等级，Integer
     */
    public Integer getCddj() {
        return cddj;
    }

    /**
     * 设置菜单等级，Integer
     *
     * @param cddj 菜单等级，Integer
     */
    public void setCddj(Integer cddj) {
        this.cddj = cddj;
    }

    /**
     * 获取父级菜单编号，Integer
     *
     * @return FJCDBH - 父级菜单编号，Integer
     */
    public Integer getFjcdbh() {
        return fjcdbh;
    }

    /**
     * 设置父级菜单编号，Integer
     *
     * @param fjcdbh 父级菜单编号，Integer
     */
    public void setFjcdbh(Integer fjcdbh) {
        this.fjcdbh = fjcdbh;
    }
}