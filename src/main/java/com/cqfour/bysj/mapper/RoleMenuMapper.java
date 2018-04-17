package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.RoleMenu;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "roleMenuMapper")
public interface RoleMenuMapper extends MyMapper<RoleMenu> {
}