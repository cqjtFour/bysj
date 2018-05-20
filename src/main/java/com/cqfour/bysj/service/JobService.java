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

/**
 * Created by a on 2018/5/15.
 */
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
}
