package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Job;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "jobMapper")
public interface JobMapper extends MyMapper<Job> {
}