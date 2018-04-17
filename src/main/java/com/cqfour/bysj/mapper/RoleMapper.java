package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Role;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "roleMapper")
public interface RoleMapper extends MyMapper<Role> {
}