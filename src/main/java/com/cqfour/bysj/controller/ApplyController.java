package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Apply;
import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.Student;
import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.service.ApplyService;
import com.cqfour.bysj.service.JobService;
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
 * Created by HYHSG on 2018/5/19.
 */
@Controller
public class ApplyController {

  @Autowired
  ApplyService applyService;

  @Autowired
  StudentService studentService;

  @Autowired
  JobService jobService;

  @RequestMapping("/getStudentsByGw")
  @ResponseBody
  public List<Apply> getStudentsByGw(Apply apply){//xh对应startTime,ypsj对应endTime
        List<Apply> applies=applyService.getStudentsByGw(0,apply.getZpgwbh(),apply.getXh(),apply.getYpsj(),apply.getCkzt());
        return applies;
  }

  @RequestMapping("/getStudent")
  @ResponseBody
  public Message getStudent(String xh, HttpServletRequest request){
    Student student=studentService.getStudent(xh);
    request.getSession().setAttribute("student",student);
    request.getSession().setAttribute("EmployerStudent",student);
    Message message=new Message();
    message.setStatus("Success");
    message.setMsg("success");
    return message;
  }

  @RequestMapping("/updateCKZT")
  @ResponseBody
  public Message updateCKZT(Apply apply,HttpServletRequest request){
    applyService.updateCKZT(apply.getZpgwbh(),apply.getXh());
    Message message=new Message();
    List<Apply> applies=applyService.getStudentsByGw(apply.getYpbbh(),0,"","",3);
    System.out.println("长度："+applies.size());
    request.getSession().setAttribute("applies" ,applies);
    message.setStatus("Success");
    message.setMsg("success");
    return message;
  }

  @RequestMapping("/getAppalies")
  @ResponseBody
  public List<Apply> getAppalies(Apply apply){
    List<Apply> applies=applyService.getStudentsByGw(apply.getYpbbh(),0,apply.getXh(),apply.getYpsj(),apply.getCkzt());
    return applies;
  }

  @RequestMapping("/updateSHZT")
  @ResponseBody
  public Message updateSHZT(Apply apply,HttpServletRequest request){
    applyService.updateSHZT(apply.getZpgwbh(),apply.getXh(),apply.getShzt());
    List<Apply> applies=applyService.getStudentsByGw(apply.getYpbbh(),0,"","",3);
    request.getSession().setAttribute("applies",applies);
    Message message=new Message();
    if (apply.getShzt()==1){
      message.setStatus("fail");
      message.setMsg("淘汰");
    }else if (apply.getShzt()==2){
      message.setStatus("success");
      message.setMsg("通过");
    }
    return message;
  }
  @RequestMapping("/deliveredResume")
  public String deliveredResume(@RequestParam(value = "page", defaultValue = "1")Integer page
          ,@RequestParam(value= "status",defaultValue = "0",required = false) String status, HttpServletRequest request){
    User user = (User) request.getSession().getAttribute("user");
    PageHelper.startPage(page,5);
    PageInfo pageInfo = new PageInfo(applyService.selectAllJobByStuNo(user.getDlzh(),Integer.parseInt(status)),5);
    request.setAttribute("jobInfo",pageInfo);
    return "/WEB-INF/main/deliveredResume.jsp";
  }
  @RequestMapping("/deliveredResumeToPage")
  @ResponseBody
  public Message deliveredResumeToPage(@RequestParam(value = "page", defaultValue = "1")Integer page
          ,@RequestParam(value= "status",defaultValue = "0",required = false) String status, HttpServletRequest request){
    User user = (User) request.getSession().getAttribute("user");
    PageHelper.startPage(page,5);
    PageInfo pageInfo = new PageInfo(applyService.selectAllJobByStuNo(user.getDlzh(),Integer.parseInt(status)),5);
    request.setAttribute("jobInfo",pageInfo);
    request.setAttribute("status",status);
    Message message = new Message();
    message.setStatus("success");
    return message;
  }
}
