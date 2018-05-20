package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.*;
import com.cqfour.bysj.service.MenuService;
import com.cqfour.bysj.service.RoleMenuService;
import com.cqfour.bysj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by HYHSG on 2018/4/18.
 * 用户Controllo
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleMenuService roleMenuService;

    @Autowired
    private MenuService menuService;

    @RequestMapping("getUser")
    @ResponseBody
    public String getAllUser(){
        userService.getAllUser();
        return "index";
    }

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
            //student session
            Student student=new Student();
            student.setXh(user.getDlzh());
            request.getSession().setAttribute("student",student);

            message.setStatus("success");
            message.setMsg("");
        }
        return message;
    }


    /**
     * 验证是否唯一
     * @param dzyx
     * @return
     */
    @RequestMapping("/validUser")
    @ResponseBody
    public Message validUserExist(@RequestParam("dzyx") String dzyx){
         User user=new User();
         user.setDlzh(dzyx);
         boolean flag=userService.validUser(user);
         Message msg=new Message();
         if(flag){//已存在
             msg.setMsg("该邮箱已经注册");
         }else{
             msg.setMsg("可以注册");
         }
         return msg;
    }

}
