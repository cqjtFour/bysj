package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.SysUser;
import com.cqfour.bysj.mapper.SysUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private SysUserMapper userMapper;

    public void insertUser(SysUser user){
        userMapper.insert(user);
    }

}
