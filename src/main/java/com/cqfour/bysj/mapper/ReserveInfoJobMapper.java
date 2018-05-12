package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.ReserveInfoJob;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "reserveInfoJobMapper")
public interface ReserveInfoJobMapper extends MyMapper<ReserveInfoJob> {
}