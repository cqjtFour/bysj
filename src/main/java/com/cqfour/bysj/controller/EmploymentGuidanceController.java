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
public class EmploymentGuidanceController {

    @Autowired
    private SchoolNewsService schoolNewsService;

    @RequestMapping("/employmentguidance")
    public String employment_guidance(@RequestParam(value = "page", defaultValue = "1") Integer page, HttpServletRequest request) {
        List<SchoolNews> schoolNews = schoolNewsService.selectEmploymentGuidanceByLlcs();
        request.getSession().setAttribute("eg_llcs", schoolNews);
        List<SchoolNews> schoolNewsByDate = schoolNewsService.selectEmploymentGuidanceByDate();
        request.getSession().setAttribute("eg_date", schoolNewsByDate);
        PageHelper.startPage(page, 10);
        List<SchoolNews> employmentGuidance = schoolNewsService.selectAllEmploymentGuidance();
        PageInfo pageInfo = new PageInfo(employmentGuidance, 5);
        request.setAttribute("eg_pageInfo", pageInfo);
        return "/WEB-INF/jsp/employment-guidance.jsp";
    }

    @RequestMapping("/employmentGuidanceToPage")
    @ResponseBody
    public Message employmentGuidanceToPage(@RequestParam(value = "page", defaultValue = "1") Integer page, HttpServletRequest request) {
        PageHelper.startPage(page, 10);
        List<SchoolNews> employmentGuidance = schoolNewsService.selectAllEmploymentGuidance();
        PageInfo pageInfo = new PageInfo(employmentGuidance, 5);
        request.setAttribute("eg_pageInfo", pageInfo);
        Message message = new Message();
        message.setStatus("success");
        return message;
    }
}
