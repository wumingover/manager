package com.zjh.bean;

import java.sql.Date;

/*
    @author zjh
    @date 2019/11/14-11:20
    @function 
    */
public class Holiday {

    private int id;//请假记录ID
    private String user;//请假人
    private int type;//请假类型
    private String reason;//请假原因
    private Date start_time;//请假开始时间
    private Date end_time;//请假结束时间
    private Date create_time;//该次请假创建时间
    private Date update_time;//该次请假修改时间

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public Date getStart_time() {
        return start_time;
    }

    public void setStart_time(Date start_time) {
        this.start_time = start_time;
    }

    public Date getEnd_time() {
        return end_time;
    }

    public void setEnd_time(Date end_time) {
        this.end_time = end_time;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }

    @Override
    public String toString() {
        return "Holiday{" +
                "id=" + id +
                ", user='" + user + '\'' +
                ", type=" + type +
                ", reason='" + reason + '\'' +
                ", start_time=" + start_time +
                ", end_time=" + end_time +
                ", create_time=" + create_time +
                ", update_time=" + update_time +
                '}';
    }
}
