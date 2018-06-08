package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Apply;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "applyMapper")
public interface ApplyMapper extends MyMapper<Apply> {

    List<Apply> getStudentsByGw(@Param("yrdwxxbbh") int yrdwxxbbh,@Param("zpgwbh") int zpgwbh,@Param("startTime") String startTime, @Param("endTime") String endTime,@Param("ckzt") int ckzt);

    void updateCKZT(@Param("zpgwbh")int zpgwbh,@Param("xh") String xh);

    void updateSHZT(@Param("zpgwbh") int zpgwbh,@Param("xh") String xh,@Param("shzt") int shzt);

    @Select("select * from t_yp where xh = #{xh} and ckzt = #{ckzt}")
    List<Apply> selectAllJobByStuNo(@Param("xh") String xh, @Param("ckzt") Integer ckzt);
}