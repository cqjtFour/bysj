package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Faculty;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "facultyMapper")
public interface FacultyMapper extends MyMapper<Faculty> {
}