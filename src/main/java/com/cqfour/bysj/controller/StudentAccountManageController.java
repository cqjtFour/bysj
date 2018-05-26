package com.cqfour.bysj.controller;


import com.cqfour.bysj.bean.Discipline;
import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.Student;
import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.service.DisciplineService;
import com.cqfour.bysj.service.StudentService;
import com.cqfour.bysj.service.UserService;
import com.cqfour.bysj.util.ExcelImportUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import jxl.Sheet;
import jxl.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class StudentAccountManageController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private DisciplineService disciplineService;

    @Autowired
    private UserService userService;

    @RequestMapping("/studentAccountManage")
    public String mainView() {
        return "/WEB-INF/main/studentAccountManage.jsp";
    }

    @RequestMapping("/stuAccountManageInfo")
    @ResponseBody
    public PageInfo getAllStudent(@RequestParam(value = "page", defaultValue = "1") Integer page) {
        List<Discipline> disciplines = disciplineService.selectAllWithFaculty();
        PageHelper.startPage(page, 10);
        List<Student> list = studentService.getAllStudent();
        for (Student student : list) {
            for (Discipline discipline : disciplines) {
                if (student.getZybh().equals(discipline.getZybh())) {
                    student.setDiscipline(discipline);
                }
            }
            User user = userService.getUser(student.getDlzh());
            student.setUser(user);
        }
        PageInfo pageInfo = new PageInfo(list, 5);
        return pageInfo;
    }
    @RequestMapping("/fileUrl")

    @ResponseBody
    public Message testExcel(@RequestParam("file") MultipartFile file){
        Message message = new Message();

        //获取文件名
        String fileName=file.getOriginalFilename();

        //验证文件名是否合格
        if(!ExcelImportUtils.validateExcel(fileName)){
            message.setMsg("文件必须是excel格式！");
            return message;
        }
        String s = studentService.batchImport(fileName, file);
        System.out.println(s+"-=-=-=-=-=-=--=-=--=--");
        if (s.equals("")||s==null||s.length()==0) {
            message.setMsg("true");
        }
        else {
            message.setMsg("false");
        }
        return message;
    }
}
