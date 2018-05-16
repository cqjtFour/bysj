package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Student;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "studentMapper")
public interface StudentMapper extends MyMapper<Student> {
    /**
     * 模糊查询
     * @param param
     * @return
     */
    List<Student> queryStudentByInput(@Param("param") String param);

    /**
     * 条件查询
     * @param stuName
     * @param stuNo
     * @return
     */
    List<Student> querySomeStudent(@Param("stuName")String stuName,@Param("stuNo")String stuNo);

    @Select("select * from t_xsb where dlzh=#{0}")
    Student selectOneStudent(String dlzh);
}