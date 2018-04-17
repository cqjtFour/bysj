package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.SchoolNews;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "schoolNewsMapper")
public interface SchoolNewsMapper extends MyMapper<SchoolNews> {
}