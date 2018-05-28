package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Job;
import com.cqfour.bysj.mapper.JobMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by HYHSG on 2018/5/19.
 */
@Service
public class JobService {
    @Autowired
    JobMapper jopMapper;

    /**
     * 通过用人单位编号获取所发布岗位列表
     */
    public List<Job> getGwList(int yrdwxxbbh){ return  jopMapper.getGwList(yrdwxxbbh);}

    /**
     * 通过岗位编号获取岗位名称
     */
    public String getJobName(int zpgwbh){ return  jopMapper.getJobName(zpgwbh);}

    /**
     * 添加岗位信息
     */
    public int insertJob(Job job){ return  jopMapper.insert(job);}

    /**
     * 删除岗位信息
     */
    public int deleteJob(int zpgwh){ return  jopMapper.deleteByPrimaryKey(zpgwh);}

    /**
     * 获取岗位通过招聘岗位编号
     */
    public  Job  getJob(int zpgwbh){ return  jopMapper.selectByPrimaryKey(zpgwbh);}

    /**
     * 更新岗位信息
     */
    public  int updateJob(Job job){ return  jopMapper.updateByPrimaryKeySelective(job);}

}
