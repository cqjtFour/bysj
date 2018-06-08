package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.JiuYeLv;
import com.cqfour.bysj.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class DataStatisticsController {


    @Autowired
    private StudentService studentService;

    @RequestMapping("/dataStatistics")
    public String dataStatistics(){
        return "/WEB-INF/main/dataStatistics.jsp";
    }

    @RequestMapping("/selectBigZaHui")
    @ResponseBody
    public List<JiuYeLv> selectBigZaHui(@RequestParam(value = "year",defaultValue = "2018") String year){
        return studentService.selectBigZaHui(year);
    }

}
