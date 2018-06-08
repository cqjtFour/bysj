package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Faculty;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "facultyMapper")
public interface FacultyMapper extends MyMapper<Faculty> {

    @Update("update t_xyb set xymc = #{colName},xylxr = #{colPeople},xxjj=#{colshow},lxdh = #{coltel} where xybh = #{facultyNo}")
    Integer updateFaculty(@Param("facultyNo") String facultyNo, @Param("colName")String colName,
                          @Param("colPeople")String colPeople,@Param("coltel") String coltel, @Param("colshow")String colshow);

}