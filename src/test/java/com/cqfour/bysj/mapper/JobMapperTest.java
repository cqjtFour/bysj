package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Employers;
import com.cqfour.bysj.bean.Job;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by a on 2018/5/15.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class JobMapperTest {

	@Autowired
	private JobMapper jobMapper;

	@Autowired
	private EmployersMapper employersMapper;

	@Test
	public void Testjob(){
		List<Job> jobs=jobMapper.getJobList();
		for (Job j:jobs
			 ) {
			System.out.println(j.getEmployers().getDwmc()+":"+j.toString());
		}

	}

	@Test
	public void jobDetail() throws Exception {
		Integer i=1;
		Job job=jobMapper.jobDetail(i);
		System.out.println(job.toString());
	}

	@Test
	public void joblistbycondition(){
		Job job=new Job();
		job.setMc("Java工程师");
		List<Job> jobs=jobMapper.getJobListByCondition(job);
		assertEquals(12,jobs.size());
	}

}