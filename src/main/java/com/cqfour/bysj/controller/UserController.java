package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Menu;
import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.RoleMenu;
import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.service.MenuService;
import com.cqfour.bysj.service.RoleMenuService;
import com.cqfour.bysj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 *主界面
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleMenuService roleMenuService;

    @Autowired
    private MenuService menuService;

    /**
     * 测试用的，无用
     * @return
     */
    @RequestMapping("getUser")
    @ResponseBody
    public String getAllUser(){
        userService.getAllUser();
        return "index";
    }

    /**
     * 登录
     * @param username
     * @param password
     * @param request
     * @return
     */
    @RequestMapping("/loginUser")
    @ResponseBody
    public Message loginUser(String username, String password, HttpServletRequest request){
        Message message = new Message();
        User user = userService.getUser(username);
        if (null == user){
            message.setStatus("error");
            message.setMsg("该用户不存在");
        } else if (!password.equals(user.getDlmm())){
            message.setStatus("error");
            message.setMsg("密码输入错误");
        } else if (user.getZhzt()!=0){
            message.setStatus("error");
            message.setMsg("该账号已注销");
        } else {
            List<RoleMenu> roleMenus = roleMenuService.getRoleMenusByjsbh(user.getJsbh());
            List<Menu> allMenu = menuService.getAllMenu();
            List<Menu> menus = new ArrayList<>();
            for (RoleMenu roleMenu : roleMenus){
                for(Menu menu:allMenu){
                    if (roleMenu.getCdbh().equals(menu.getCdbh())){
                        menus.add(menu);
                    }
                }
            }
            // 找到主菜单
            List<Menu> parentMenus = new ArrayList<>();
            for (Menu menu : menus) {
                if (menu.getFjcdbh().equals(0)) {
                    parentMenus.add(menu);
                }
            }
            // 为主菜单添加子菜单
            for (Menu parent : parentMenus) {
                for (Menu child : menus) {
                    if (child.getFjcdbh().equals(parent.getCdbh())) {
                        parent.getChildren().add(child);
                        System.out.println(child.getFjcdbh());
                    }
                }
            }
            System.out.println(parentMenus.size());
            request.getSession().setAttribute("menus",parentMenus);
            message.setStatus("success");
            message.setMsg("");
        }
        return message;
    }
}
