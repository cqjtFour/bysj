package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.service.ApplyService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ApplyController {

    @Autowired
    private ApplyService applyService;

    @RequestMapping("/deliveredResume")
    public String deliveredResume(@RequestParam(value = "page", defaultValue = "1")Integer page
            ,@RequestParam(value= "status",defaultValue = "0",required = false) String status, HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        PageHelper.startPage(page,5);
        PageInfo pageInfo = new PageInfo(applyService.selectAllJobByStuNo(user.getDlzh(),Integer.parseInt(status)),5);
        request.setAttribute("jobInfo",pageInfo);
        return "/WEB-INF/main/deliveredResume.jsp";
    }
    @RequestMapping("/deliveredResumeToPage")
    @ResponseBody
    public Message deliveredResumeToPage(@RequestParam(value = "page", defaultValue = "1")Integer page
            ,@RequestParam(value= "status",defaultValue = "0",required = false) String status, HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        PageHelper.startPage(page,5);
        PageInfo pageInfo = new PageInfo(applyService.selectAllJobByStuNo(user.getDlzh(),Integer.parseInt(status)),5);
        request.setAttribute("jobInfo",pageInfo);
        request.setAttribute("status",status);
        Message message = new Message();
        message.setStatus("success");
        return message;
    }

}
