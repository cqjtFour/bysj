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
     * 更改查看狀態
     */
    public void updateCKZT(int zpgwbh,String xh){  applyMapper.updateCKZT(zpgwbh,xh);}

    /**
     * 更改审核状态
     */
    public  void updateSHZT(int zpgwbh,String xh,int shzt){ applyMapper.updateSHZT(zpgwbh,xh,shzt);}

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

    /**
     * 通过岗位编号获取所有应聘该岗位的学生
     */
    public List<Apply> getStudentsByGw(int zpgwbh, String startTime , String endTime,int ckzt){ return applyMapper.getStudentsByGw(zpgwbh,startTime,endTime,ckzt);}
}
