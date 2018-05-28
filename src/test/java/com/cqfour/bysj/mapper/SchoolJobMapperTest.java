package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.ReserveInfoJob;
import com.cqfour.bysj.bean.SchoolJob;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by a on 2018/5/22.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class SchoolJobMapperTest {
	@Autowired
	private SchoolJobMapper schoolJobMapper;

	@Autowired
	private ReserveInfoJobMapper reserveInfoJobMapper;

	@Test
	public void getSchoolJobList() throws Exception {
		List<SchoolJob> schoolJobs=schoolJobMapper.getSchoolJobList((short)0);
		for (SchoolJob s:schoolJobs
			 ) {
			System.out.println(s.toString());
		}
		assertEquals(3,schoolJobs.size());
	}

	@Test
	public void test(){
		List<ReserveInfoJob> reserveInfoJobs=reserveInfoJobMapper.getAllReserveInfoJobBySome(1);
		for (ReserveInfoJob r1:reserveInfoJobs
			 ) {
			System.out.println(r1.toString());
		}
		assertEquals(5,reserveInfoJobs.size());
	}


}