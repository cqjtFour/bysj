package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.SchoolNews;
import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.service.SchoolNewsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class InfoPublicController {

    @Autowired
    private SchoolNewsService schoolNewsService;

    @RequestMapping("/infoPublish")
    public String infoPublish(){
        return "/WEB-INF/main/infoPublic.jsp";
    }

    @RequestMapping("/getInfoPublic")
    @ResponseBody
    public PageInfo getAllInfo(@RequestParam(value = "page", defaultValue = "1") Integer page){
        PageHelper.startPage(page,10);
        List<SchoolNews> schoolNewsList = schoolNewsService.getAllInfo();
        PageInfo pageInfo = new PageInfo(schoolNewsList,5);
        return pageInfo;
    }

    @RequestMapping("/selectKindSchoolNews")
    @ResponseBody
    public PageInfo selectKindSchoolNews(@RequestParam(value = "page", defaultValue = "1") Integer page,
                                         String kind){
        PageHelper.startPage(page,10);
        if (kind.equals("全部类型")){
            List<SchoolNews> schoolNewsList = schoolNewsService.getAllInfo();
            PageInfo pageInfo = new PageInfo(schoolNewsList,5);
            return pageInfo;
        }else{
            List<SchoolNews> schoolNewsList = schoolNewsService.getAllInfoByKind(kind);
            PageInfo pageInfo = new PageInfo(schoolNewsList,5);
            return pageInfo;
        }

    }

    @RequestMapping("/addSchoolNews")
    @ResponseBody
    public Message insertSchoolNews(String xxbt, String xxlx, String xxzw,
                                    HttpSession session){
        User user = (User) session.getAttribute("user");
        schoolNewsService.insertSchoolNews(xxbt,xxlx,xxzw,Integer.parseInt(user.getDlzh()));
        return new Message();
    }

    @RequestMapping("/deleteSchoolNews")
    @ResponseBody
    public Message deleteSchoolNews(String deleteNos){
        Message message = new Message();
        String[] ids = deleteNos.split(",");
        for (String s : ids) {
            schoolNewsService.deleteMenu(Integer.parseInt(s));
        }
        try {
            for (String s : ids) {
                schoolNewsService.deleteMenu(Integer.parseInt(s));
            }
            message.setStatus("1");
            message.setMsg("删除成功");
        }catch (Exception e){
            message.setStatus("0");
            message.setMsg("删除失败");
        }
        return message;
    }


}
