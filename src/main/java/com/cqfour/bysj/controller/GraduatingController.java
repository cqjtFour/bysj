package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Message;
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
 * 毕业去向
 */
@Controller
public class GraduatingController {

    @Autowired
    private StudentService studentService;

    /**
     * 查询所有学生，初始化界面信息
     * @param page
     * @param request
     * @return
     */
    @RequestMapping("/graduating")
    public String getAllStudent(@RequestParam(value = "page", defaultValue = "1")Integer page, HttpServletRequest request){
        PageHelper.startPage(page,8);
        List<Student> allStudent = studentService.getAllStudent();
        PageInfo pageInfo = new PageInfo(allStudent,5);
        request.setAttribute("student_pageInfo",pageInfo);
        return "/WEB-INF/jsp/graduating.jsp";
    }

    /**
     * 分页查询
     * @param page
     * @param request
     * @return
     */
//    @RequestMapping("/graduatingToPage")
//    @ResponseBody
//    public Message getAllStudentToPage(@RequestParam(value = "page", defaultValue = "1")Integer page, HttpServletRequest request){
//        PageHelper.startPage(page,8);
//        List<Student> allStudent = studentService.getAllStudent();
//        PageInfo pageInfo = new PageInfo(allStudent,5);
//        request.setAttribute("student_pageInfo",pageInfo);
//        Message message = new Message();
//        message.setStatus("success");
//        return message;
//    }

    /**
     *
     * @param stuName
     * @param stuNo
     * @param request
     * @return
     */
    @RequestMapping("/queryStudent")
    public String queryStudent(@RequestParam(value = "page", defaultValue = "1")Integer page,@RequestParam(value = "stuName") String stuName,
                             @RequestParam(value = "stuNo")String stuNo,HttpServletRequest request){
        PageHelper.startPage(1,8);
        List<Student> someStudent;
        if ((stuName==null||stuName.equals(""))&&(stuNo==null||stuNo.equals(""))){
            someStudent = studentService.getAllStudent();
        }else{
            someStudent = studentService.selectSomeStudent(stuName,stuNo);
        }
        PageInfo pageInfo = new PageInfo(someStudent,5);
        request.setAttribute("student_pageInfo",pageInfo);
        request.setAttribute("stuName",stuName);
        request.setAttribute("stuNo",stuNo);
        return "/WEB-INF/jsp/graduating.jsp";
    }

    @RequestMapping("/queryStudentToPage")
    @ResponseBody
    public Message queryStudentPage(@RequestParam(value = "page", defaultValue = "1")Integer page,@RequestParam(value = "stuName",required = false) String stuName,
                               @RequestParam(value = "stuNo",required = false)String stuNo,HttpServletRequest request){
        PageHelper.startPage(page,8);
        List<Student> someStudent;
        if ((stuName==null||stuName.equals(""))&&(stuNo==null||stuNo.equals(""))){
            someStudent = studentService.getAllStudent();
        }else{
            someStudent = studentService.selectSomeStudent(stuName,stuNo);
        }
        PageInfo pageInfo = new PageInfo(someStudent,5);
        request.setAttribute("student_pageInfo",pageInfo);
        request.setAttribute("stuName",stuName);
        request.setAttribute("stuNo",stuNo);
        Message message = new Message();
        message.setStatus("success");
        return message;
    }
}
