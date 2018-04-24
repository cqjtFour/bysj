package com.cqfour.bysj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 控制页面之间的跳转
 */
@Controller
public class TiaoController {

    @RequestMapping("/index")
    public String index(){
        return "/WEB-INF/jsp/index.jsp";
    }

    @RequestMapping("/advice")
    public String advice(){
        return "/WEB-INF/jsp/advice.jsp";
    }

    @RequestMapping("/doublemeeting")
    public String double_meeting(){
        return "/WEB-INF/jsp/double-meeting.jsp";
    }

    @RequestMapping("/download")
    public String download(){
        return "/WEB-INF/jsp/download.jsp";
    }

    @RequestMapping("/employmentguidance")
    public String employment_guidance(){
        return "/WEB-INF/jsp/employment-guidance.jsp";
    }

    @RequestMapping("/employmentpolicy")
    public String employment_policy(){
        return "/WEB-INF/jsp/employment-policy.jsp";
    }

    @RequestMapping("/graduating")
    public String graduating(){
        return "/WEB-INF/jsp/graduating.jsp";
    }

    @RequestMapping("/socialrecruitment")
    public String social_recruitment(){
        return "/WEB-INF/jsp/social-recruitment.jsp";
    }

    @RequestMapping("/specialrecruitment")
    public String special_recruitment(){
        return "/WEB-INF/jsp/special-recruitment.jsp";
    }

    @RequestMapping("/studentresume")
    public String student_resume(){
        return "/WEB-INF/jsp/student-resume.jsp";
    }

    @RequestMapping("/login")
    public String login(){
        return "/WEB-INF/jsp/login.jsp";
    }

    @RequestMapping("/show")
    public  String show(){ return "/WEB-INF/jsp/show.jsp";}

    @RequestMapping("/mainView")
    public String mainView(){
        return "/WEB-INF/main/mainView.jsp";
    }
   
    @RequestMapping("/createResume")
    public String createResume(){
        return  "/WEB-INF/main/createResume.jsp";
    }

    @RequestMapping("/addMenu")
    public String addMenu(){
        return "/WEB-INF/main/addMenu.jsp";
    }

}
