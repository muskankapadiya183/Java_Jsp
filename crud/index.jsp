<%-- 
    Document   : login
    Created on : Nov 27, 2021, 4:22:48 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

        if(request.getParameter("invalid") != null)
        {
            out.println("<script>alert('Worng Username and Password');</script>");
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

    <title>LOGIN</title>
    <style>
        .row
        {
            margin: 0 !important;
        }
    </style>
  </head>
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
                  <a class="nav-link text-light" href="index.jsp">Login</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-light" href="register.jsp">Sign Up</a>
                </li>
              </ul>
            </div>
          </nav>
      </header>
      
            <section>
              <div class="row" style=" margin: 0 !important;">
                  <div class="col-6">
                      <div class="mt-5 d-flex justify-content-center">
                        <div class="w-100 p-4 py-5 mt-4 ">
                            <form method="post" action="validate.jsp" name=""loginForm>
                                 <div class="form-group">
                                      <h1 class="">Login Form</h1>
                                 </div>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">UserName</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" name="username" aria-describedby="emailHelp">
                                  </div>
                                  <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" name="password" id="exampleInputPassword1">
                                  </div>
                                  <button type="submit" name="btn_login" class="btn btn-secondary px-3">Login</button>
                                  <button type="reset" name="btn_reset" class="btn btn-secondary px-3">Reset</button>
                            </form>
                        </div>
                    </div>
                  </div>
                  <div class="col-6 p-5">
                    <div class="">
                        <img src="image/img.gif" alt="" width="100%" class="w-100"/>
                    </div>
                  </div>
                </div>
            </section>

      
      <footer class="footer border-top bg-dark py-3 fixed-bottom" id="footer">
        <div class="container-lg">
            <div class="row">
                <div class="col-lg-12">
                    <p class="m-0 text-center text-light">&copy; CopyRight User Data</p>
                </div>
            </div>
        </div>
      </footer>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

  </body>
</html>
