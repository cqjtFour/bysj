package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.ReserveInfo;
import com.cqfour.bysj.service.ReserveInfoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ReserveInfoController {

    @Autowired
    private ReserveInfoService reserveInfoService;

    @RequestMapping("/specialrecruitment")
    public String special_recruitment(@RequestParam(value = "page", defaultValue = "1")Integer page
            ,@RequestParam(value = "date",required = false)String date,HttpServletRequest request){
        List<ReserveInfo> reserveInfoList = reserveInfoService.getAllReserveInfoWithJobInfo();
        List<ReserveInfo> list;
        if (date==null||date.equals("")){
            list = reserveInfoList;
        }else{
            String[] strings = date.split(" ");
            String[] date1 = strings[0].split("/");
            String[] date2 = strings[2].split("/");
            list = reserveInfoService.getInfoByDate(date1,date2,reserveInfoList);
        }
        PageHelper.startPage(page,8);
        PageInfo pageInfo = new PageInfo(list,5);
        request.setAttribute("recruitment" ,pageInfo);
        request.setAttribute("fiveData",reserveInfoList.subList(0,2));
        return "/WEB-INF/jsp/special-recruitment.jsp";
    }

    @RequestMapping("/queryReserveInfo")
    @ResponseBody
    public List<ReserveInfo> getAllReservrInfoWithJobInfo(@RequestParam(value = "page", defaultValue = "1")Integer page
            ,HttpServletRequest request){
        PageHelper.startPage(page,8);
        PageInfo pageInfo = new PageInfo(reserveInfoService.getAllReserveInfoWithJobInfo(),5);
        request.setAttribute("recruitment" ,pageInfo);
        Message message = new Message();
        message.setReserveInfos(reserveInfoService.getAllReserveInfoWithJobInfo());
        message.setStatus("success");
        return reserveInfoService.getAllReserveInfoWithJobInfo();
    }



}
