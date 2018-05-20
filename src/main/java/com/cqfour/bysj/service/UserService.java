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

    /**
     * wgp
     * 添加用户
     * @param user
     * @return
     */
    public Integer addUser(User user){
        return userMapper.insert(user);
    }

    /**
     * wgp
     * 验证用户名是否已经存在
     * @param user
     * @return
     */
    public boolean validUser(User user){
        return userMapper.existsWithPrimaryKey(user);
    }

}



