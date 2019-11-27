package com.zjh.controller;

import com.zjh.bean.Dept;
import com.zjh.bean.User;
import com.zjh.page.Page;
import com.zjh.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.swing.*;
import java.util.List;

/*
    @author zjh
    @date 2019/11/7-21:36
    @function 
    */
@RequestMapping("dept")
@Controller
public class DeptController {
    @Autowired
    DeptService deptService;

    @RequestMapping("findAll.do")
    public ModelAndView findAll() {
        List<Dept> depts = deptService.findAll();
        System.out.println(depts);
        ModelAndView mv = new ModelAndView();
        mv.addObject("de", depts);
        mv.setViewName("dept/allDept");
        return mv;
    }

    @RequestMapping("addDept.do")
    public String addDept(Dept dept) {
     /*   String name = dept.getName();
        String manager = dept.getManager();
        System.out.println(name);
        System.out.println(manager);
        System.out.println("****************************************************************");*/
/*
     List<Dept> list = deptService.findAll();
        System.out.println(list);
        for (Dept dep :list){
            System.out.println(dep.getName()+"");
            System.out.println("--------------------------------------");
            System.out.println(dept.getName()+"");
            if (dept.getName().equals(dep.getName())){
                System.out.println("重复");
                return "redirect:main.jsp";
            }
            else {
                deptService.addDept(dept);
            }
        }
*/

        if (dept != null) {
            deptService.addDept(dept);
        }
        return "redirect:findAll.do";


    }

    @RequestMapping("deleteDept.do")
    public String delete(int id) {
        deptService.deleteDept(id);
        return "redirect:findAll.do";
    }

    @RequestMapping("beforeupdateDept.do")
    public ModelAndView update(int id) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("d", deptService.findOneById(id));
        mv.setViewName("../jsp/dept/updateDept");
        return mv;
    }

    @RequestMapping("updateDept.do")
    public String update(Dept dept) {
        deptService.updateDept(dept);
        return "redirect:findAll.do";
    }

}
