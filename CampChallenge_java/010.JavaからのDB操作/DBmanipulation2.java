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

/**
 *
 * @author 将也
 */
public class DBmanipulation2 extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        Connection con = null;
        
        //「PreparedStatement」クラスはDBにSQL処理を行う為のもの。
        PreparedStatement pst = null;

        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db","masaya","0000");
            
            //「prepareStatement」の引数内にSQL処理を記述する。
            pst = con.prepareStatement("insert into profiles values (?,?,?,?,?)");
            
            //「set○○」でSQLの?内に値をセットする。()の左側が?の順番の数値、右が入力する値。(?は0からではなく1からカウントする。)
            pst.setInt(1,5);
            pst.setString(2,"山本 将也");
            pst.setString(3,"333-333-3333");
            pst.setInt(4,25);
            pst.setString(5,"1991-11-21");
            
            //SQLでDBに何かしらの処理を行う際は「.executeUpdate();」を定義する。
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
