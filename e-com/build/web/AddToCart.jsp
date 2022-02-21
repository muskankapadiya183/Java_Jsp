<%-- 
    Document   : AddToCart
    Created on : Jan 4, 2022, 5:29:54 PM
    Author     : arjun
--%>

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
           int id = Integer.parseInt(request.getParameter("id"));
                  
           int uid = (Integer) s.getAttribute("u_id");
            int index = prod.AddToCart(uid,id);
            if (index==1){
               response.sendRedirect("ShowAddToCart.jsp");
           }
       %>
      
    </body>
</html>
