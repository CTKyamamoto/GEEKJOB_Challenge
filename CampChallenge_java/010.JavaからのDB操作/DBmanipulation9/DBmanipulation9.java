/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.db;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 将也
 */
public class DBmanipulation9 extends HttpServlet {

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
        
        request.setCharacterEncoding("UTF-8");
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        
        PrintWriter out = response.getWriter();
        
        Connection con = null;
        PreparedStatement pst = null;
        
        String strID = request.getParameter("ProfilesID");
        String name = request.getParameter("Name");
        String tell = request.getParameter("Tell");
        String strAGE = request.getParameter("Age");
        String strBIRTH = request.getParameter("Birthday");
        
        //「String」で取得するのでint型に変換。
        int id = Integer.parseInt(strID);
        int age = Integer.parseInt(strAGE);
        
        //util.Dateとsql.Dateの両方をインポートしている為、util指定をしてDateを定義する。
        java.util.Date birth = null;
        
        //ParseExceptionエラーが出てしまうのでtry-catchで括る。
        try {
            birth = sdf.parse(strBIRTH);
        } catch (ParseException ex) {
        }
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db","masaya","0000");
            
            //受け取った値を入れてDBに追加する処理。
            pst = con.prepareStatement("insert into profiles values (?,?,?,?,?)");
            pst.setInt(1,id);
            pst.setString(2,name);
            pst.setString(3,tell);
            pst.setInt(4,age);
            
            //long型をDate型にキャストする。
            pst.setDate(5,new Date(birth.getTime()));
            
            pst.executeUpdate();
            
            pst.close();
            con.close();
        
        } catch(SQLException sql) {
            out.println("接続時にエラーが発生しました："+sql.getMessage());
        } catch (Exception e) {
            out.println("接続時にエラーが発生しました："+e.getMessage());
        } finally {
            if (pst != null) {
                try {
                    pst.close();
                } catch (Exception e){
                    out.println(e.getMessage());
                }
            if (con != null) {
                try {
                    con.close();
                } catch (Exception e){
                    out.println(e.getMessage());
                }
            }
            }
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
