<%-- 
    Document   : AddToCartDelete
    Created on : Jan 4, 2022, 9:17:16 PM
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
           
           int id = Integer.parseInt(request.getParameter("did"));
                  
          
            int index  = prod.AddToCartDelete(id);
            if (index==1){
               response.sendRedirect("ShowAddToCart.jsp");
           }
       %>
    </body>
</html>
