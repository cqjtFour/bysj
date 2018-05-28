package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.SchoolJob;
import com.cqfour.bysj.mapper.SchoolJobMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by HYHSG on 2018/5/22.
 */
@Service
public class SchoolJobService {

    @Autowired
    private SchoolJobMapper schoolJobMapper;

    /**
     * 插入一条新校园招聘预约表
     */
    public  int insertSchoolJob(SchoolJob schoolJob){ return  schoolJobMapper.insert(schoolJob);}

    /**
     * 获取当前校园招聘预约表的编号
     */
    public int  getSchoolJobId(int  yrdwxxbbh,String yynr){ return  schoolJobMapper.getSchoolJobId(yrdwxxbbh,yynr);}
}

