<%-- 
    Document   : validate
    Created on : Nov 27, 2021, 4:42:12 PM
    Author     : Admin
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%


        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehavior=convertToNull","root","");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from user_master where username='"+username+"' and password='"+password+"'");
        
        if(rs.next())
        {
            session.setAttribute("setUser",username);
            session.setAttribute("setPass",password);
            response.sendRedirect("member.jsp");
        }
        else
        {
            response.sendRedirect("index .jsp?invalid=1");
        }

%>



                      
