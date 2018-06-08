package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.*;
import com.cqfour.bysj.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

    @Autowired
    private StudentService studentService;

    @Autowired
    private PrivateMessageService privateMessageService;

    @Autowired
    private EmployersService employersService;

    @Autowired
    private JobService jobService;

    @Autowired
    private ApplyService applyService;

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
        Student student=new Student();
        if(user.getJsbh()==3){
            student=studentService.getStudent(username);
        }
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
                        if ((child.getFjcdbh()==5 && child.getCdbh()==25)){
                            if (student.getZwpj()!=null&&student.getZwpj().length()!=0)
                                continue;
                        }
                        if ((child.getFjcdbh()==5 && child.getCdbh()==26)){
                            if (student.getZwpj()==null||student.getZwpj().length()==0)
                                continue;
                        }
                        parent.getChildren().add(child);
                        System.out.println(child.getFjcdbh());
                    }
                }
            }

            //通过角色编号
            if(user.getJsbh()==3){//学生
                request.getSession().setAttribute("student",student);
                List<PrivateMessage> conversationNameList=privateMessageService.getConversationNameList(username);
                request.getSession().setAttribute("conversationNameList",conversationNameList);
                String []unreadMessageNumbers=new String[30];
                int i=0;
                for (PrivateMessage privateMessage:conversationNameList){
                    unreadMessageNumbers[i]=privateMessageService.getUnreadMessage(privateMessage.getFsyhzh(),username);
                    if (unreadMessageNumbers[i].equals("0"))
                        unreadMessageNumbers[i]=null;
                    i++;
                }
                request.getSession().setAttribute("unreadMessageNumbers",unreadMessageNumbers);
            }else if(user.getJsbh()==4){//用人单位
                Employers employers;
                employers=employersService.getEmployer(username);
                List<Job> gws= jobService.getGwList(employers.getYrdwxxbbh());//岗位列表
                request.getSession().setAttribute("gws",gws);
                List<Apply> applies=applyService.getStudentsByGw(employers.getYrdwxxbbh(),0,"","",3); //投递简历列表
                request.getSession().setAttribute("applies" ,applies);
                request.getSession().setAttribute("employers",employers);
                List<PrivateMessage> conversationNameList=privateMessageService.getConversationNameList(username);//通信对象列表
                request.getSession().setAttribute("conversationNameList",conversationNameList);
                String []unreadMessageNumbers=new String[30];
                int i=0;
                for (PrivateMessage privateMessage:conversationNameList) {
                    unreadMessageNumbers[i] = privateMessageService.getUnreadMessage(privateMessage.getFsyhzh(), username);//未读信息数列表
                    if (unreadMessageNumbers[i].equals("0"))
                        unreadMessageNumbers[i] = null;
                    i=i+1;
                }
                request.getSession().setAttribute("unreadMessageNumbers",unreadMessageNumbers);
            }

            request.getSession().setAttribute("user",user);
            request.getSession().setAttribute("menus",parentMenus);
            message.setStatus("success");
            message.setMsg("");
        }
        return message;
    }

    @RequestMapping("/passwordVerification")
    @ResponseBody
    public boolean passwordVerification(User user){
        boolean b=false;
        user=userService.passwordVerification(user);
        if (user !=null)
            b=true;
        return  b;
    }

    @RequestMapping("/updatePassword")
    @ResponseBody
    public boolean updatePassword(User user , HttpServletRequest request){
        boolean b=false;
        if(userService.updatePassword(user)==1)
            b=true;
        user=userService.getUser(user.getDlzh());
        request.getSession().setAttribute("user",user);
        return b;
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
