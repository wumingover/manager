package com.zjh.service.Impl;

import com.zjh.bean.Dept;
import com.zjh.dao.DeptDao;
import com.zjh.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/*
    @author zjh
    @date 2019/11/7-21:34
    @function 
    */
@Service
public class DeptServiceImpl implements DeptService {

    @Autowired
    private DeptDao deptDao;
    @Override
    public void addDept(Dept dept) {
        deptDao.addDept(dept);
    }

    @Override
    public void deleteDept(int id) {
        deptDao.deleteDept(id);
    }

    @Override
    public void updateDept(Dept dept) {
        deptDao.updateDept(dept);
    }

    @Override
    public List<Dept> findAll() {
        return deptDao.findAll();
    }

    @Override
    public Dept findOneById(int id) {
       return deptDao.findOneById(id);
    }
}
