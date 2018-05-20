package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.RoleMenu;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "roleMenuMapper")
public interface RoleMenuMapper extends MyMapper<RoleMenu> {

    @Select("select * from t_jsglcdb where jsbh = #{jsbh}")
    List<RoleMenu> getRoleMenusByjubh(Integer jsbh);

    @Select("select * from t_jsglcdb where cdbh = #{cdbh}")
    List<RoleMenu> getRoleMenusByCdbh(Integer cdbh);

    @Delete("delete from t_jsglcdb where cdbh = #{cdbh}")
    int deleteRoleMenuByCdbh(Integer cdbh);

    @Insert("insert into t_jsglcdb (CDBH,JSBH) values (#{cdbh},#{jsbh})")
    int insertData(Integer cdbh, Integer jsbh);

}