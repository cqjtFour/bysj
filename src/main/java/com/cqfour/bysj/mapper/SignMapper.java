package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Sign;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "signMapper")
public interface SignMapper extends MyMapper<Sign> {
}