package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.PrivateMessage;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "privateMessageMapper")
public interface PrivateMessageMapper extends MyMapper<PrivateMessage> {
}