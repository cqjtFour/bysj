package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "userMapper")
public interface UserMapper extends MyMapper<User> {
}