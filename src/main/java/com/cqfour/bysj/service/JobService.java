package com.cqfour.bysj.service;


import com.cqfour.bysj.bean.Job;
import com.cqfour.bysj.mapper.JobMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {
    @Autowired
    private JobMapper jobMapper;

    /**
     * 得到应聘信息
     * @return
     */
    public List<Job> selectAllJobWithEmployer(){
        return jobMapper.selectAllJobWithEmployer();
    }
}
