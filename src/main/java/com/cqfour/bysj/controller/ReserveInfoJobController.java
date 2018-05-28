package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.ReserveInfoJob;
import com.cqfour.bysj.bean.SchoolJob;
import com.cqfour.bysj.service.ReserveInfoJobService;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by HYHSG on 2018/5/22.
 */
@Controller
public class ReserveInfoJobController {

    @Autowired
    private ReserveInfoJobService reserveInfoJobService;

    @RequestMapping("/insertReserveInfoJob")
    @ResponseBody
    public Message insertReserveInfoJob( String reserveInfoJobs)throws Exception{
        reserveInfoJobs= URLDecoder.decode(reserveInfoJobs, "utf-8");
        ObjectMapper mapper = new ObjectMapper();
        JavaType javaType=mapper.getTypeFactory().constructParametricType(List.class,ReserveInfoJob.class);
        List<ReserveInfoJob> list = mapper.readValue(reserveInfoJobs, javaType);
       for (int i=0;i<list.size();i++){
          int j=reserveInfoJobService.insertReserveInfoJob(list.get(i));
       }
      Message message1=new Message();
        message1.setStatus("Success");
        message1.setMsg("success");
        return  message1;
    }

}
