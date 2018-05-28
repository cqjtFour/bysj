package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.EmployersInfoCheck;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "employersInfoCheckMapper")
public interface EmployersInfoCheckMapper extends MyMapper<EmployersInfoCheck> {

	public List<EmployersInfoCheck> getlist(@Param("shzt") Short shzt);

}