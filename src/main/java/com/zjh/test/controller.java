package com.zjh.test;

import com.zjh.bean.Dept;
import com.zjh.bean.User;
import com.zjh.controller.DeptController;
import com.zjh.service.DeptService;
import com.zjh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.*;
import java.util.List;
import java.util.Properties;

/*
    @author zjh
    @date 2019/11/7-16:55
    @function 
    */
@Controller
@RequestMapping()
public class controller {
    public static void main(String[] args) {
        Connection conn = null;
        PreparedStatement pst;
        Statement stmt = null;
        ResultSet rs;

        String DRIVER;
        String URL;
        String USER;
        String PASSWORD;

        Properties pt = new Properties();
        try {
            FileInputStream in = new FileInputStream("D:\\IDEA\\IntelliJ IDEA 2019.2.3\\manager\\src\\main\\resources\\db.properties");
            pt.load(in);
            DRIVER = pt.getProperty("jdbc.driver");
            URL = pt.getProperty("jdbc.url");
            USER = pt.getProperty("jdbc.username");
            PASSWORD = pt.getProperty("jdbc.password");

            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            stmt = conn.createStatement();
            String sql = "select * from t_dept";
            rs = stmt.executeQuery(sql);
            while (rs.next()){
                System.out.print(rs.getString("id"+""));
                System.out.print(",");
                System.out.print(rs.getString("name"+""));
                System.out.print(",");
                System.out.print(rs.getString("manager"+""));
                System.out.println();

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (conn != null) {
                        conn.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }


}
