package com.cqfour.bysj.service;


import com.cqfour.bysj.bean.Apply;
import com.cqfour.bysj.bean.Job;
import com.cqfour.bysj.mapper.ApplyMapper;
import com.cqfour.bysj.mapper.JobMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {
	@Autowired
	private JobMapper jobMapper;

	@Autowired
	private ApplyMapper applyMapper;

	/**
	 * 获取全部岗位信息
	 * @return
	 */
	public PageInfo<Job> getAllJob(Integer pageNum, Integer pageSize){
		//PageHelper分页
		PageHelper.startPage(pageNum,pageSize);
		PageHelper.orderBy("FBSJ desc");

		List<Job> jobs=jobMapper.getJobList();
		PageInfo<Job> pageInfo=new PageInfo<>(jobs);
		return pageInfo;
	}

	/**
	 * 岗位详情
	 * @param zpgwbh
	 * @return
	 */
	public Job jobDetail(Integer zpgwbh){
		return jobMapper.jobDetail(zpgwbh);
	}

	/**
	 * 搜索岗位
	 * @param job
	 * @return
	 */
	public PageInfo<Job> searchJob(Integer pageNum, Integer pageSize,Job job){
		if(job.getDd()!=null&&!job.getDd().equals("")){
			job.setDd("%"+job.getDd()+"%");
		}
		if(job.getMc()!=null&&!job.getMc().equals("")){
			job.setMc("%"+job.getMc()+"%");
		}
		if(job.getZy()!=null&&!job.getZy().equals("")){
			job.setZy("%"+job.getZy()+"%");
		}
		PageHelper.startPage(pageNum,pageSize);
		PageHelper.orderBy("FBSJ desc");
		List<Job> searchList=jobMapper.getJobListByCondition(job);
		PageInfo<Job> pageInfo=new PageInfo<>(searchList);
		return pageInfo;
	}

	/**
	 * 投递简历
	 * @param a
	 */
	public void applyJob(Apply a){
		applyMapper.insert(a);
	}

    /**
     * 得到应聘信息
     * @return
     */
    public List<Job> selectAllJobWithEmployer(){
        return jobMapper.selectAllJobWithEmployer();
    }

    /**
     * 通过用人单位编号获取所发布岗位列表
     */
    public List<Job> getGwList(int yrdwxxbbh){ return  jobMapper.getGwList(yrdwxxbbh);}

    /**
     * 通过岗位编号获取岗位名称
     */
    public String getJobName(int zpgwbh){ return  jobMapper.getJobName(zpgwbh);}

    /**
     * 添加岗位信息
     */
    public int insertJob(Job job){ return  jobMapper.insert(job);}

    /**
     * 删除岗位信息
     */
    public int deleteJob(int zpgwh){ return  jobMapper.deleteByPrimaryKey(zpgwh);}

    /**
     * 获取岗位通过招聘岗位编号
     */
    public  Job  getJob(int zpgwbh){ return  jobMapper.selectByPrimaryKey(zpgwbh);}

    /**
     * 更新岗位信息
     */
    public  int updateJob(Job job){ return  jobMapper.updateByPrimaryKeySelective(job);}

}
