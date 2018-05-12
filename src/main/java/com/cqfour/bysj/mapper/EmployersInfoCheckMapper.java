package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.EmployersInfoCheck;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "employersInfoCheckMapper")
public interface EmployersInfoCheckMapper extends MyMapper<EmployersInfoCheck> {
}