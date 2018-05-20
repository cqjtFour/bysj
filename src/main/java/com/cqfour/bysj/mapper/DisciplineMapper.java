package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Discipline;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "disciplineMapper")
public interface DisciplineMapper extends MyMapper<Discipline> {

    /**
     * 查出专业信息
     * @return
     */
    List<Discipline> selectAllWithFaculty();
}