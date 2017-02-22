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

//mySQLを使うので「java.sql.*」をインポートする。
import java.sql.*;

/**
 *
 * @author 将也
 */
public class DBmanipulation1 extends HttpServlet {

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
        
        //データベースに接続する為、「Connection」クラスの変数を定義。
        Connection con = null;
        
        try
        {
            //mySQLのドライバを利用可能にする。(forName()のかっこの中はデータベース事にドライバが決まっている。)
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            //「getConnection」の引数にデータベースの情報を入れる。(localhost=自身のPC、他者のDBにアクセスする場合はIPアドレスを入れる。)
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db","masaya","0000");
            
            out.println("接続成功!");
            
            //データベース操作後は必ず「close」で閉める。
            con.close();
        
        //「try」「catch」＝エラーハンドリング。 エラーが発生した場合、「catch」の中に入りエラー報告を行う。
        } catch(SQLException sqle) {
            out.println("接続時にエラーが発生しました："+sqle.getMessage());
        } catch (Exception e) {
            out.println("接続時にエラーが発生しました："+e.getMessage());
        
        //「finally」は必ず入る場所。この中でDBのクローズ処理を行い、必ずクローズする。
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (Exception e_con){
                    out.println("接続時にエラーが発生しました："+e_con.getMessage());
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
