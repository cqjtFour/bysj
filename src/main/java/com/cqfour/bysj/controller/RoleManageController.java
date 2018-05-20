package com.cqfour.bysj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoleManageController {

    @RequestMapping("/roleManage")
    public String roleManage(){
        return "/WEB-INF/main/roleManage.jsp";
    }
}
