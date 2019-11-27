package com.zjh.service;

import com.zjh.bean.User;

import java.util.List;

/*
    @author zjh
    @date 2019/11/7-11:26
    @function 
    */
public interface UserService {

    //添加用户
    public int addUser(User user);
    //删除用户
    public void deleteUser(int id);
    //修改用户
    public void updateUser(User user);
    //根据ID查询用户
    public User findById(int id);
    //根据姓名查询用户     登陆
    public User findByNameOrPhone(String str);

    public User findByPhone(String str);
    //查询所有用户
    public List<User> findAll();

}
