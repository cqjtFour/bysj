package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.EmploymentDepartment;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "employmentDepartmentMapper")
public interface EmploymentDepartmentMapper extends MyMapper<EmploymentDepartment> {

    @Select("select * from t_jycry where zgh = #{zgh}")
    EmploymentDepartment selectEmpByZGBH(@Param("zgh") Integer zgh);


}