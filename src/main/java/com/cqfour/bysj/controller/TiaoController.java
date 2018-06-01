package com.cqfour.bysj.controller;

import com.cqfour.bysj.service.SchoolNewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 控制页面之间的跳转
 */
@Controller
public class TiaoController {

    @Autowired
    private SchoolNewsService schoolNewsService;

    @RequestMapping("/index")
    public String index(HttpServletRequest request){
        request.getSession().setAttribute("specialEmployee",schoolNewsService.getSpecialEmployee());
        request.getSession().setAttribute("socialEmployee",schoolNewsService.selectSocialEmployee());
        request.getSession().setAttribute("doubleMeeting",schoolNewsService.selectDoubleMeeting());
        request.getSession().setAttribute("employmentPolicy",schoolNewsService.selectEmploymentPocily());
        request.getSession().setAttribute("employmentGuidance",schoolNewsService.selectEmploymentGuidance());
        request.getSession().setAttribute("advice",schoolNewsService.selectAdvice());
        return "/WEB-INF/jsp/index.jsp";
    }

    @RequestMapping("/doublemeeting")
    public String double_meeting(){
        return "/WEB-INF/jsp/double-meeting.jsp";
    }

    @RequestMapping("/download")
    public String download(){
        return "/WEB-INF/jsp/download.jsp";
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

    @RequestMapping("/myResume")
    public String myResume(){
        return "/WEB-INF/main/myResume.jsp";
    }

    @RequestMapping("/welcome")
    public String welcome(){
        return "/WEB-INF/main/welcome.jsp";
    }
    @RequestMapping("/passwordUpdate")
    public String passwordUpdate(){
        return "/WEB-INF/main/passwordUpdate.jsp";
    }
    @RequestMapping("/messageCheck")
    public String messageCheck(){
        return "/WEB-INF/main/messageCheck.jsp";
    }
    @RequestMapping("/publishRecInfo")
    public String publishRecInfo(){
        return "/WEB-INF/main/publishRecInfo.jsp";
    }
    @RequestMapping("/recInfoHistory")
    public String recInfoHistory(){
        return "/WEB-INF/main/recInfoHistory.jsp";
    }
    @RequestMapping("/jobSearch")
    public String jobSearch(){
        return "/WEB-INF/main/jobsearch.jsp";
    }

    @RequestMapping("/checkRecord")
    public String checkRecord(){
        return "/WEB-INF/main/checkRecord.jsp";
    }

    @RequestMapping("/jobResume")
    public String jobResume(){
        return "/WEB-INF/main/jobResume.jsp";
    }

    @RequestMapping("/recruitment")
    public String recruitment(){
        return "/WEB-INF/main/recruitment.jsp";
    }

    @RequestMapping("/signIn")
    public String signIn(){
        return "/WEB-INF/jsp/signin.jsp";
    }

    @RequestMapping("/resume")
    public String resume(){
        return "/WEB-INF/main/resume.jsp";
    }

    @RequestMapping("/test")
    public String test(){
        return "/WEB-INF/main/test.jsp";
    }

    @RequestMapping("/success")
    public String success(){
        return "/WEB-INF/main/success.jsp";
    }

    @RequestMapping("/ws")
    public String ws(){
        return "/WEB-INF/main/ws.jsp";
    }
}
