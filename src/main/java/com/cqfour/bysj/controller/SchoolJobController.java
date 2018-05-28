package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.SchoolJob;
import com.cqfour.bysj.service.SchoolJobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by HYHSG on 2018/5/22.
 */
@Controller
public class SchoolJobController {

    @Autowired
    private SchoolJobService schoolJobService;

    @RequestMapping("/insertSchoolJob")
    @ResponseBody
    public Message insertSchoolJob(SchoolJob schoolJob){
        int i=schoolJobService.insertSchoolJob(schoolJob);
        Message message=new Message();
        if (i>0){
            message.setStatus("Success");
            message.setMsg(schoolJobService.getSchoolJobId(schoolJob.getYrdwxxbbh(),schoolJob.getYynr())+"");
        }else {
            message.setStatus("fail");
            message.setMsg("fail");
        }
        return  message;
    }
}
