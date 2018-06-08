package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * Created by a on 2018/5/13.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class UserServiceTest {

	@Autowired
	private UserService userService;

	@Test
	public void getAllUser() throws Exception {

	}

	@Test
	public void getUser() throws Exception {

	}

	@Test
	public void addUser() throws Exception {
		User user=new User();
		user.setDlzh("1213@qq.com");

		userService.addUser(user);
	}

	@Test
	public void validUesr() throws  Exception{
		User user=new User();
		user.setDlzh("123@qq.com");

		boolean flag=userService.validUser(user);
		if (flag){
			System.out.print("已存在");
		}else {
			System.out.print("不存在存在");
		}
	}

}