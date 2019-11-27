package com.zjh.controller;

import com.zjh.bean.Holiday;
import com.zjh.service.HolidayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/*
    @author zjh
    @date 2019/11/14-14:35
    @function 
    */
@Controller
@RequestMapping("holiday")
public class HolidayController {
    @Autowired
    private HolidayService holidayService;

    @RequestMapping("addHoliday.do")
    public String addHoliday(Holiday holiday){
        System.out.println(holiday);
        System.out.println("-----------------------------");
        holidayService.addHoliday(holiday);
        return "redirect:findAll.do";
    }
    @RequestMapping("delHoliday.do")
    public String delHoliday(int id){
        holidayService.delHoliday(id);
        return "redirect:findAll.do";
    }
    @RequestMapping("beforeUpdate.do")
    public ModelAndView beforeUpdate(int id){
        ModelAndView mv = new ModelAndView();
        mv.addObject("ho",holidayService.findById(id));
        mv.setViewName("../jsp/holiday/holidayUpdate");
        return mv;
    }
    @RequestMapping("updateHoliday.do")
    public String updateHoliday(Holiday holiday){
        holidayService.updateHoliday(holiday);
        return "redirect:findAll.do";
    }

    @RequestMapping("findAll.do")
    public ModelAndView findAll() {
        List<Holiday> list = holidayService.findAll();
        System.out.println(list);
        ModelAndView mv = new ModelAndView();
        mv.addObject("holiday", holidayService.findAll());
        mv.setViewName("../jsp/holiday/allHoliday");
        return mv;
    }

}
