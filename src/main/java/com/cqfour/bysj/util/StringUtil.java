package com.cqfour.bysj.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class StringUtil {


    /**
     * 将数据库中的Date类型转为Stirng类型
     * @param date
     * @return
     */
    public static String dateToString(Date date){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return simpleDateFormat.format(date);

    }
}
