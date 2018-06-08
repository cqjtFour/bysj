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



	/**
	 * 在线应聘模块，获取岗位列表
	 * @return
	 */
	public List<Job> getJobList();

	/**
	 * 获取岗位详情
	 * @param zpgwbh
	 * @return
	 */
	public Job jobDetail(Integer zpgwbh);

	/**
	 * 条件查询
	 * @param job
	 * @return
	 */
	public List<Job> getJobListByCondition(Job job);
    String getJobName(int zpgwbh);
    List<Job> getGwList(int yrdwxxbbh);
}