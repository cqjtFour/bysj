package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.User;
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

    /**
     * 通过登陆密码获取user对象
     * */
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

   /**
   * 验证登陆密码
   * */
   public User passwordVerification(User user){ return  userMapper.selectOne(user);}

   /**
    * 更新登录密码
    * */
    public int updatePassword(User user){ return  userMapper.updateByPrimaryKeySelective(user);}

    /**
     * 获得角色编号
     */
    public int getRoleNumber(String dlzh){ return  userMapper.getRoleNumber(dlzh);}
}



