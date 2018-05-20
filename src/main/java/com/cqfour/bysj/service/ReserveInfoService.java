package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Employers;
import com.cqfour.bysj.bean.JobInfo;
import com.cqfour.bysj.bean.ReserveInfo;
import com.cqfour.bysj.mapper.EmployersMapper;
import com.cqfour.bysj.mapper.ReserveInfoJobMapper;
import com.cqfour.bysj.mapper.ReserveInfoMapper;
import com.cqfour.bysj.util.SortClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

@Service
public class ReserveInfoService {

    @Autowired
    private ReserveInfoMapper reserveInfoMapper;

    @Autowired
    private EmployersMapper employersMapper;

    @Autowired
    private JobInfoService jobInfoService;

    @Autowired
    private ReserveInfoJobMapper reserveInfoJobMapper;

    /**
     * 得到所有的招聘信息
     * @return
     */
    public List<ReserveInfo> getAllReserveInfoWithJobInfo(){
        List<ReserveInfo> reserveInfoList = reserveInfoMapper.getAllReservrInfoWithJobInfo();
        for(ReserveInfo reserveInfo:reserveInfoList){
            reserveInfo.setJobInfo(jobInfoService.selectAllInfo(reserveInfo.getXnzpxxfbbbh()));
            reserveInfo.setEmployers(employersMapper.selectByPrimaryKey(reserveInfo.getYrdwxxbbh()));
            reserveInfo.setReserveInfoJob(reserveInfoJobMapper.getAllReserveInfoJobBySome(reserveInfo.getXnzpgsbbh()));
        }
        SortClass sortClass = new SortClass();
        Collections.sort(reserveInfoList,sortClass);
        return reserveInfoList;
    }
    /**
     *
     */
    public List<ReserveInfo> getInfoByDate(String[] str1,String[] str2
            ,List<ReserveInfo> list){
        List<ReserveInfo> reserveInfoList = new ArrayList<>();
        for(ReserveInfo reserveInfo:list){
            String date =  reserveInfo.getZpsj().split(" ")[0];
            System.out.println(date);
            //先判断比大的日期小，再判断比小的日期大
            String bigDate = str2[2]+"-"+str2[1]+"-"+str2[0];//得到大日期
            String smallDate = str1[2]+"-"+str1[1]+"-"+str1[0];//小日期
            //判断日期满足
            if (compare_date(date,bigDate)!=1&&compare_date(date,smallDate)!=-1){
                reserveInfoList.add(reserveInfo);
            }
        }
        return reserveInfoList;
    }

    /**
     * 比较两个日期大小
     * @param DATE1
     * @param DATE2
     * @return
     */
    public int compare_date(String DATE1, String DATE2) {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date dt1 = df.parse(DATE1);
            Date dt2 = df.parse(DATE2);
            if (dt1.getTime() > dt2.getTime()) {
                System.out.println("dt1 在dt2前");
                return 1;
            } else if (dt1.getTime() < dt2.getTime()) {
                System.out.println("dt1在dt2后");
                return -1;
            } else {
                return 0;
            }
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return 0;
    }
}
