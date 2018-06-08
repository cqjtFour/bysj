package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.JobInfo;
import com.cqfour.bysj.bean.ReserveInfo;
import com.cqfour.bysj.bean.SchoolNews;
import com.cqfour.bysj.service.ReserveInfoService;
import com.cqfour.bysj.service.SchoolNewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ShowController {

    @Autowired
    private SchoolNewsService schoolNewsService;
    @Autowired
    private ReserveInfoService reserveInfoService;

    /**
     * 显示通知公告详细信息
     * @param fbbh
     * @param request
     * @return
     */
    @RequestMapping("/showAdvice")
    public String show(String fbbh,HttpServletRequest request){
        List<SchoolNews> schoolNewsList = schoolNewsService.selectAllAdvice();
        SchoolNews currentAdvice = new SchoolNews();//当前数据
        SchoolNews preAdvice =  new SchoolNews();//前一条数据
        SchoolNews nextAdvice =  new SchoolNews();//后一条数据
        for(int i =0 ; i < schoolNewsList.size();i++){
            if (Integer.parseInt(fbbh)==schoolNewsList.get(i).getFbbbh()){
                currentAdvice = schoolNewsList.get(i);
                if (i==0){
                    preAdvice.setXxbt("没有了");
                    preAdvice.setFbbbh(schoolNewsList.get(i).getFbbbh());
                }else {
                    preAdvice = schoolNewsList.get(i-1);
                }
                if (i==schoolNewsList.size()-1){
                    nextAdvice.setXxbt("没有了");
                    nextAdvice.setFbbbh(schoolNewsList.get(i).getFbbbh());
                }else{
                    nextAdvice = schoolNewsList.get(i+1);
                }
            }
        }
        request.setAttribute("current",currentAdvice);
        request.setAttribute("pre",preAdvice);
        request.setAttribute("next",nextAdvice);
        request.setAttribute("url","showAdvice");
        return "/WEB-INF/jsp/show.jsp";
    }

    /**
     * 显示就业政策详细信息
     * @param fbbh
     * @param request
     * @return
     */
    @RequestMapping("/showPolicy")
    public String showPolicy(String fbbh,HttpServletRequest request){
        List<SchoolNews> schoolNewsList = schoolNewsService.selectAllEmploymentPolicy();
        SchoolNews currentPolicy = new SchoolNews();//当前数据
        SchoolNews prePolicy =  new SchoolNews();//前一条数据
        SchoolNews nextPolicy =  new SchoolNews();//后一条数据
        for(int i =0 ; i < schoolNewsList.size();i++){
            if (Integer.parseInt(fbbh)==schoolNewsList.get(i).getFbbbh()){
                currentPolicy = schoolNewsList.get(i);
                if (i==schoolNewsList.size()-1){
                    nextPolicy.setXxbt("没有了");
                    nextPolicy.setFbbbh(schoolNewsList.get(i).getFbbbh());
                }else{
                    nextPolicy = schoolNewsList.get(i+1);
                }
                if (i==0){
                    prePolicy.setXxbt("没有了");
                    prePolicy.setFbbbh(schoolNewsList.get(i).getFbbbh());
                }else {
                    prePolicy = schoolNewsList.get(i-1);
                }
            }
        }
        request.setAttribute("current",currentPolicy);
        request.setAttribute("pre",prePolicy);
        request.setAttribute("next",nextPolicy);
        request.setAttribute("url","showPolicy");
        return "/WEB-INF/jsp/show.jsp";
    }

    /**
     * 显示就业指导详细信息
     * @param fbbh
     * @param request
     * @return
     */
    @RequestMapping("/showGuidance")
    public String showGuidance(String fbbh,HttpServletRequest request){
        List<SchoolNews> schoolNewsList = schoolNewsService.selectAllEmploymentGuidance();
        SchoolNews currentGuidance = new SchoolNews();//当前数据
        SchoolNews preGuidance =  new SchoolNews();//前一条数据
        SchoolNews nextGuidance =  new SchoolNews();//后一条数据
        for(int i =0 ; i < schoolNewsList.size();i++){
            if (Integer.parseInt(fbbh)==schoolNewsList.get(i).getFbbbh()){
                currentGuidance = schoolNewsList.get(i);
                if (i==schoolNewsList.size()-1){
                    nextGuidance.setXxbt("没有了");
                    nextGuidance.setFbbbh(schoolNewsList.get(i).getFbbbh());
                }else{
                    nextGuidance = schoolNewsList.get(i+1);
                }
                if (i==0){
                    preGuidance.setXxbt("没有了");
                    preGuidance.setFbbbh(schoolNewsList.get(i).getFbbbh());
                }else {
                    preGuidance = schoolNewsList.get(i-1);
                }
            }
        }
        request.setAttribute("current",currentGuidance);
        request.setAttribute("pre",preGuidance);
        request.setAttribute("next",nextGuidance);
        request.setAttribute("url","showGuidance");
        return "/WEB-INF/jsp/show.jsp";
    }

    @RequestMapping("/showReserveInfo")
    public String showReserveInfo(String xnzpgsbbh,HttpServletRequest request){
        List<ReserveInfo> reserveInfoList = reserveInfoService.getAllReserveInfoWithJobInfo();
        ReserveInfo currentReserve = new ReserveInfo();
        ReserveInfo preReserve = new ReserveInfo();
        ReserveInfo nextReserve = new ReserveInfo();

        for (int i = 0 ;i<reserveInfoList.size();i++){
            if (Integer.parseInt(xnzpgsbbh)==reserveInfoList.get(i).getXnzpgsbbh()){
                currentReserve = reserveInfoList.get(i);
                if (i==0){
                    JobInfo jobInfo = new JobInfo();
                    jobInfo.setXnzpnrbt("没有了");
                    preReserve.setJobInfo(jobInfo);
                    preReserve.setXnzpgsbbh(reserveInfoList.get(i).getXnzpgsbbh());
                }else{
                    preReserve = reserveInfoList.get(i-1);
                }
                if (i==reserveInfoList.size()-1){
                    JobInfo jobInfo = new JobInfo();
                    jobInfo.setXnzpnrbt("没有了");
                    nextReserve.setJobInfo(jobInfo);
                    nextReserve.setXnzpgsbbh(reserveInfoList.get(i).getXnzpgsbbh());
                }else{
                    nextReserve = reserveInfoList.get(i+1);
                }
            }
        }
        request.setAttribute("current",currentReserve);
        request.setAttribute("pre",preReserve);
        request.setAttribute("next",nextReserve);
        return "/WEB-INF/jsp/showReserveInfo.jsp";
    }



}
