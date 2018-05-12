package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.ReserveInfo;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "reserveInfoMapper")
public interface ReserveInfoMapper extends MyMapper<ReserveInfo> {
}