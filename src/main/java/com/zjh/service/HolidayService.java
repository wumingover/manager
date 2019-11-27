package com.zjh.service;

import com.zjh.bean.Holiday;

import java.util.List;

/*
    @author zjh
    @date 2019/11/14-14:31
    @function 
    */
public interface HolidayService {

    public List<Holiday> findAll();
    //添加请假
    public void addHoliday(Holiday holiday);
    //删除请假
    public void delHoliday(int id);
    //请假审核
    public void updateHoliday(Holiday holiday);
    //查询
    public Holiday findById(int id);

}
