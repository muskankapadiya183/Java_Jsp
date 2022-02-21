/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import java.sql.*;
import java.util.Arrays;

/**
 *
 * @author arjun
 */
public class DB {

    Statement st;

    public void Connect() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom?zeroDateTimeBehavior=convertToNull", "root", "");
        st = con.createStatement();
        System.out.println("Connection .......");
    }

    public int InsertUser(String name, String email, String password) throws SQLException {

            String qry = "insert into user values(NULL,'" + name + "','" + email + "','" + password + "')";
        int ins = st.executeUpdate(qry);
        
        return ins;
    }
    public int LoginUser(String email, String password) throws SQLException{
              String qry = "select * from user where email = '"+email+"' and password = '"+password+"' ";
        ResultSet rs = st.executeQuery(qry);
        int sel ;
        if(rs.next()){
            sel = rs.getInt("id");
        }else{
            sel = 0;
        }
        return sel;
    }
}
