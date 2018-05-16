package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.JobInfo;
import com.cqfour.bysj.mapper.EmployersMapper;
import com.cqfour.bysj.mapper.JobInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobInfoService {

    @Autowired
    private JobInfoMapper jobInfoMapper;


    /**
     * 查出所有的专场招聘信息
     * @return
     */
    public List<JobInfo> selectAllSpecial(){
       return jobInfoMapper.selectAllSpecial();
    }

    public JobInfo selectAllInfo(Integer key){
        return jobInfoMapper.selectOneJobInfo(key);
    }

    public List<JobInfo> selectAllDoubleMeeting(){
        return jobInfoMapper.selectAllDoubleMeeting();
    }
}
