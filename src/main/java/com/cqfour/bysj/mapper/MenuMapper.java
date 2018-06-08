package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Menu;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "menuMapper")
public interface MenuMapper extends MyMapper<Menu> {

    /**
     * 得到所有的一级菜单
     * @return
     */
    @Select("select * from t_cdb where FJCDBH = 0")
    List<Menu> selectFristMenu();

    @Delete("delete from t_cdb where cdbh = #{id}")
    int deleteById(@Param("id") Integer id);

    @Update("update t_cdb set cdmc = #{cdmc},cdurl = #{cdurl},cddj = #{cddj},fjcdbh=#{fjcdbh} where cdbh = #{cdbh}")
    int updateMenu(@Param("cdbh")Integer cdbh,@Param("cdmc")String cdmc,@Param("cdurl")String cdurl,@Param("cddj")Integer cddj,@Param("fjcdbh")Integer fjcdbh);

    List<Menu> searchMenu(@Param("cdmc") String cdmc);
}