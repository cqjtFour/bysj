package com.cqfour.bysj.util;

import com.cqfour.bysj.bean.ReserveInfo;

import java.util.Comparator;

public class SortClass implements Comparator{


    @Override
    public int compare(Object o1, Object o2) {
        ReserveInfo reserveInfo = (ReserveInfo)o1;
        ReserveInfo reserveInfo2 = (ReserveInfo)o2;
        return reserveInfo.getZpsj().compareTo(reserveInfo2.getZpsj());
    }
}
