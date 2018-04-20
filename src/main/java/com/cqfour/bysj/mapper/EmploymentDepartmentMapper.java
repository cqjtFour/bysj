package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.EmploymentDepartment;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "employmentDepartmentMapper")
public interface EmploymentDepartmentMapper extends MyMapper<EmploymentDepartment> {
}