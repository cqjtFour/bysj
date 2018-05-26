package com.cqfour.bysj.controller;


import com.cqfour.bysj.bean.*;
import com.cqfour.bysj.service.FacultyService;
import com.cqfour.bysj.service.StudentService;
import com.cqfour.bysj.util.FileUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class StudentEmploymentController {

    @Autowired
    private StudentService studentService;
    @Autowired
    private FacultyService facultyService;


    @RequestMapping("/studentEmployment")
    public String dataStatistics(){
        return "/WEB-INF/main/studentEmployment.jsp";
    }

    /**
     * 得到所有毕业生就业信息
     * @param page
     * @return
     */
    @RequestMapping("/kindStudentInfo")
    @ResponseBody
    public PageInfo selectBigZaHui(@RequestParam(value = "page",defaultValue = "1") Integer page,
                                   @RequestParam(value = "year",defaultValue = "2018") String year){
        PageHelper.startPage(page,10);
        PageInfo pageInfo = new PageInfo(studentService.selectStuentByJs(year),5);
        return pageInfo;
    }

    /**
     * 查询所有的学院
     * @return
     */
    @RequestMapping("/selectFacultyAll")
    @ResponseBody
    public List<Faculty> selectAllFaculty(){
        return facultyService.getAllFaculty();
    }

    /**
     * 条件查询学生的就业情况
     * @param page
     * @return
     */
    @RequestMapping("/kindStudentInfoToPage")
    @ResponseBody
    public PageInfo kindStudentInfoToPage(@RequestParam(value = "page",defaultValue = "1") Integer page
            , @RequestParam(value = "year",defaultValue = "2018") String year
            , @RequestParam(value = "collega",defaultValue = "") Integer collega
            , @RequestParam(value = "sure",defaultValue = "") Integer sure){
        PageHelper.startPage(page,10);
        PageInfo pageInfo = new PageInfo(studentService.queryStudentWithSign(year,collega,sure),5);
        return pageInfo;
    }

    /**
     * 导出excel
     * @return
     */
    @RequestMapping("/kindStudentInfoToExcel")
    @ResponseBody
    public Message kindStudentInfoToExcel(@RequestParam(value = "year",defaultValue = "2018") String year
            , @RequestParam(value = "collega",defaultValue = "") Integer collega
            , @RequestParam(value = "sure",defaultValue = "") Integer sure
            , HttpServletResponse response){
        List<JiuYeStudentInfo> list = studentService.studentInfoToExcel(year, collega, sure);
        String fileName = "";
        if (collega!=0){
            fileName = list.get(0).getXy()+"就业信息";
        }else{
            fileName = "学校就业信息";
        }
        FileUtil.exportExcel(list,fileName,fileName,JiuYeStudentInfo.class,fileName+".xls",response);
        return new Message();
    }

}
