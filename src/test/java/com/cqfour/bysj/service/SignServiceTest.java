package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Employers;
import com.cqfour.bysj.bean.Sign;
import com.cqfour.bysj.mapper.EmployersMapper;
import com.cqfour.bysj.mapper.SignMapper;
import com.cqfour.bysj.mapper.StudentMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by a on 2018/5/23.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class SignServiceTest {

	@Autowired
	private SignMapper signMapper;

	@Autowired
	private SignService signService;

	@Autowired
	private StudentMapper studentMapper;

	@Autowired
	private EmployersMapper employersMapper;

	@Test
	public void test(){
		String xh="asdas";
		List<Sign> signs=signMapper.getAllSignInfo(xh);
		for (Sign s: signs
			 ) {
			System.out.println(s.getStudent().getXsxm()+"+"+s.getEmployers().getDwmc()+s.getEmployers().getYrdwxxbbh()+"+"+s.toString());
		}
		assertEquals(0,signs.size());
	}

	@Test
	public void validate(){
		assertEquals(true,studentMapper.existsWithPrimaryKey("631406010103"));
		Employers employer=new Employers();
		employer.setDwmc("中国铁22塔");
		Employers employer1=employersMapper.selectOne(employer);
		System.out.println("id:"+employer1.getYrdwxxbbh());


	}


	@Test
	public void test2024(){

		assertEquals(true,signService.validateEmployer("中国铁塔"));

	}


}