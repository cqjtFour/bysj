package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Employers;
import com.cqfour.bysj.mapper.EmployersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by HYHSG on 2018/5/15.
 */
@Service
public class EmployersService {
    @Autowired
    EmployersMapper employersMapper;

    /**
     * 获取用人单位单位名称
     */
    public String getEmployerName(String dlzh){ return employersMapper.getEmployerName(dlzh);}

    /**
     * 通过登录账号获取用人单位对象
     */
    public Employers getEmployer(String dlzh){ return employersMapper.getEmployer(dlzh); }


}
