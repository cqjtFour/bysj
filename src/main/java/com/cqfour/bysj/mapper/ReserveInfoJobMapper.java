package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.ReserveInfoJob;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "reserveInfoJobMapper")
public interface ReserveInfoJobMapper extends MyMapper<ReserveInfoJob> {

    @Select("select * from t_xyzpgwb where XYZPYYBBH = #{0}")
    List<ReserveInfoJob> getAllReserveInfoJobBySome(Integer xybh);
}