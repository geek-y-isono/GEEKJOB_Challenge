/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.kadai4;

import java.io.PrintWriter;
/**
 *
 * @author Yui
 */
public class goods {
    public String name;
    public Integer stock;
    public void setGoods(String n,Integer s){
        name = n;
        stock = s;
    }

    public void printgoods(PrintWriter out){
        out.print("商品名:"+name+"<br>"+"在庫:"+stock+"<br><br>");
    }
}