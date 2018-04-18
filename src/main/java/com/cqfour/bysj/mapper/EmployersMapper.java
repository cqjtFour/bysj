package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Employers;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "employersMapper")
public interface EmployersMapper extends MyMapper<Employers> {
}