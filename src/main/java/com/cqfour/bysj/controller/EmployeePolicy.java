package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.SchoolNews;
import com.cqfour.bysj.service.SchoolNewsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class EmployeePolicy {

    @Autowired
    private SchoolNewsService schoolNewsService;

    @RequestMapping("/employmentpolicy")
    public String employment_policy(@RequestParam(value = "page", defaultValue = "1")Integer page, HttpServletRequest request){
        List<SchoolNews> schoolNews = schoolNewsService.selectEmploymentPolicyByLlcs();
        request.getSession().setAttribute("ep_llcs",schoolNews);
        List<SchoolNews> schoolNewsByDate = schoolNewsService.selectEmploymentPolicyByDate();
        request.getSession().setAttribute("ep_date",schoolNewsByDate);
        PageHelper.startPage(page,10);
        List<SchoolNews> employmentGuidance = schoolNewsService.selectAllEmploymentPolicy();
        PageInfo pageInfo = new PageInfo(employmentGuidance,5);
        request.setAttribute("ep_pageInfo",pageInfo);
        return "/WEB-INF/jsp/employment-policy.jsp";
    }

    @RequestMapping("/employmentPolicyToPage")
    @ResponseBody
    public Message employmentGuidanceToPage(@RequestParam(value = "page", defaultValue = "1")Integer page, HttpServletRequest request){
        PageHelper.startPage(page,10);
        List<SchoolNews> employmentGuidance = schoolNewsService.selectAllEmploymentPolicy();
        PageInfo pageInfo = new PageInfo(employmentGuidance,5);
        request.setAttribute("ep_pageInfo",pageInfo);
        Message message = new Message();
        message.setStatus("success");
        return message;
    }
}
