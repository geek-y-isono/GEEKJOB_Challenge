/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Yui
 */
public class BJ extends HttpServlet {

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
        
        Dealer oya = new Dealer();
        User ko = new User();
        
        ko.setCard(oya.deal());
        while(ko.checkSum()==false){
            ko.setCard(oya.hit());
        }
            
        oya.setCard(oya.deal());
        while(oya.checkSum()==false){
            oya.setCard(oya.hit());
        }
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BJ</title>");
            out.println("</head>");
            out.println("<body>");
            
            out.print("ユーザーの合計値は"+ko.open());
            out.print("<br>ユーザーの手札は"+ko.myCards);
                        
            out.print("<br><br>ディーラーの合計値は"+oya.open());
            out.print("<br>ディーラーの手札は"+oya.myCards);
            out.print("<br><br>");
            
            if(ko.open()>=22){
                out.print("手札が21を越えたのでユーザーの負けです");
            }
            else if(oya.open()>=22){
                out.print("ディーラーの手札が21を超えました<br>ユーザーの勝ちです");
            }
            else if(ko.open()==oya.open()){
                out.print("引き分けです");
            }
            else if(ko.open()>oya.open()){
                out.print("ユーザーの勝ちです");
            }
            else{
                out.print("ディーラーの勝ちです");
            }
            out.print("<br><br>ゲーム終了");
            
            out.println("</body>");
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
