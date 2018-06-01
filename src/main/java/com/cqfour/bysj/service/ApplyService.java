package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Apply;
import com.cqfour.bysj.mapper.ApplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by HYHSG on 2018/5/19.
 */
@Service
public class ApplyService {
    @Autowired
    ApplyMapper applyMapper;

    /**
     * 通过岗位编号获取所有应聘该岗位的学生
     */
    public List<Apply> getStudentsByGw(int zpgwbh, String startTime , String endTime,int ckzt){ return applyMapper.getStudentsByGw(zpgwbh,startTime,endTime,ckzt);}

    /**
     * 更改查看狀態
     */
    public void updateCKZT(int zpgwbh,String xh){  applyMapper.updateCKZT(zpgwbh,xh);}

    /**
     * 更改审核状态
     */
    public  void updateSHZT(int zpgwbh,String xh,int shzt){ applyMapper.updateSHZT(zpgwbh,xh,shzt);}
}
