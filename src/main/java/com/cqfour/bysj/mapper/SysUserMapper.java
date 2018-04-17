package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.SysUser;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "sysUserMapper")
public interface SysUserMapper extends MyMapper<SysUser> {
}