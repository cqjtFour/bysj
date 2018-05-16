package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Employers;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "employersMapper")
public interface EmployersMapper extends MyMapper<Employers> {

    @Select("select * from t_yrdwb where DLZH = #{0}")
    Employers getOneEmployerByDLZH(String dlzh);

}