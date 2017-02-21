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

import java.util.*;
import java.math.*;
import java.text.*;
import java.io.*;

/*
1. 処理の経過を書き込むログファイルを作成する
2. 処理の開始、終了のタイミングで、ログファイルの開始、終了の書き込みを行う。
3. 書き込む内容は、「日時、状況、(開始・終了)」の形式で書き込む
4. 最後に、ログファイルを読み込み、その内容を表示してください。
*/


/**
 *
 * @author Yui
 */
public class std10 extends HttpServlet {

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

        File txt = new File(this.getServletContext().getRealPath("test.txt"));
        Calendar cal = Calendar.getInstance();
        Date date = cal.getTime();
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String sdate = sdf.format(date);
        
        try (PrintWriter out = response.getWriter()) {
            txt.createNewFile();
            FileWriter fwa = new FileWriter(txt,true);
            BufferedWriter bw = new BufferedWriter(fwa);
            bw.write(sdate+" ");
            
            bw.write("二つの数値の絶対値算出処理を開始します\r\n");
            bw.write(sdate+" ");
            bw.write("100-1000の絶対値は"+Math.abs(100-10000)+"\r\n");
            bw.write(sdate+" ");
            bw.write("処理を終了します\r\n\r\n");
            
            bw.write(sdate+" ");
            bw.write("二つの数値の絶対値算出処理を開始します\r\n");
            bw.write(sdate+" ");
            bw.write("2のルートは"+Math.sqrt(2)+"\r\n");
            bw.write(sdate+" ");
            bw.write("処理を終了します\r\n\r\n");
            
            bw.write(sdate+" ");
            bw.write("自然対数を算出処理を開始します\r\n");
            bw.write(sdate+" ");
            bw.write("2の自然対数は"+Math.log(2)+"\r\n");
            bw.write(sdate+" ");
            bw.write("処理を終了します\r\n\r\n");
            
            bw.write(sdate+" ");
            bw.write("指数計算処理を開始します\r\n");
            bw.write(sdate+" ");
            bw.write("2の10乗は"+Math.pow(2,10)+"\r\n");
            bw.write(sdate+" ");
            bw.write("処理を終了します\r\n\r\n");
            bw.close();
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet std10</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet std10 at " + request.getContextPath() + "</h1>");
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
