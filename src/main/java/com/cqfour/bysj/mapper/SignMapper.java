package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Sign;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "signMapper")
public interface SignMapper extends MyMapper<Sign> {

	public List<Sign> getAllSignInfo(@Param("xh") String xh);
}