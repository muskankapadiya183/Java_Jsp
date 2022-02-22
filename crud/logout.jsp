<%-- 
    Document   : logout
    Created on : Nov 27, 2021, 5:18:29 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

        session.invalidate();
        response.sendRedirect("index.jsp");

%>
