package com.cqfour.bysj.controller;

import com.cqfour.bysj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by HYHSG on 2018/4/18.
 * 用户Controllo
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("getUser")
    @ResponseBody
    public String getAllUser(){
        userService.getAllUser();
        return "index";
    }
}
