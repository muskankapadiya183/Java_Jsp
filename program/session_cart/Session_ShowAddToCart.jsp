<%-- 
    Document   : Session_ShowAddToCart
    Created on : Jan 4, 2022, 9:55:46 PM
    Author     : arjun
--%>
<jsp:useBean id="prod" scope="page" class="Beans.Product" />
 <%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <title>JSP Page</title>
    </head>
    <body>
        <div style="height: 400px"></div>
        <table class="table" width="50%">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Product Name</th>
      <th scope="col">Product Price </th>
      <th scope="col">Product Color</th>
    
    </tr>
  </thead>
  <tbody>
      <%
           ArrayList<Beans.Product> data = new ArrayList<Beans.Product>();
             HttpSession s = request.getSession();
           String uid[] = (String[]) s.getAttribute("AddToCart");
             for(String d : uid){
          data = prod.SessionDisplayAddToCart(Integer.parseInt(d));
          for(Beans.Product p :data){
      %>
     <tr>
          <th scope="row"><%= p.getId()%></th>
      <td><%= p.getPname()%></td>
      <td><%= p.getPprice()%></td>
      <td><%= p.getPcolor()%></td>
    </tr>
       <%
       }
             }
       %>
       </tbody>
</table>
    </body>
</html>
