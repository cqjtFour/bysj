package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Menu;
import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.RoleMenu;
import com.cqfour.bysj.service.MenuService;
import com.cqfour.bysj.service.RoleMenuService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class MenuManageController {

    @Autowired
    private MenuService menuService;

    @Autowired
    private RoleMenuService roleMenuService;

    /**
     * 进入菜单管理界面
     * @return
     */
    @RequestMapping("/menuManage")
    public String menuManage(){
        return "/WEB-INF/main/menuManage.jsp";
    }

    /**
     * 菜单分页信息
     * @param page
     * @return
     */
    @RequestMapping("/menuManageInfo")
    @ResponseBody
    public PageInfo getAllMenu(@RequestParam(value = "page", defaultValue = "1")Integer page
            ){
        PageHelper.startPage(page,10);
        PageInfo pageInfo = new PageInfo(menuService.getAllMenu(),5);
        return pageInfo;
    }

    /**
     * 得到所有的一级菜单
     * @return
     */
    @RequestMapping("/getFristMenu")
    @ResponseBody
    public List<Menu> getFristMenu(){
        return menuService.selectFristMenu();
    }

    /**
     * 添加菜单
     * @return
     */
    @RequestMapping("/addMenu")
    @ResponseBody
    public Message addMenu(String menuName,String menuUrl,String menuType,
                           @RequestParam(value = "parentMenu",defaultValue = "0",required = false) String parentMenu){
        Menu menu = new Menu();
        menu.setCddj(Integer.parseInt(menuType));
        menu.setCdmc(menuName);
        menu.setCdurl(menuUrl);
        menu.setFjcdbh(Integer.parseInt(parentMenu));
        menuService.insertMenu(menu);
        return new Message();
    }

    /**
     * 删除某个菜单
     * @param deleteNos
     * @return
     */
    @RequestMapping("/deleteMenu")
    @ResponseBody
    public Message deleteMenu(String deleteNos){
        Message message = new Message();
        try {
            roleMenuService.deleteRoleMenu(Integer.parseInt(deleteNos));
            String[] ids = deleteNos.split(",");
            for (String s: ids) {
                menuService.deleteMenu(Integer.parseInt(s));
            }
            message.setStatus("1");
            message.setMsg("删除成功");
        } catch (Exception e) {
            message.setStatus("0");
            message.setMsg("请先删除某些父级菜单的子菜单");
            e.printStackTrace();
        }
        return message;
    }

    /**
     * 会填数据
     * @param updateNos
     * @return
     */
    @RequestMapping("/selectOneMenu")
    @ResponseBody
    public Menu selectOneMenu(String updateNos){
        List<RoleMenu> roleMenusByCdbh = roleMenuService.getRoleMenusByCdbh(Integer.parseInt(updateNos));
        Menu menu = menuService.selectByCdbh(Integer.parseInt(updateNos));
        menu.setRoleMenus(roleMenusByCdbh);
        return menu;
    }

    /**
     * 添加菜单
     * @return
     */
    @RequestMapping("/updateMenu")
    @ResponseBody
    public Message updateMenu(String menuNo,String menuName,String menuUrl,String menuType,
                           @RequestParam(value = "parentMenu",defaultValue = "0",required = false) String parentMenu){
        Menu menu = new Menu();
        menu.setCdbh(Integer.parseInt(menuNo));
        menu.setCddj(Integer.parseInt(menuType));
        menu.setCdmc(menuName);
        menu.setCdurl(menuUrl);
        if (menu.getCddj() == 1){
            menu.setFjcdbh(0);
        }else{
            menu.setFjcdbh(Integer.parseInt(parentMenu));
        }
        System.out.println(menu.toString());
        menuService.updateMenu(menu.getCdbh(),menu.getCdmc(),menu.getCdurl(),menu.getCddj(),menu.getFjcdbh());
        return new Message();
    }

    /**
     * 更改菜单权限
     * @param menuNo
     * @param stuStutas
     * @param empStutas
     * @param schStutas
     * @param adminStutas
     * @return
     */
    @RequestMapping("/updateMenuAssign")
    @ResponseBody
    public Message updateMenuAssign(String menuNo,String stuStutas,String empStutas,String schStutas,String adminStutas){
        roleMenuService.deleteRoleMenu(Integer.parseInt(menuNo));
        if (stuStutas.equals("是")){
            RoleMenu roleMenu = new RoleMenu();
            roleMenu.setCdbh(Integer.parseInt(menuNo));
            roleMenu.setJsbh(3);
            roleMenuService.insert(roleMenu);
        }
        if (empStutas.equals("是")){
            RoleMenu roleMenu = new RoleMenu();
            roleMenu.setCdbh(Integer.parseInt(menuNo));
            roleMenu.setJsbh(4);
            roleMenuService.insert(roleMenu);
        }
        if (schStutas.equals("是")){
            RoleMenu roleMenu = new RoleMenu();
            roleMenu.setCdbh(Integer.parseInt(menuNo));
            roleMenu.setJsbh(2);
            roleMenuService.insert(roleMenu);
        }
        if (adminStutas.equals("是")){
            RoleMenu roleMenu = new RoleMenu();
            roleMenu.setCdbh(Integer.parseInt(menuNo));
            roleMenu.setJsbh(1);
            roleMenuService.insert(roleMenu);
        }
        return new Message();
    }

    /**
     * 模糊查询菜单
     * @return
     */
    @RequestMapping("/searchMenuInfo")
    @ResponseBody
    public PageInfo searchMenu(@RequestParam(value = "page", defaultValue = "1")Integer page,
            String inputData, HttpServletRequest request){
        PageHelper.startPage(page,10);
        PageInfo pageInfo = new PageInfo(menuService.searchMenu(inputData),5);
        return pageInfo;
    }
}
