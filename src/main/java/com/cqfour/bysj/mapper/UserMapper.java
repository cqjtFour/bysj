package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "userMapper")
public interface UserMapper extends MyMapper<User> {

    @Insert("insert into t_yhb (dlzh,dlmm,zhzt,jsbh) values (#{dlzh},#{dlmm},0,3)")
    int insertUser(@Param("dlzh") String dlzh,@Param("dlmm") String dlmm);
}