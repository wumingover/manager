package com.zjh.bean;

/* 
    @author zjh
    @date 2019/11/14-11:17
    @function 
    */
public class HolidayType {
  private int id;
  private String name;

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

  @Override
  public String toString() {
    return "HolidayType{" +
            "id=" + id +
            ", name='" + name + '\'' +
            '}';
  }
}
