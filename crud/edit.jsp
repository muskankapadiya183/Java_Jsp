<%-- 
    Document   : edit
    Created on : Nov 28, 2021, 12:33:58 AM
    Author     : Admin
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if(request.getParameter("submit") != null)
    {
        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String city = request.getParameter("city");
        if(id != null)
        {
           Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehavior=convertToNull","root","");
            String sql = "update user_master set id=?,username=?,password=?,email=?,city=? where id="+id;

            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1,id);
            pst.setString(2,username);  
            pst.setString(3,password);
            pst.setString(4,email);
            pst.setString(5,city);
            out.println(sql);
            int i = pst.executeUpdate(); 
            if(i > 0)
            {
              out.print("<script> alert('Recored Updated...'); </script>"); 
              response.sendRedirect("member.jsp");
            }
            else
            {
                out.print("There is a problem in updating Record.");
            }
        }
        else
        {
            out.println("Erorrorr");
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <style>
      .div1
        { 
            background: #0f2027;
            background: -webkit-linear-gradient(to right, #0f2027, #203a43, #2c5364);
            background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
            height: 100vh;
        }
  </style>
    <body>
        <section>
          <div class="div1">
          <div class="d-flex justify-content-center">
              <div class="mt-5 w-50 p-4 py-4 text-light">
                  <form class="row" action="#">
                    <h1 class="mb-3 text-light">Update Form</h1>
                    <%

                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehavior=convertToNull","root","");
                                String id = request.getParameter("id");                                
                                PreparedStatement pst = con.prepareStatement("select * from user_master where id=?");
                                pst.setString(1,id);
                                ResultSet rs = pst.executeQuery();  
                                while(rs.next())
                                {
                                    
                             
                    %>
                    
                    <div class="col-12 mb-3">
                        <input type="hidden" name="id" value="<%=rs.getString("id") %>">
                    </div> 
                    
                    <div class="col-12 mb-3">
                      <label for="inputEmail4" class="form-label">Username</label>
                      <input type="text" class="form-control" id="inputEmail4" value="<%= rs.getString("username")%>" name="username">
                    </div>
                    <div class="col-12 mb-3">
                      <label for="inputPassword4" class="form-label">Password</label>
                      <input type="text" class="form-control" id="inputPassword4" value="<%= rs.getString("password")%>" name="password">
                    </div>
                    <div class="col-12 mb-3">
                      <label for="inputAddress" class="form-label">Email</label>
                      <input type="email" class="form-control" id="inputAddress" placeholder="" value="<%= rs.getString("email")%>" name="email">
                    </div>
                    <div class="col-12 mb-3">
                      <label for="inputAddress2" class="form-label">City</label>
                      <input type="text" class="form-control" id="inputAddress2" placeholder="" value="<%= rs.getString("city")%>" name="city">
                    </div>
                    <% 
                           }
                    %>
                    <div class="col-12 mb-3">
                        <button type="submit" name="submit" class="btn btn-secondary" value="submit">Update</button>
                         <a href="member.jsp" class="btn btn-secondary">Click Back</a>
                    </div>
                  </form>
                </div>
          </div>
          </div>
      </section>

      
    </body>
</html>
