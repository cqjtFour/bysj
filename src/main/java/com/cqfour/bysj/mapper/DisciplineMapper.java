package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Discipline;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "disciplineMapper")
public interface DisciplineMapper extends MyMapper<Discipline> {
}