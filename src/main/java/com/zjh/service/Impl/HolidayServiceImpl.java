package com.zjh.service.Impl;

import com.zjh.bean.Holiday;
import com.zjh.dao.HolidayDao;
import com.zjh.service.HolidayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/*
    @author zjh
    @date 2019/11/14-14:31
    @function 
    */
@Service
public class HolidayServiceImpl implements HolidayService {
    @Autowired
    HolidayDao holidayDao;
    @Override
    public List<Holiday> findAll() {
        return holidayDao.findAll();
    }

    @Override
    public void addHoliday(Holiday holiday) {
        holidayDao.addHoliday(holiday);
    }

    @Override
    public void delHoliday(int id) {
        holidayDao.delHoliday(id);
    }

    @Override
    public void updateHoliday(Holiday holiday) {
        holidayDao.updateHoliday(holiday);
    }

    @Override
    public Holiday findById(int id) {
        return holidayDao.findById(id);
    }
}
