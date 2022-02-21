<%-- 
    Document   : Session_AddToCart
    Created on : Jan 4, 2022, 9:45:06 PM
    Author     : arjun
--%>

<%@page import="java.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="prod" scope="page" class="Beans.Product" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession s = request.getSession();
           String id[] =  request.getParameterValues("addtocart");  
           
           s.setAttribute("AddToCart",id);
           response.sendRedirect("Session_ShowAddToCart.jsp");
           
       %>
       <%=Arrays.toString(id)%>
    </body>
</html>
