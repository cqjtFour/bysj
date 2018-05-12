package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Apply;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "applyMapper")
public interface ApplyMapper extends MyMapper<Apply> {
}