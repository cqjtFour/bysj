package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.EmployersInfoCheck;
import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.util.DateUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by a on 2018/5/20.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class EmployersInfoCheckMapperTest {


	@Autowired
	private EmployersInfoCheckMapper employersInfoCheckMapper;

	@Test
	public void getlist() throws Exception {
		List<EmployersInfoCheck> e=employersInfoCheckMapper.getlist((short)-1);
		for (EmployersInfoCheck e1:e
			 ) {
			//System.out.println(e1.getEmploymentDepartment().getRymc());
		}
		assertEquals(7,e.size());
	}

	@Test
	public void aggre() throws Exception {
		EmployersInfoCheck e=new EmployersInfoCheck();
		e.setYrdwxxshbbh(1);
		e.setShsj(DateUtil.getStringDate());
		e.setShzt((short)1);
		System.out.println("test:"+employersInfoCheckMapper.updateByPrimaryKeySelective(e));


	}

}