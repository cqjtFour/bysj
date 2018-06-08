package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.PrivateMessage;
import com.cqfour.bysj.bean.Student;
import com.cqfour.bysj.service.EmployersService;
import com.cqfour.bysj.service.PrivateMessageService;
import com.cqfour.bysj.service.StudentService;
import com.cqfour.bysj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by HYHSG on 2018/5/14.
 */
@Controller
public class PrivateMessageController {
    @Autowired
    private PrivateMessageService privateMessageService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private EmployersService employersService;

    @Autowired
    private UserService userService;

    /**
     * 获得通信双方的信息历史
     */
    @RequestMapping("/getMessageHistory")
    @ResponseBody
    public List<PrivateMessage> getMessageHistory(PrivateMessage privateMessage){
        List<PrivateMessage> privateMessages=privateMessageService.getPrivateMessageList(privateMessage.getFsyhzh(),privateMessage.getJsyhzh());
        return privateMessages;
    }




    /**
     * 插入一条新的通信信息
     */
    @MessageMapping("/insertPrivateMessage")
    @SendTo("/topic/getResponse")
    public List<PrivateMessage> insertPrivateMessage(PrivateMessage privateMessage){
        if(userService.getRoleNumber(privateMessage.getFsyhzh())==3)
            privateMessage.setFsyhmc(studentService.getStudentName(privateMessage.getFsyhzh()));
        else if (userService.getRoleNumber(privateMessage.getFsyhzh())==4)
            privateMessage.setFsyhmc(employersService.getEmployerName(privateMessage.getFsyhzh()));
        if(userService.getRoleNumber(privateMessage.getJsyhzh())==3)
            privateMessage.setJsyhmc(studentService.getStudentName(privateMessage.getJsyhzh()));
        else if (userService.getRoleNumber(privateMessage.getJsyhzh())==4)
            privateMessage.setJsyhmc(employersService.getEmployerName(privateMessage.getJsyhzh()));

        int i=privateMessageService.insertPrivateMessage(privateMessage);
        List<PrivateMessage> privateMessages=null;
        if (i>0)
        privateMessages=privateMessageService.getPrivateMessageList(privateMessage.getFsyhzh(),privateMessage.getJsyhzh());
        else
            System.out.println("Insert private message fail!");
        return privateMessages;
    }

    /**
     * 更改信息发送者的所有信息为已读，1表示已读，0表示未读
     */
    @RequestMapping("/setAlreadyRead")
    @ResponseBody
    public Message setAlreadyRead(PrivateMessage privateMessage, HttpServletRequest request){
        Message message=new Message();
        privateMessageService.setAlreadyRead(privateMessage.getJsyhzh(),privateMessage.getFsyhzh());
        List<PrivateMessage> conversationNameList=privateMessageService.getConversationNameList(privateMessage.getFsyhzh());
        String []unreadMessageNumbers=new String[30];
        int i=0;
        for (PrivateMessage privateMessage1:conversationNameList){
            unreadMessageNumbers[i]=privateMessageService.getUnreadMessage(privateMessage1.getFsyhzh(),privateMessage.getFsyhzh());
            if (unreadMessageNumbers[i].equals("0"))
                unreadMessageNumbers[i]=null;
            i++;
        }
        request.getSession().setAttribute("unreadMessageNumbers",unreadMessageNumbers);
        return  message;
    }

    /**
     *服务器推送新的未读信息数
     */
    @MessageMapping("/getNewUnreadMessageNumbers")//@MessageMapping是路由地址，客户端请求由其处理
    @SendTo("/topic/getUnreadMessageNumbers")//@SendTo是返回消息路由到指定地址，订阅该地址的将接收到消息
    public List<Message> getNewUnreadMessageNumbers(PrivateMessage privateMessage){
        Message message;
        List<PrivateMessage> conversationNameList=privateMessageService.getConversationNameList(privateMessage.getJsyhzh());
        List<Message> messages=new ArrayList<>();
        int i=0;
        for (PrivateMessage privateMessage1:conversationNameList){
            message=new Message();
            message.setStatus(privateMessage1.getFsyhmc());
            message.setMsg(privateMessageService.getUnreadMessage(privateMessage1.getFsyhzh(),privateMessage.getJsyhzh()));
            if (message.getMsg().equals("0"))
               message.setMsg("");
            messages.add(message);
            i++;
        }
        List<PrivateMessage> privateMessages=privateMessageService.getPrivateMessageList(privateMessage.getFsyhzh(),privateMessage.getJsyhzh());
        return messages;
    }

    /**
     * 用人单位给某个学生留言的准备动作
     */
    @RequestMapping("/employerStudentMessage")
    @ResponseBody
    public Message employerStudentMessage(String dlzh,String xh ,HttpServletRequest request){
        List<PrivateMessage> conversationNameList=privateMessageService.getConversationNameList(dlzh);
        String []unreadMessageNumbers=new String[30];
        int i=0;
        for (PrivateMessage privateMessage:conversationNameList) {
            unreadMessageNumbers[i] = privateMessageService.getUnreadMessage(privateMessage.getFsyhzh(), dlzh);
            if (unreadMessageNumbers[i].equals("0"))
                unreadMessageNumbers[i] = null;
            i=i+1;
        }
        request.getSession().setAttribute("unreadMessageNumbers",unreadMessageNumbers);
        int  j=0;
        for (PrivateMessage privateMessage: conversationNameList){
            if (privateMessage.getFsyhzh().equals(xh))
                j++;
        }
        if(j==0){
            PrivateMessage privateMessage=new PrivateMessage();
            privateMessage.setFsyhzh(xh);
            Student student=studentService.getStudent(xh);
            privateMessage.setFsyhmc(student.getXsxm());
            conversationNameList.add(privateMessage);
        }
        request.getSession().setAttribute("conversationNameList",conversationNameList);
        Message message=new Message();
        message.setStatus("success");
        message.setMsg("success");
        return message;
    }


    /**
     * 学生给某用人单位留言
     */
    @RequestMapping("/studentEmployerMessage")
    @ResponseBody
    public Message studentEmployerMessage(String fsyhzh,String jsyhzh ,HttpServletRequest request){
        System.out.println("fsyhzh:"+fsyhzh+"  jsyhzh:"+jsyhzh);
        List<PrivateMessage> conversationNameList=privateMessageService.getConversationNameList(fsyhzh);
        String []unreadMessageNumbers=new String[30];
        int i=0;
        for (PrivateMessage privateMessage:conversationNameList) {
            unreadMessageNumbers[i] = privateMessageService.getUnreadMessage(privateMessage.getFsyhzh(), fsyhzh);
            if (unreadMessageNumbers[i].equals("0"))
                unreadMessageNumbers[i] = null;
            i=i+1;
        }
        request.getSession().setAttribute("unreadMessageNumbers",unreadMessageNumbers);
        int  j=0;
        for (PrivateMessage privateMessage: conversationNameList){
            if (privateMessage.getFsyhzh().equals(jsyhzh))
                j++;
        }
        if(j==0){
            PrivateMessage privateMessage=new PrivateMessage();
            privateMessage.setFsyhzh(jsyhzh);
            String dwmc=employersService.getEmployerName(jsyhzh);
            privateMessage.setFsyhmc(dwmc);
            conversationNameList.add(privateMessage);
        }
        request.getSession().setAttribute("conversationNameList",conversationNameList);
        Message message=new Message();
        message.setStatus("success");
        message.setMsg("success");
        return message;
    }
}
