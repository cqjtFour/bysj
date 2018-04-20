package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.RoleMenu;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "roleMenuMapper")
public interface RoleMenuMapper extends MyMapper<RoleMenu> {

    @Select("select * from t_jsglcdb where jsbh = #{jsbh}")
    List<RoleMenu> getRoleMenusByjubh(Integer jsbh);

}