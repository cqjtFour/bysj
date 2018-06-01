package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Student;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "studentMapper")
public interface StudentMapper extends MyMapper<Student> {

    String getStudentName(@Param("xh") String xh);
}