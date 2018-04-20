package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.SysUser;
import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.mapper.SysUserMapper;
import com.cqfour.bysj.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;

    public List<User> getAllUser(){
        return userMapper.selectAll();
    }

    public User getUser(String username){
        return userMapper.selectByPrimaryKey(username);
    }

}



