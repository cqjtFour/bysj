package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Employers;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * Created by a on 2018/5/14.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class EmployersMapperTest {

	@Autowired
	private EmployersMapper employersMapper;

	@Test
	public void insertReturn() throws Exception {
		Employers employers=new Employers();
		employers.setDwmc("123");
		int i=employersMapper.insertReturn(employers);
		System.out.println("数量+"+i);
		System.out.println("id+"+employers.getYrdwxxbbh());
	}

}