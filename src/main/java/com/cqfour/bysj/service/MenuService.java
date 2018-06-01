package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Menu;
import com.cqfour.bysj.mapper.MenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuService {

    @Autowired
    private MenuMapper menuMapper;

    /**
     * 得到所有的菜单编号
     * @return
     */
    public List<Menu> getAllMenu(){
        return menuMapper.selectAll();
    }
}
