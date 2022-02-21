<%-- 
    Document   : checklogin
    Created on : Jan 3, 2022, 8:47:21 PM
    Author     : arjun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="conn" scope="session" class="Beans.DB" />
<%conn.Connect(); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
          
            String email = request.getParameter("email");
             String password = request.getParameter("password");
             int id  = conn.LoginUser(email, password);
             if(id!=0){
              HttpSession s = request.getSession();
              s.setAttribute("u_id",id);
              response.sendRedirect("Home.jsp");
             }else{
              response.sendRedirect("Login.jsp?type=0");
             }
       %>
    </body>
</html>
