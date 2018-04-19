package com.cqfour.bysj;

import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BysjApplicationTests {

	@Autowired
	private UserService userService;
	private User user;

}
