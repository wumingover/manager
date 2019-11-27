package com.zjh.dao;

import com.zjh.bean.Dept;

import java.util.List;

/*
    @author zjh
    @date 2019/11/7-21:30
    @function 
    */
public interface DeptDao {
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
