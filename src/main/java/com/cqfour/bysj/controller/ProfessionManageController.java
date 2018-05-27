package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Discipline;
import com.cqfour.bysj.bean.Faculty;
import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.service.DisciplineService;
import com.cqfour.bysj.service.FacultyService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ProfessionManageController {

    @Autowired
    private DisciplineService disciplineService;
    @Autowired
    private FacultyService facultyService;

    /**
     * 进入专业信息管理界面
     * @return
     */
    @RequestMapping("/professionManage")
    public String menuManage(){
        return "/WEB-INF/main/professionManage.jsp";
    }

    /**
     * 专业分页信息
     * @param page
     * @return
     */
    @RequestMapping("/professionManageInfo")
    @ResponseBody
    public PageInfo getAllProfession(@RequestParam(value = "page", defaultValue = "1")Integer page
    ){
        PageHelper.startPage(page,10);
        PageInfo pageInfo = new PageInfo(disciplineService.selectAllWithFaculty(),5);
        return pageInfo;
    }

    /**
     * 得到所有的學院
     * @return
     */
    @RequestMapping("/getAllFaculty")
    @ResponseBody
    public List<Faculty> getFristMenu(){
        return facultyService.getAllFaculty();
    }

    @RequestMapping("/addProfession")
    @ResponseBody
    public Message addProfession(String proName,String xybh){
        Message message = new Message();
        Discipline discipline = new Discipline();
        discipline.setZymc(proName);
        discipline.setXybh(Integer.parseInt(xybh));
        discipline.setYjbysrs(0);
        try {
            disciplineService.insertPro(proName,Integer.parseInt(xybh));
            message.setMsg("添加成功！");
        } catch (Exception e) {
            e.printStackTrace();
            message.setMsg("添加失败！");
        }
        return message;
    }

    /**
     * 得到所有的學院
     * @return
     */
    @RequestMapping("/selectOneProfession")
    @ResponseBody
    public Discipline getFristProfession(String updateNos){
        return disciplineService.selectOneProfession(Integer.parseInt(updateNos));
    }

    @RequestMapping("/updateProfession")
    @ResponseBody
    public Message updateProfession(String proNo,String proName,String xybh){
        Message message = new Message();
        try {
            disciplineService.updateProfession(Integer.parseInt(proNo),proName,Integer.parseInt(xybh));
            message.setStatus("1");
            message.setMsg("修改成功");
        } catch (Exception e) {
            e.printStackTrace();
            message.setStatus("0");
            message.setMsg("修改失败");
        }
        return message;
    }
    /**
     * 得到某些专业
     * @return
     */
    @RequestMapping("/selectSomeProfession")
    @ResponseBody
    public PageInfo selectSomeProfession(@RequestParam(value = "page", defaultValue = "1")Integer page,
            String inputData){
        PageHelper.startPage(page,10);
        return new PageInfo(disciplineService.selectSomeProfession(inputData),5);
    }
}
