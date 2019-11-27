package com.zjh.service;

import com.zjh.bean.Dept;

import java.util.List;

/*
    @author zjh
    @date 2019/11/7-21:33
    @function 
    */
public interface DeptService {

    //添加部门
    public void addDept(Dept dept);

    //删除部门
    public void deleteDept(int id);

    //修改部门信息
    public void updateDept(Dept dept);

    //查询部门信息
    public List<Dept> findAll();

    public Dept findOneById(int id);

}
