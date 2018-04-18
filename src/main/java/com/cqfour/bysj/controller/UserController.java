package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.SysUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/advice")
    public String advice(){
        return "advice";
    }

    @RequestMapping("/doublemeeting")
    public String double_meeting(){
        return "double-meeting";
    }

    @RequestMapping("/download")
    public String download(){
        return "download";
    }

    @RequestMapping("/employmentguidance")
    public String employment_guidance(){
        return "employment-guidance";
    }

    @RequestMapping("/employmentpolicy")
    public String employment_policy(){
        return "employment-policy";
    }

    @RequestMapping("/graduating")
    public String graduating(){
        return "graduating";
    }

    @RequestMapping("/socialrecruitment")
    public String social_recruitment(){
        return "social-recruitment";
    }

    @RequestMapping("/specialrecruitment")
    public String special_recruitment(){
        return "special-recruitment";
    }

    @RequestMapping("/studentresume")
    public String student_resume(){
        return "student-resume";
    }


}
