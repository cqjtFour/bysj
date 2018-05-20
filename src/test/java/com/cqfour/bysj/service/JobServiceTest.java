package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Apply;
import com.cqfour.bysj.bean.Job;
import com.cqfour.bysj.mapper.ApplyMapper;
import com.cqfour.bysj.mapper.JobMapper;
import com.cqfour.bysj.util.DateUtil;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by a on 2018/5/16.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class JobServiceTest {

	@Autowired
	private JobMapper jobMapper;
	@Autowired
	private JobService jobService;
	@Autowired
	private ApplyMapper applyMapper;

	/**
	 * 测试service层分页
	 * @throws Exception
	 */
	@Test
	public void getAllJob() throws Exception {

		Job job=new Job();
		job.setZy("计科");

		PageInfo<Job> test=jobService.getAllJob(1,5);


		//assertEquals(5,test.size());
		assertEquals(12,test.getTotal());
	}

	@Test
	public void jobDetail() throws Exception {

	}

	/**
	 *测试Service搜索
	 * @throws Exception
	 */
	@Test
	public void jobSearch()throws Exception{
		Job job=new Job();
		job.setGwlx("运维");
		PageInfo<Job> test=jobService.searchJob(1,5,job);
		assertEquals(1,test.getSize());
		assertEquals(1,test.getTotal());
	}

	/**
	 * 应聘岗位测试
	 * @throws Exception
	 */
	@Test
	public void applyJob() throws Exception {
		Apply a=new Apply();
		a.setXh("631406010103");
		a.setZpgwbh(1);
		a.setYpsj(DateUtil.getStringDate());
		a.setCkzt(0);

		applyMapper.insert(a);

	}


}