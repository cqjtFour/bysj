package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.ReserveInfo;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "reserveInfoMapper")
public interface ReserveInfoMapper extends MyMapper<ReserveInfo> {

    @Select("select * from t_xnzpgs,t_xlzpxxfbb where t_xnzpgs.xnzpxxfbbbh = t_xlzpxxfbb.xnzpxxfbbbh")
    List<ReserveInfo> getAllReservrInfoWithJobInfo();


}