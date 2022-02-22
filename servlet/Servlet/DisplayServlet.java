/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 *
 * @author Admin
 */
public class DisplayServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
              String name = request.getParameter("txtname");
               String password = request.getParameter("txtpass");
               String email = request.getParameter("txtemail");
               String city = request.getParameter("txtcity");
            

               
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehavior=convertToNull","root","");
           Statement st = con.createStatement();
           if(request.getParameter("deleteid") != null)
           {
//               out.println("delete");
               String delete = "delete from user_master where username='"+request.getParameter("deleteid")+"'";
               int i = st.executeUpdate(delete);
               if(i==1)
               {
                   out.println("<script>alert('Record Deleted Successfully....');</script>");
               }
               else
               {
                   out.println("<script>alert('Not Deleted');</script>");
               }
               
           }
           String sql = "select * from user_master";
           ResultSet rs = st.executeQuery(sql);
           
            out.println("<center><table border='5' width='70%' class='table'>");
            out.println("<h1>Display Information</h1>");
            out.println("<tr><th>Name</th><th>Password</th><th>Email</th><th>City</th><th>Edit</th><th>Delete</th><tr>");
            while (rs.next())
            {
                out.println("<tr>");
                out.println("<td>");
                out.println(rs.getString("username"));
                out.println("</td>");
                 out.println("<td>");
                out.println(rs.getString("password"));
                out.println("</td>");
                 out.println("<td>");
                out.println(rs.getString("email"));
                out.println("</td>");
                 out.println("<td>");
                out.println(rs.getString("city"));
                out.println("</td>");
                out.println("<td>");
                out.println("<a href='EditServlet?edit="+rs.getString("username")+"'>Edit</a>");
                out.println("</td>");
                out.println("<td>");
                out.println("<a href='DisplayServlet?deleteid="+rs.getString("username")+"'>Delete</a>");
                out.println("</td>");
                out.println("</tr>");
            }
           out.println("</table></center>");
          
           
           
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DisplayServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DisplayServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
