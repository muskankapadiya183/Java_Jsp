<%-- 
    Document   : addsignup
    Created on : Jan 3, 2022, 9:06:46 PM
    Author     : arjun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="conn" scope="page" class="Beans.DB" />
<%conn.Connect(); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
           String name = request.getParameter("name");
            String email = request.getParameter("email");
             String password = request.getParameter("password");
            
       int index= conn.InsertUser(name,email,password);
           if (index==1){
               response.sendRedirect("Login.jsp");
           }
       %>
       
       
       
    </body>
</html>
