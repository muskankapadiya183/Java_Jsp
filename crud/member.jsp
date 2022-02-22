<%-- 
    Document   : member
    Created on : Nov 27, 2021, 4:42:34 PM
    Author     : Admin
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
        //check Session
//        String username = (String)session.getAttribute("setUser");
        if(session.getAttribute("setUser")== null)
        {
            out.println("<script>alert('Session start');</script>");
            response.sendRedirect("index.jsp");
        } 
%>

<!--Delete User-->
<%

         Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehavior=convertToNull","root","");
        Statement st1 = con.createStatement();
        String deleteId = (String)request.getParameter("deleteid");
        if(deleteId != null)
        {
            int id = Integer.parseInt(deleteId);
            int recordCount = st1.executeUpdate("delete from user_master where id =" + id);
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

    <title>User Info</title>
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
                  <a class="nav-link text-light" href="logout.jsp">Logout</a>
                </li>
              </ul>
            </div>
          </nav>
      </header>
      
      <section class="home py-5" id="home">
          <div class="mb-5" style="height: 100vh">
        <div class="container-lg">
            <div class="row min-vh-50 align-item-center align-content-center">
                <div class="col-md-12 mt-5">
                    <div class="">
                        <!--<h4>Welcome <%//out.println(session.getAttribute("setUser"));%></h4>-->
                        <h1 class="text-center text-capitalize font-weight-bold">User Information</h1>
                    </div>
                    <table class="table table-hover table-dark">
                        <thead>
                          <tr>
                            <th scope="col">User Id</th>
                            <th scope="col">User Name</th>
                            <th scope="col">Password</th>
                            <th scope="col">Email</th>
                            <th scope="col">City</th>
                            <th scope="col" colspan="2" class="text-center">Action</th>
                          </tr>
                        </thead>
                        <%
                        
                            int start=0,recordCount=3;
                            int pgno = request.getParameter("pgno")== null?0:Integer.parseInt(request.getParameter("pgno"));
                            start = pgno*recordCount;
                            Class.forName("com.mysql.jdbc.Driver");
//                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=convertToNull","root","");
                            String sql = "select * from user_master limit ?,?";
                            PreparedStatement pst = con.prepareStatement(sql);
                            pst.setInt(1,start);
                            pst.setInt(2,recordCount);
                            ResultSet rs = pst.executeQuery();
                            
                            
                            while(rs.next())
                            {
                               

                        %>
                        <tbody>
                          <tr>
                            <th scope="row"><%=rs.getString("id")%></th> 
                            <td><%=rs.getString("username")%></td>
                            <td><%=rs.getString("password")%></td>
                            <td><%=rs.getString("email")%></td>
                            <td><%=rs.getString("city")%></td>
                            <td><a href="edit.jsp?id=<%=rs.getString("id")%>" class="btn btn-success px-4">Edit</a></td>
                            <td><a href="member.jsp?deleteid=<%=rs.getString("id")%>" class="btn btn-danger px-3">Delete</a></td>
                          </tr>
                        </tbody>
                       <%
                           }
                           String sql1 = "select count(*) from user_master";
                           PreparedStatement pst1 = con.prepareStatement(sql1);
                           ResultSet rs1 = pst1.executeQuery();
                           int total=0;
                           if(rs1.next())
                           {
                                total=rs1.getInt(1);
                           }
                       %>
                   
                    </table>
                    <div class="">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-center">
                              <% for(int i=0;i<=total/recordCount;i++){%>
                              <li class="page-item px-2"><a class="page-link bg-dark text-light rounded-circle" href="member.jsp?pgno=<%=i%>"><%=i+1%></a></li>
                                <%}%>
                            </ul>
                        </nav>
                    </div>
                </div>
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

