package com.cqfour.bysj.util;

import com.cqfour.bysj.service.ReserveInfoService;
import org.springframework.beans.factory.annotation.Autowired;

public class TestMain {

    @Autowired
    private ReserveInfoService reserveInfoService;

    public static void main(String args[]){
        TestMain testMain = new TestMain();
        testMain.test();
    }

    public void test(){
        String s = reserveInfoService.selectAll();
        System.out.println(s);
    }
}
