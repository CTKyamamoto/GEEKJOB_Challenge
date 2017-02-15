/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.blackjack;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author 将也
 */
public class Blackjacktest extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Blackjacktest</title>");            
            out.println("</head>");
            out.println("<body>");
            
            //「Dealer」と「User」クラスをインスタンスする。
            Dealer dealer = new Dealer();
            User user = new User();
            
            //まずはディーラーとユーザーの手札にトランプを2枚持たせる。(dealする。)
            ArrayList<Integer[]> cards1 = dealer.deal();
            user.setCard(cards1);
            ArrayList<Integer[]> cards2 = dealer.deal();
            dealer.setCard(cards2);
            
            //外でtrueを定義するのはwhileの中に入って無限ループをさせない為。
            boolean needHit1 = true;
            boolean needHit2 = true;
            
            //dealをした2枚の手札の合計点がcheckSumで定義した16以下であれば1枚トランプを引く(hit)処理をする為のループ処理。
            while(needHit1 == true || needHit2 == true){
                
                needHit1 = user.checkSum();
                needHit2 = dealer.checkSum();
            
                if(needHit1 == true){
                    ArrayList<Integer[]> userHit = dealer.hit();
                    user.setCard(userHit);
            }
                if(needHit2 == true){
                    ArrayList<Integer[]> dealerHit = dealer.hit();
                    dealer.setCard(dealerHit);
            }
            }
            //dealとhitを行った手札の処理を見る。(手札に来たカードとカードの合計点を見る。)
            out.println("「♠ユーザーの手札♥」<br>"+user.getCard());
            
            out.println("手札の合計値＝"+user.open()+"点"+"<br>"+"<br>");
            
            out.println("「♣ディーラーの手札♦」<br>"+dealer.getCard());

            out.println("手札の合計値＝"+dealer.open()+"点"+"<br>"+"<br>"+"<br>");
            
            //「Dealer」、「User」の手札の値を比較して勝ち負けの表示をする。 
            if(user.open()>=22){
                out.println("USER Bust・・"+"<br>"+"あなたはDEALERに負けました・・・");
            }else if(dealer.open()>=22){
                out.println("DEALER Bust！"+"<br>"+"<h1>あなたはDEALERに勝ちました！！");
            }else if(user.open()>dealer.open()){
                out.println("手札の点数がDEALERを上回りました！"+"<br>"+"<h1>あなたはDEALERに勝ちました！！");
            }else if(user.open() == dealer.open()){
                out.println("手札の点数が同じです。"+"<br>"+"DEALERに引き分けました。"+"<br>"+"もう一度チャレンジしましょう！");
            }else{
                out.println("手札の点数がDEALERを下回りました。"+"<br>"+"あなたはDEALERに負けました・・・");
            }
            
            out.println("</body>    ");
            out.println("</html>");
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
