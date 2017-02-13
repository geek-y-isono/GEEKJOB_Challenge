<%-- 
    Document   : chalenge5
    Created on : 2017/02/13, 11:54:05
    Author     : Yui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            //プロフィール返却メソッド
            String getMyname(){
                return "磯野祐一";
            }
            String getMybirth(){
                return "1987年8月5日";
            }
            String getMyprof(){
                return "がんばります！";
            }
            Boolean getState(){
                return false;
            }

        %>
        <%
            for(int i =0;i<10;i++){
            out.print("氏名:"+getMyname()+"<br>");
            out.print("生年月日:"+getMybirth()+"<br>");
            out.print("自己紹介:"+getMyprof()+"<br>");
            out.print("<br>");
            }
            boolean x= getState();
            if(x==true){
                out.print("この処理は正しく実行できました");
            }
            else{
                out.print("正しく実行できませんでした");
            }
            
        %>
    </body>
</html>
