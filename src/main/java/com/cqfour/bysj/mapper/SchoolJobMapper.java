package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.SchoolJob;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "schoolJobMapper")
public interface SchoolJobMapper extends MyMapper<SchoolJob> {
}