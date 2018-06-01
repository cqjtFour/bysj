package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.RequestMessage;
import com.cqfour.bysj.bean.ResponseMessage;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

/**
 * Created by HYHSG on 2018/5/16.
 */
@Controller
public class WsController {
    @MessageMapping("/welcome")
    @SendTo("/topic/getResponse")
    public ResponseMessage say(RequestMessage message) {
        System.out.println(message.getName());
        return new ResponseMessage("welcome," + message.getName() + " !");
    }

}
