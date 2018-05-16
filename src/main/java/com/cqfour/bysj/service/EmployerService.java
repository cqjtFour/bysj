package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Employers;
import com.cqfour.bysj.mapper.EmployersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployerService {

    @Autowired
    private EmployersMapper employersMapper;


    /**
     * 根据登录账号得到用人单位
     * @param dlzh
     * @return
     */
    public Employers getOneEmployer(String dlzh){
        return employersMapper.getOneEmployerByDLZH(dlzh);
    }
}
