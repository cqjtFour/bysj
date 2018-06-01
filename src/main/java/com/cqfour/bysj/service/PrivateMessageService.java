package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.PrivateMessage;
import com.cqfour.bysj.mapper.PrivateMessageMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by HYHSG on 2018/5/14.
 */
@Service
public class PrivateMessageService {

    @Autowired
    private PrivateMessageMapper privateMessageMapper;

    /**
     * 通过发送用户账号和接收用户账号返回用户留言
     */
    public List<PrivateMessage> getPrivateMessageList(String fsyhzh,String jsyhzh){ return privateMessageMapper.getPrivateMessageList(fsyhzh,jsyhzh) ;}

    /**
     * 获得与某个对象通信的所有用户的名单
     */
    public List<PrivateMessage> getConversationNameList(String zh){ return privateMessageMapper.getConversationNameList(zh);}

    /**
     * 添加新的通信记录
     */
    public int insertPrivateMessage(PrivateMessage privateMessage){ return  privateMessageMapper.insert(privateMessage);}

    /**
     * 获得未读信息数量
     */
    public  String  getUnreadMessage(String fsyhzh,String jsyhzh){ return  privateMessageMapper.getUnreadMessage(fsyhzh,jsyhzh);}

    /**
     * 更改信息发送者的所有信息为已读，1表示已读，0表示未读
     */
    public void setAlreadyRead(String fsyhzh ,String jsyhzh){ privateMessageMapper.setAlreadyRead(fsyhzh,jsyhzh);}



}
