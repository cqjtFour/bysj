package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.RoleMenu;
import com.cqfour.bysj.mapper.RoleMenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleMenuService {

    @Autowired
    private RoleMenuMapper roleMenuMapper;

    /**
     * 根据角色编号的到角色权限
     * @param jsbh
     * @return
     */
    public List<RoleMenu> getRoleMenusByjsbh(Integer jsbh) {
        return roleMenuMapper.getRoleMenusByjubh(jsbh);
    }

    /**
     * 根据菜单编号得到功能权限
     * @param cdbh
     * @return
     */
    public List<RoleMenu> getRoleMenusByCdbh(Integer cdbh){
        return roleMenuMapper.getRoleMenusByCdbh(cdbh);
    }

    /**
     * 根据菜单编号删除菜单功能权限
     * @param cdbh
     * @return
     */
    public Integer deleteRoleMenu(Integer cdbh){
        return roleMenuMapper.deleteRoleMenuByCdbh(cdbh);
    }

    /**
     * 插入角色菜单数据
     * @param roleMenu
     * @return
     */
    public Integer insert(RoleMenu roleMenu){
        return roleMenuMapper.insert(roleMenu);
    }

}
