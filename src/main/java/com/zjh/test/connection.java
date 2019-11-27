package com.zjh.test;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.*;
import java.util.Properties;

/*
    @author zjh
    @date 2019/11/7-10:43
    @function 
    */
public class connection {

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
            String sql = "select * from t_user";
            rs = stmt.executeQuery(sql);
            while (rs.next()){
                System.out.print(rs.getString("id"+""));
                System.out.print(",");
                System.out.print(rs.getString("name"+""));
                System.out.print(",");
                System.out.print(rs.getString("role"+""));
                System.out.print(",");
                System.out.print(rs.getString("sex"+""));
                System.out.print(",");
                System.out.print(rs.getString("password"+""));
                System.out.print(",");
                System.out.print(rs.getString("dept"+""));
                System.out.print(",");
                System.out.print(rs.getString("phone"+""));
                System.out.print(",");
                System.out.print(rs.getString("id"+""));
                System.out.print(",");
                System.out.print(rs.getString("create_time"+""));
                System.out.print(",");
                System.out.print(rs.getString("out_time"+""));
                System.out.print(",");
                System.out.print(rs.getString("update_time"+""));
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
