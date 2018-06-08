package com.cqfour.bysj.bean;

import java.util.List;
import java.util.Map;

public class Message {

    private String status;

    private String msg;

    private List<ReserveInfo> reserveInfos;

    private List<Map<String,Integer>> maps;

    public List<Map<String, Integer>> getMaps() {
        return maps;
    }

    public void setMaps(List<Map<String, Integer>> maps) {
        this.maps = maps;
    }

    public List<ReserveInfo> getReserveInfos() {
        return reserveInfos;
    }




    public void setReserveInfos(List<ReserveInfo> reserveInfos) {
        this.reserveInfos = reserveInfos;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

}
