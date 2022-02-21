/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans;

import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;



/**
 *
 * @author arjun
 */
public class Product {
   DB d = new DB();
   int id;
    int aid;

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }
   String pname;
   String pprice;
   String pcolor;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPprice() {
        return pprice;
    }

    public void setPprice(String pprice) {
        this.pprice = pprice;
    }

    public String getPcolor() {
        return pcolor;
    }

    public void setPcolor(String pcolor) {
        this.pcolor = pcolor;
    }
    
   public ArrayList<Product> DisplayProduct() throws ClassNotFoundException, SQLException{
   d.Connect();
      ArrayList<Product> data = new ArrayList<Product>();
       ResultSet st =  d.st.executeQuery("Select * from produact");
       while(st.next()){
            Product prod = new Product();
            prod.setId(st.getInt("id"));
             prod.setPname(st.getString("pname"));
             prod.setPprice(st.getString("pprice"));
             prod.setPcolor( st.getString("pcolor"));
            data.add(prod);     
       }
      
       return data;
   }
   public ArrayList<Product> DisplayAddToCart(int id) throws ClassNotFoundException, SQLException{
   d.Connect();
      ArrayList<Product> data = new ArrayList<Product>();
       ResultSet st =  d.st.executeQuery("Select p.id,p.pname,p.pprice,p.pcolor,a.a_id from produact as p , addtocart as a WHERE p.id = a.p_id AND a.u_id = "+id+"");
       while(st.next()){
            Product prod = new Product();
            prod.setId(st.getInt("id"));
             prod.setPname(st.getString("pname"));
             prod.setPprice(st.getString("pprice"));
             prod.setPcolor( st.getString("pcolor"));
             prod.setAid(st.getInt("a_id"));
            data.add(prod);     
       }
      
       return data;
   }
    public int AddToCart(int u_id, int p_id) throws SQLException, ClassNotFoundException {
            d.Connect();
            String qry = "insert into addtocart values(NULL," + u_id + "," + p_id + ")";
        int ins = d.st.executeUpdate(qry);
        
        return ins;
    }
    public int AddToCartDelete(int id) throws SQLException, ClassNotFoundException {
            d.Connect();
            String qry = "delete from addtocart WHERE a_id = "+id+"";
        int ins = d.st.executeUpdate(qry);
        
        return ins;
    }
    public ArrayList<Product> SessionDisplayAddToCart(int id) throws ClassNotFoundException, SQLException{
   d.Connect();
      ArrayList<Product> data = new ArrayList<Product>();
       ResultSet st =  d.st.executeQuery("Select * from produact where id = "+id+"");
       while(st.next()){
            Product prod = new Product();
            prod.setId(st.getInt("id"));
             prod.setPname(st.getString("pname"));
             prod.setPprice(st.getString("pprice"));
             prod.setPcolor( st.getString("pcolor"));
            data.add(prod);     
       }
      
       return data;
   }
}
