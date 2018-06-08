package com.cqfour.bysj;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * Created by a on 2018/5/22.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class EmaliTest {

	@Autowired
	JavaMailSenderImpl mailSender;

	@Test
	public void contextLoads(){
		SimpleMailMessage message=new SimpleMailMessage();
		//邮件设置
		message.setSubject("SimpleMailMessageTest");
		message.setText("Testtesttest");
		message.setTo("2151103508@qq.com");
		message.setFrom("837719162@qq.com");
		mailSender.send(message);
	}
}
