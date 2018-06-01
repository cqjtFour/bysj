package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Job;
import com.cqfour.bysj.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by HYHSG on 2018/5/19.
 */
@Controller
public class JobController {

    @Autowired
    private JobService jobService;

    @RequestMapping("/insertJob")
    @ResponseBody
    public List<Job> insertJob(Job job, HttpServletRequest request){
        int i=jobService.insertJob(job);
        List<Job> gws=new ArrayList<>();
        if (i>0){
            gws= jobService.getGwList(job.getYrdwxxbbh());
        }
        request.getSession().setAttribute("gws",gws);
        return gws;
    }

    @RequestMapping("/deleteJob")
    @ResponseBody
    public List<Job> deleteJob(Job job,HttpServletRequest request){
        int i=jobService.deleteJob(job.getZpgwbh());
        List<Job> gws=new ArrayList<>();
        if(i>0){
            gws= jobService.getGwList(job.getYrdwxxbbh());
        }
        request.getSession().setAttribute("gws",gws);
        return gws;
    }

    @RequestMapping("/getJob")
    @ResponseBody
    public Job getJob(int zpgwbh){
        Job job=jobService.getJob(zpgwbh);
        return job;
    }

    @RequestMapping("/updateJob")
    @ResponseBody
    public List<Job> updateJob(Job job ,HttpServletRequest request){
        System.out.println(job.getZpgwbh()+"  "+job.getMc()+"  "+job.getYrdwxxbbh());
        int i=jobService.updateJob(job);
        System.out.println(i);
        List<Job> gws=new ArrayList<>();
        if(i>0){
            gws= jobService.getGwList(job.getYrdwxxbbh());
        }
        request.getSession().setAttribute("gws",gws);
        return gws;
    }

}
