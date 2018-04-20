package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Menu;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "menuMapper")
public interface MenuMapper extends MyMapper<Menu> {
}