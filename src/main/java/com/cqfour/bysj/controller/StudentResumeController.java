package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.SchoolNews;
import com.cqfour.bysj.bean.Student;
import com.cqfour.bysj.service.StudentService;
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
 * 学生简历
 */
@Controller
public class StudentResumeController {

    @Autowired
    private StudentService studentService;

    /**
     * 分页查询
     * @param page
     * @param request
     * @return
     */
    @RequestMapping("/studentresumeToPage")
    @ResponseBody
    public Message student_resumeToPage(@RequestParam(value = "page", defaultValue = "1")Integer page,
                                        @RequestParam(value= "input") String input,HttpServletRequest request){
        PageHelper.startPage(page,10);
        List<Student> allStudent ;
        if (input==null||input.equals("")){
            allStudent = studentService.getAllStudent();
        }else{
            allStudent = studentService.selectStudentByInput(input);
        }
        PageInfo pageInfo = new PageInfo(allStudent,5);
        request.setAttribute("student_pageInfo",pageInfo);
        request.setAttribute("input" , input);
        Message message = new Message();
        message.setStatus("success");
        return message;
    }

    /**
     * 模糊查询学生
     * @param
     * @param request
     * @return
     */
    @RequestMapping("/studentresume")
    public String sortByDateBigToSmall(@RequestParam(value = "page", defaultValue = "1")Integer page,
                                       @RequestParam(value= "input",required = false) String input,HttpServletRequest request){
        PageHelper.startPage(page,10);
        List<Student> someStudent;
        if (input==null||input.equals("")){
            someStudent = studentService.getAllStudent();
        }else{
            someStudent = studentService.selectStudentByInput(input);
        }
        PageInfo pageInfo = new PageInfo(someStudent,5);
        request.setAttribute("student_pageInfo",pageInfo);
        request.setAttribute("inputResult" , input);
        return "/WEB-INF/jsp/student-resume.jsp";
    }

}
