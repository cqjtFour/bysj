package com.cqfour.bysj.bean;

import java.util.List;

public class Message {

    private String status;

    private String msg;

    private List<ReserveInfo> reserveInfos;

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
