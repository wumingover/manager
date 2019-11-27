package com.zjh.controller;

import com.zjh.bean.User;
import com.zjh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.swing.*;
import java.util.List;

/*
    @author zjh
    @date 2019/11/7-11:28
    @function 
    */
@RequestMapping("user")
@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("findAll.do")
    public ModelAndView findAll() {
        List<User> users = userService.findAll();
        ModelAndView mv = new ModelAndView();
        mv.addObject("us", users);
        mv.setViewName("../jsp/user/allUser");
        return mv;
    }

    @RequestMapping("addUser.do")
    public String addUser(User user) {
        System.out.println(user);
        System.out.println("--------------------------------------------");
        userService.addUser(user);
        return "redirect:findAll.do";
    }
    @RequestMapping("deleteUser.do")
    public String delete(int id){
        System.out.println(id);
        System.out.println("--------------------------------------------");
        userService.deleteUser(id);
        return "redirect:findAll.do";
    }
    @RequestMapping("beforeupdate.do")
    public ModelAndView updateUser(int id){
        ModelAndView mv = new ModelAndView();
        mv.addObject("us",userService.findById(id));
        mv.setViewName("../jsp/user/userUpdate");
        return mv;
    }
    @RequestMapping("updateUser.do")
    public String updateUser(User user){
        System.out.println(user);
        userService.updateUser(user);
        return "redirect:findAll.do";
    }


    @RequestMapping("findByPhone")
    public String findByPhone(HttpServletRequest request) {
        List<User> list = userService.findAll();
        System.out.println(list);
        System.out.println(request.getParameter("str"));
        System.out.println(request.getParameter("password"));
        System.out.println("--------------------------------------------------------");
        for (User user : list) {
            if ((user.getPhone().equals(request.getParameter("str")) ||
                    user.getName().equals(request.getParameter("str"))) &&
                    user.getPassword().equals(request.getParameter("password"))) {
                System.out.println("欢迎");
                return "redirect:../jsp/main.jsp";
            }
        }
        JOptionPane.showMessageDialog(null, "用户名或密码错误！请重新登录", "认证失败！", JOptionPane.ERROR_MESSAGE);
        return "../index";
    }


}
