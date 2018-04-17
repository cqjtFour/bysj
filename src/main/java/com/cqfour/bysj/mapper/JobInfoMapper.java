package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.JobInfo;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "jobInfoMapper")
public interface JobInfoMapper extends MyMapper<JobInfo> {
}