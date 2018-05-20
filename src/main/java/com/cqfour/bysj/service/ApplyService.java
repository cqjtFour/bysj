package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Apply;
import com.cqfour.bysj.bean.Job;
import com.cqfour.bysj.mapper.ApplyMapper;
import com.cqfour.bysj.mapper.JobMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplyService {

    @Autowired
    private ApplyMapper applyMapper;

    @Autowired
    private JobMapper jobMapper;

    /**
     * 根据学号查出所有的应聘信息
     * @param xh
     * @return
     */
    public List<Apply> selectAllJobByStuNo(String xh,Integer ckzt){
        List<Apply> applyList = applyMapper.selectAllJobByStuNo(xh,ckzt);
        List<Job> jobList = jobMapper.selectAllJobWithEmployer();
        for(Apply apply : applyList){
            for (Job job : jobList){
                if (apply.getZpgwbh().equals(job.getZpgwbh())){
                    apply.setJob(job);
                }
            }
        }
        return applyList;
    }
}
