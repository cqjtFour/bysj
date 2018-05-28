package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.EmployersInfoCheck;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

/**
 * Created by a on 2018/5/21.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class EmployersInfoCheckServiceTest {


	@Autowired
	private EmployersInfoCheckService employersInfoCheckService;

	/**
	 *测试service分页
	 * @throws Exception
	 */
	@Test
	public void getCheckList() throws Exception {
		PageInfo<EmployersInfoCheck> pageInfo=employersInfoCheckService.getCheckList(1,5,(short)1);
		assertEquals(4,pageInfo.getTotal());
		assertEquals(4,pageInfo.getSize());
	}

	@Test
	public void changeShzt() throws Exception {
		Integer yrdwxxshbbh=10;
		short shzt=1;
		String dwdlzh="1231112221@qq.com";
		String zgdlzh="120";
		employersInfoCheckService.changeShzt(yrdwxxshbbh,shzt,dwdlzh,zgdlzh);
	}

}