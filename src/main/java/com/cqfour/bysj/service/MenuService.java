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

    /**
     * 得到所有的一级菜单
     * @return
     */
    public List<Menu> selectFristMenu(){
        return menuMapper.selectFristMenu();
    }

    /**
     * 增加菜单
     * @param menu
     * @return
     */
    public Integer insertMenu(Menu menu){
        return menuMapper.insert(menu);
    }

    /**
     * 删除菜单
     * @param cdbh
     * @return
     */
    public Integer deleteMenu(Integer cdbh){
        return menuMapper.deleteById(cdbh);
    }

    /**
     * 根据菜单编号找到菜单
     * @param cdbh
     * @return
     */
    public Menu selectByCdbh(Integer cdbh){
        return menuMapper.selectByPrimaryKey(cdbh);
    }
    /**
     * 根据菜单编号找到菜单
     * @param cdbh
     * @return
     */
    public Integer updateMenu(Integer cdbh,String cdmc,String cdurl,Integer cddj,Integer fjcdbh){
        return menuMapper.updateMenu(cdbh,cdmc,cdurl,cddj,fjcdbh);
    }

    /**
     * 模糊查询菜单
     */
    public List<Menu> searchMenu(String cdmc){
        return menuMapper.searchMenu(cdmc);
    }
}
