package com.zjh.service.Impl;

import com.zjh.bean.User;
import com.zjh.dao.UserDao;
import com.zjh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/*
    @author zjh
    @date 2019/11/7-11:27
    @function 
    */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    @Override
    public int addUser(User user) {
        return userDao.addUser(user);
    }

    @Override
    public void deleteUser(int id) {
        userDao.deleteUser(id);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public User findById(int id) {
        return userDao.findById(id);
    }

    @Override
    public User findByNameOrPhone(String str) {
        return userDao.findByNameOrPhone(str);
    }

    @Override
    public User findByPhone(String str) {
        return userDao.findByPhone(str);
    }


    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }

}
