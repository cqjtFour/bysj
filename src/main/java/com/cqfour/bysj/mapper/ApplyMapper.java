package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Apply;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "applyMapper")
public interface ApplyMapper extends MyMapper<Apply> {

    List<Apply> getStudentsByGw(@Param("zpgwbh") int zpgwbh,@Param("startTime") String startTime, @Param("endTime") String endTime,@Param("ckzt") int ckzt);

    void updateCKZT(@Param("zpgwbh")int zpgwbh,@Param("xh") String xh);

    void updateSHZT(@Param("zpgwbh") int zpgwbh,@Param("xh") String xh,@Param("shzt") int shzt);
}