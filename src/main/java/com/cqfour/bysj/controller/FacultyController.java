package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Faculty;
import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.service.FacultyService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FacultyController {

    @Autowired
    private FacultyService facultyService;

    @RequestMapping("/facultyManage")
    public String collegeManageInfo() {
        return "/WEB-INF/main/facultyManage.jsp";
    }

    /**
     * 菜单分页信息
     *
     * @param page
     * @return
     */
    @RequestMapping("/collegeManageInfo")
    @ResponseBody
    public PageInfo getAllFaculty(@RequestParam(value = "page", defaultValue = "1") Integer page) {
        PageHelper.startPage(page, 10);
        PageInfo pageInfo = new PageInfo(facultyService.getAllFaculty(), 5);
        return pageInfo;
    }

    @RequestMapping("/addFaculty")
    @ResponseBody
    public Message addFaculty(String colName, String colPeople, String coltel, String colshow) {
        Faculty faculty = new Faculty();
        faculty.setXymc(colName);
        faculty.setXylxr(colPeople);
        faculty.setLxdh(coltel);
        faculty.setXyjj(colshow);
        facultyService.insert(faculty);
        return new Message();
    }

    /**
     * 删除某个菜单
     *
     * @param deleteNos
     * @return
     */
    @RequestMapping("/deleteFaculty")
    @ResponseBody
    public Message deleteFaculty(String deleteNos) {
        String[] ids = deleteNos.split(",");
        Message message = new Message();
        try {
            for (String s : ids) {
                facultyService.deleteFaculty(Integer.parseInt(s));
            }
            message.setMsg("删除成功");
            message.setStatus("1");
        } catch(Exception e) {
            message.setMsg("删除失败，该学院下有专业与学生");
            message.setStatus("0");
        }
        return message;
    }

    @RequestMapping("/selectOneFaculty")
    @ResponseBody
    public Faculty selectOneFaculty(String updateNos){
        return facultyService.selectOneByXyh(Integer.parseInt(updateNos));
    }

    @RequestMapping("/updateFaculty")
    @ResponseBody
    public Message updateFaculty(String facultyNo,String colName, String colPeople, String coltel, String colshow) {
        Faculty faculty = new Faculty();
        faculty.setXybh(Integer.parseInt(facultyNo));
        faculty.setXymc(colName);
        faculty.setXylxr(colPeople);
        faculty.setLxdh(coltel);
        faculty.setXyjj(colshow);
        facultyService.updateFaculty(faculty);
        return new Message();
    }

}
