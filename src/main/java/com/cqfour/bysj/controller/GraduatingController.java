package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Student;
import com.cqfour.bysj.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class GraduatingController {

    @Autowired
    private StudentService studentService;

    public String getAllStudent(HttpServletRequest request){
        List<Student> allStudent = studentService.getAllStudent();
        request.setAttribute("student",allStudent);
        return "/WEB-INF/jsp/graduating.jsp";
    }
}
