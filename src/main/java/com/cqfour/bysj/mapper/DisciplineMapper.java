package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Discipline;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.*;
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

    /**
     * 添加专业信息
     * @param zymc
     * @param xybh
     * @return
     */
    @Insert("insert into t_zyb (`XYBH`, `ZYMC`, `YJBYSRS`) VALUES (#{xybh}, #{zymc}, '0')")
    int insertPro(@Param("zymc") String zymc, @Param("xybh")Integer xybh);

    /**
     * 添加专业信息
     * @return
     */
    @Insert("delete from t_zyb where zybh = #{zybh}")
    int deletePro(@Param("zybh") Integer zybh);

    @Select("select * from t_zyb where zybh = #{zybh}")
    Discipline selectOneProfession(int i);

    @Update("UPDATE `t_zyb` SET `ZYMC`=#{proName},xybh = #{i1} WHERE `ZYBH`=#{i}")
    void updateProfession(@Param("i") int i, @Param("proName") String proName,@Param("i1") int i1);

    /**
     * 得到某些专业
     * @param zymc
     * @return
     */
    List<Discipline> selectSomeProfession(@Param("zymc") String zymc);
}