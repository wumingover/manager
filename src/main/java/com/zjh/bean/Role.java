package com.zjh.bean;

/* 
    @author zjh
    @date 2019/11/6-17:24
    @function 
    */
public class Role {

    private int id;//角色ID
    private String name;//角色名称

    public int getId() {
        return id;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
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
}
