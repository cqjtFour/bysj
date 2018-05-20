package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Employers;
import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.Student;
import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.service.EmployerService;
import com.cqfour.bysj.service.StudentService;
import com.cqfour.bysj.service.UserService;
import com.cqfour.bysj.util.EmailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

@Controller
public class ForgetPassWordController {

    @Autowired
    private UserService userService;
    @Autowired
    private StudentService studentService;

    @Autowired
    private EmployerService employerService;

    @RequestMapping("/forgetPassword")
    public String forgetPssword(){
        return "/WEB-INF/jsp/forgetPassword.jsp";
    }

    @RequestMapping("/sendEmail")
    @ResponseBody
    public Message sendMessageToEmail(String username,String email){
        User user = userService.getUser(username);
        Message message = new Message();
        if (user==null){
            message.setMsg("请检查账号是否输入正确，该账号不存在");
        }else{
            //判断账号是用人单位还是学生
            if (user.getJsbh()==3){
                Student student = studentService.selectOneStudentByDLZH(username);
                if (student.getEmail().equals(email)){
                    InternetAddress[] addresses = new InternetAddress[1];
                    try {
                        addresses[0] = new InternetAddress(email);
                        EmailUtil.sendEmail(addresses,user.getDlmm());
                        message.setMsg("密码已经发送至邮件");
                        message.setStatus("1");
                    } catch (AddressException e) {
                        e.printStackTrace();
                    } catch (MessagingException e) {
                        e.printStackTrace();
                    }
                }else{
                    message.setMsg("输入的账号与邮箱不匹配！");
                }
            }
            if (user.getJsbh()==4){
                Employers employers = employerService.getOneEmployer(username);
                if (employers.getDzyx().equals(email)){
                    InternetAddress[] addresses = new InternetAddress[10];
                    try {
                        addresses[0] = new InternetAddress(email);
                        EmailUtil.sendEmail(addresses,user.getDlmm());
                        message.setMsg("密码已经发送至邮件");
                    } catch (AddressException e) {
                        e.printStackTrace();
                    } catch (MessagingException e) {
                        e.printStackTrace();
                    }
                }
            }
            if (user.getJsbh()==2||user.getJsbh()==1){
                message.setMsg("学校人员密码请直接联系管理员");
            }
        }
        return message;
    }


}
