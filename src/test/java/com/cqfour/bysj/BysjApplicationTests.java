package com.cqfour.bysj;

import com.cqfour.bysj.bean.*;
import com.cqfour.bysj.service.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.FileCopyUtils;

import java.io.File;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BysjApplicationTests {

	@Autowired
	private UserService userService;
	private User user;

	@Autowired
	private StudentService studentService;

	@Autowired
	private PrivateMessageService privateMessageService;

	@Autowired
	private EmployersService employersService;

	@Autowired
	private JobService jobService;

	@Autowired
	private  ApplyService applyService;

	@Value("${web.upload-path}")
	private String path;

	/** 文件上传测试 */
	@Test
	public void uploadTest() throws Exception {
		File f = new File("C:/Users/HYHSG/Desktop/images/welcome.jpg");
		FileCopyUtils.copy(f, new File(path+"/2.jpg"));
	}

	@Test
	public void listFilesTest() {
		File file = new File(path);
		for(File f : file.listFiles()) {
			System.out.println("fileName : "+f.getName());
		}
	}
	@Test
	public void studentTest(){
		Student student=new Student();
		student.setXh("631406010107");
		student.setQwzw("C#开发工程师");
		student.setQwhy("计算机软件");
		student.setXsxm("关羽");
		studentService.updateStudent(student);
		student=studentService.getStudent(student.getXh());
		System.out.println(student.getXsxm());
	}

	@Test
	public  void  privateMessageTest(){
       String fsyhzh="631406010103";
       String jsyhzh="1212@qq.com";
		List<PrivateMessage> privateMessages=privateMessageService.getPrivateMessageList(fsyhzh,jsyhzh);
		for (PrivateMessage privateMessage:privateMessages){
			System.out.println(privateMessage.getFsyhmc()+" 发送  "+privateMessage.getXxnr()+" 到 "+privateMessage.getJsyhmc());
		}

	}

	@Test
	public void ConversationNameListTest(){
		String zh="631406010107";
		List<PrivateMessage> privateMessages=privateMessageService.getConversationNameList(zh);
		for (PrivateMessage privateMessage:privateMessages){
			System.out.println(privateMessage.getFsyhzh()+" "+privateMessage.getFsyhmc());
		}
	}

	@Test
	public void iinsertPrivateMessageTest(){
		PrivateMessage privateMessage=new PrivateMessage();
		privateMessage.setFsyhzh("1212@qq.com");
		privateMessage.setFsyhmc("阿里");
		privateMessage.setJsyhzh("631406010103");
		privateMessage.setJsyhmc("吴国平");
		privateMessage.setFssj("2018-04-28 13:11:15");
		privateMessage.setXxnr("你已通过体检，如果有意向签约阿里，请明天早上10点带上三方协议到语音楼2楼会议室签约");
		privateMessage.setZt((short) 0);
		int i=privateMessageService.insertPrivateMessage(privateMessage);
		if(i >0)
			System.out.println("success");
		else
			System.out.println("fail");
	}

	@Test
	public void getStudentNameTest(){
		String xh="631406010103";
		String s=studentService.getStudentName(xh);
		System.out.println(s+" 66666");
	}

	@Test
		public void getEmployerNameTest(){
		String dlzh="1212@qq.com";
		String dwmc=employersService.getEmployerName(dlzh);
		System.out.println(dwmc);
	}

	@Test
	public void getRoleNumberTest(){
		String dlzh="631406010103";
		int jsbh=userService.getRoleNumber(dlzh);
		System.out.println(jsbh);
	}

	@Test
	public void getUnreadNumberTest(){
		String fsyhzh="1212@qq.com";
		String jsyhzh="631406010103";
		String i=privateMessageService.getUnreadMessage(fsyhzh,jsyhzh);
		System.out.println(i);
	}

	@Test
	public  void setAlreadyReadTest(){
		String fsyhzh="1212@qq.com";
		String jsyhzh="631406010106";
		privateMessageService.setAlreadyRead(fsyhzh,jsyhzh);
	}

	@Test
	public void getEmployerTest(){
		String dlzh="1212@qq.com";
		Employers employers=employersService.getEmployer(dlzh);
		System.out.println(employers);
	}

	@Test
	public  void getGwList(){
		int yrdwxxbbh=2;
		List<Job> list= jobService.getGwList(yrdwxxbbh);
		for (Job s: list){
		}

	}

	@Test
	public  void getStudentsByGw(){
		int zpgwbh=5;
		String startTime=null;
		String endTime=null;
		int ckzt=0;
		List<Apply> xhs=applyService.getStudentsByGw(zpgwbh,startTime,endTime,ckzt);
		for (Apply xh: xhs){
			System.out.println(xh.getJob().getMc()+"  "+xh.getStudent().getXsxm()+" "+xh.getStudent().getDiscipline().getZymc()+"  "+xh.getYpsj()+"  "+xh.getCkzt());
		}

	}

}
