package com.cqfour.bysj.util;

import java.sql.*;

public class AddDataToSql {

    public static void main(String args[]){
        for(int i = 0 ; i < 50 ; i++){
            addData();
        }
    }

    public static void addData(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("加载数据库驱动成功");
            String url="jdbc:mysql://localhost:3306/bysj";
            String user="root";//数据库的用户名
            String password="root";
            try {
                Connection conn= DriverManager.getConnection(url, user, password);
                System.out.println("连接数据库成功");
                String sql="INSERT INTO `t_xxxxfbb` (`ZGBH`, `XXLX`, `XXBT`, `FJ`, `XXZW`, `XXFBSJ`, `LLCS`) VALUES ('1', '就业指导', '面试需要注意的事项', '111', '巴拉巴拉变量不来不布拉德发士大夫十分士大夫文人未逢敌手发', '2014-03-04', '20')";
                Statement stmt=conn.createStatement();//创建一个Statement对象
                stmt.executeUpdate(sql);//执行sql语句
                System.out.println("插入到数据库成功");
                conn.close();
                System.out.println("关闭数据库成功");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    
}
