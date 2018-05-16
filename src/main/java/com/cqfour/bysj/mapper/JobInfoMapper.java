package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.JobInfo;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "jobInfoMapper")
public interface JobInfoMapper extends MyMapper<JobInfo> {
    @Select("select * from t_xlzpxxfbb where ZPLX = '专场招聘'")
    List<JobInfo> selectAllSpecial();

    @Select("select * from t_xlzpxxfbb where ZPLX = '社会招聘'")
    List<JobInfo> selectAllInfoByKey();

    @Select("select * from t_xlzpxxfbb where ZPLX = '双选会'")
    List<JobInfo> selectAllDoubleMeeting();

    @Select("select * from t_xlzpxxfbb where XNZPXXFBBBH = #{0}")
    JobInfo selectOneJobInfo(Integer mainKey);
}