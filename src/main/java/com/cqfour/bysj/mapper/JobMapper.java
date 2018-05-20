package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Job;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "jobMapper")
public interface JobMapper extends MyMapper<Job> {

    @Select("select * from t_zpgwb,t_yrdwb where t_zpgwb.yrdwxxbbh = t_yrdwb.yrdwxxbbh")
    @ResultMap("BaseResultMapWithEmployersNo")
    List<Job> selectAllJobWithEmployer();


}