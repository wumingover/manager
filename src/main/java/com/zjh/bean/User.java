package com.zjh.bean;

import java.sql.Date;

/*
    @author zjh
    @date 2019/11/6-17:25
    @function 
    */
public class User {

    private  int id;
    private String name;
    private int role;
    private String sex;
    private String password;
    private String dept;
    private String phone;
    private int state;
    private Date create_time;
    private Date out_time;
    private Date update_time;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getOut_time() {
        return out_time;
    }

    public void setOut_time(Date out_time) {
        this.out_time = out_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", role=" + role +
                ", sex='" + sex + '\'' +
                ", password='" + password + '\'' +
                ", dept='" + dept + '\'' +
                ", phone='" + phone + '\'' +
                ", state=" + state +
                ", create_time=" + create_time +
                ", out_time=" + out_time +
                ", update_time=" + update_time +
                '}';
    }
    /*   public User(int id, String name, Integer role, String sex, String password, String dept, String phone, Date create_time, Date out_time, Date update_time, Dept dep) {
        this.id = id;
        this.name = name;
        this.role = role;
        this.sex = sex;
        this.password = password;
        this.dept = dept;
        this.phone = phone;
        this.create_time = create_time;
        this.out_time = out_time;
        this.update_time = update_time;
        this.dep = dep;
    }*/
}
