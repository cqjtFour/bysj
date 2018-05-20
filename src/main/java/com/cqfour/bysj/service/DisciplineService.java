package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Discipline;
import com.cqfour.bysj.mapper.DisciplineMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DisciplineService {

    @Autowired
    private DisciplineMapper disciplineMapper;

    public List<Discipline> selectAllWithFaculty(){
        return disciplineMapper.selectAllWithFaculty();
    }
}
