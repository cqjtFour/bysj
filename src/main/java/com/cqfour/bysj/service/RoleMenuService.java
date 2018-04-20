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

    public List<RoleMenu> getRoleMenusByjsbh(Integer jsbh) {
        return roleMenuMapper.getRoleMenusByjubh(jsbh);
    }

}
