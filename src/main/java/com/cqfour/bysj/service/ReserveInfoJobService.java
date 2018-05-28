package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.ReserveInfoJob;
import com.cqfour.bysj.mapper.ReserveInfoJobMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by HYHSG on 2018/5/22.
 */

@Service
public class ReserveInfoJobService {

    @Autowired
    private ReserveInfoJobMapper reserveInfoJobMapper;

    /**
     *插入要发布的岗位
     */
    public int insertReserveInfoJob(ReserveInfoJob reserveInfoJob){ return  reserveInfoJobMapper.insert(reserveInfoJob);}
}
