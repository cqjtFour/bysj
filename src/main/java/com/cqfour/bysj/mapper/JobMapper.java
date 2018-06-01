package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Job;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "jobMapper")
public interface JobMapper extends MyMapper<Job> {

    List<Job> getGwList(int yrdwxxbbh);

    String getJobName(int zpgwbh);
}