<%-- 
    Document   : register
    Created on : Nov 27, 2021, 8:02:08 PM
    Author     : Admin
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

        if(request.getParameter("invalid") != null)
        {
            out.println("<div style='color:red'>Worng Username and Password</div>");
        }


%>

<%

    if(request.getParameter("submit") != null)
    {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String city = request.getParameter("city");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehavior=convertToNull","root","");
        PreparedStatement pst = con.prepareStatement("insert into user_master(username,password,email,city) values(?,?,?,?)");
        pst.setString(1,username);
        pst.setString(2,password);  
        pst.setString(3,email);
        pst.setString(4,city);
        pst.executeUpdate();
        
        
    %>
    
    <script>
        alert("Added Record");
    </script>
    <%
        response.sendRedirect("member.jsp");
    }



%>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <style>
      .div1
        { 
            background: #0f2027;
            background: -webkit-linear-gradient(to right, #0f2027, #203a43, #2c5364);
            background: linear-gradient(to right, #0f2027, #203a43, #2c5364); 
        }
  </style>
  
  <!--<img src="image/black.jpg" alt=""/>-->
  <body>
      <header>
          <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Data</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                  <a class="nav-link text-light" href="login.jsp">Login</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-light" href="regi.jsp">Sign Up</a>
                </li>
              </ul>
            </div>
          </nav>
      </header>
      
      <section class="">
          <div class="div1">
                <div class="d-flex justify-content-center">
                    <div class="mt-5 w-50  p-4 py-4 text-left text-light">
                        <form class="row" action="#">
                          <h1 class="mb-3 text-light">Register Form</h1>
                          <div class="col-12 mb-3">
                            <label for="inputEmail4" class="form-label">Username</label>
                            <input type="text" class="form-control" id="inputEmail4" name="username">
                          </div>
                          <div class="col-12 mb-3">
                            <label for="inputPassword4" class="form-label">Password</label>
                            <input type="password" class="form-control" id="inputPassword4" name="password">
                          </div>
                          <div class="col-12 mb-3">
                            <label for="inputAddress" class="form-label">Email</label>
                            <input type="email" class="form-control" id="inputAddress" placeholder="" name="email">
                          </div>
                          <div class="col-12 mb-3">
                            <label for="inputAddress2" class="form-label">City</label>
                            <input type="text" class="form-control" id="inputAddress2" placeholder="" name="city">
                          </div>
                           <div class="col-12 mb-3">
                            <label for="inputAddress2" class="form-label">City</label>
                            <input type="text" class="form-control" id="inputAddress2" placeholder="" name="city">
                          </div>
                          <div class="col-12 mb-3">
                              <button type="submit" name="submit" class="btn btn-secondary w-25" value="submit">Sign in</button>
                          </div>
                        </form>
                    </div>
                </div>
          </div>
      </section>

      
<!--      <footer class="footer border-top bg-warning py-3 fixed-bottom" id="footer">
        <div class="container-lg">
            <div class="row">
                <div class="col-lg-12">
                    <p class="m-0 text-center text-muted">&copy; CopyRight Quiz Test</p>
                </div>
            </div>
        </div>
      </footer>-->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

  </body>
</html>

