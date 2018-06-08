package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Employers;
import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.mapper.EmployersMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * Created by a on 2018/5/12.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class EmployerServiceTest {
	@Test
	public void getEmployersById() throws Exception {
		Integer id=1;
		Employers employers=employerService.getEmployersById(id);
		System.out.println("单位："+employers.getDwmc());
	}

	@Autowired
	private EmployerService employerService;

	@Autowired
	private EmployersMapper employersMapper;

	@Test
	public void addEmployertest() throws Exception {
		Employers e=new Employers();
		User user=new User();
		user.setDlzh("12332322332@qq.com");
		e.setDwgm("中国电信阿斯顿撒大苏打撒旦撒打算水撒大苏打撒旦撒旦撒大苏打实打实大苏打撒阿斯顿撒旦撒大苏打撒旦撒啊倒萨阿萨啊实打实大苏打撒旦撒大苏打实打实啊实打实大苏打大苏打上啊撒大苏打撒水十大师大的阿斯顿撒大大的阿斯顿撒阿斯顿阿斯顿是阿三大苏打撒旦撒大大撒大大撒旦撒撒大苏打阿三阿斯顿阿三阿斯顿大少啊实打实大苏打上啊实打实大苏打撒大苏打");
		try{
			employerService.register(e,user);
		}catch (Exception e1){
			System.out.println("错误原因："+e1.getMessage());
		}

	}

}