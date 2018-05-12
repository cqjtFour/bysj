package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.ReserveInfo;
import com.cqfour.bysj.mapper.ReserveInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ReserveInfoService {

    @Autowired
    private ReserveInfoMapper reserveInfoMapper;

    public String selectAll(){
        if (reserveInfoMapper.selectAll()==null){
            return "0";
        }
        return reserveInfoMapper.selectAll().size()+"";
    }
}
