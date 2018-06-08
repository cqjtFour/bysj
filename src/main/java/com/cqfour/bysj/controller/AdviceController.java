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

/**
 * 通知公告
 */
@Controller
public class AdviceController {

    @Autowired
    private SchoolNewsService schoolNewsService;

    /**
     * 初始化通知公告信息
     * @param page
     * @param request
     * @return
     */
    @RequestMapping("/advice")
    public String advice(@RequestParam(value = "page", defaultValue = "1")Integer page, HttpServletRequest request){
        List<SchoolNews> schoolNews = schoolNewsService.selectAdivceByllcu();
        request.getSession().setAttribute("advicellcs",schoolNews);
        List<SchoolNews> schoolNewsByDate = schoolNewsService.selectAdviceByDate();
        request.getSession().setAttribute("adviceDate",schoolNewsByDate);
        PageHelper.startPage(page,10);
        List<SchoolNews> advices = schoolNewsService.selectAllAdvice();
        PageInfo pageInfo = new PageInfo(advices,5);
        request.setAttribute("pageInfo",pageInfo);
        return "/WEB-INF/jsp/advice.jsp";
    }

    /**
     * 分页查询通知
     * @param page
     * @param request
     * @return
     */
    @RequestMapping("/adviceToPage")
    @ResponseBody
    public Message advicePage(@RequestParam(value = "page", defaultValue = "1")Integer page, HttpServletRequest request){
        PageHelper.startPage(page,10);
        List<SchoolNews> advices = schoolNewsService.selectAllAdvice();
        PageInfo pageInfo = new PageInfo(advices,5);
        request.setAttribute("pageInfo",pageInfo);
        Message message = new Message();
        message.setStatus("success");
        return message;
    }


}
