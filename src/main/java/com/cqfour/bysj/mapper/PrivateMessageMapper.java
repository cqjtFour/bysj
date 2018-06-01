package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.PrivateMessage;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "privateMessageMapper")
public interface PrivateMessageMapper extends MyMapper<PrivateMessage> {

     List<PrivateMessage> getPrivateMessageList( @Param("fsyhzh") String fsyhzh, @Param("jsyhzh") String jsyhzh);

     List<PrivateMessage> getConversationNameList(@Param("zh") String zh);

     String getUnreadMessage(@Param("fsyhzh") String fsyhzh , @Param("jsyhzh") String jsyhzh);

     void setAlreadyRead(@Param("fsyhzh") String fsyhzh ,@Param("jsyhzh") String jsyhzh);
}