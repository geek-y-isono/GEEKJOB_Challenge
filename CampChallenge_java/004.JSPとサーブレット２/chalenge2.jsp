<%-- 
    Document   : chalenge3
    Created on : 2017/02/10, 22:17:33
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

        %>
        <%
            for(int i =0;i<10;i++){
            out.print("氏名:"+getMyname()+"<br>");
            out.print("生年月日:"+getMybirth()+"<br>");
            out.print("自己紹介:"+getMyprof()+"<br>");
            out.print("<br>");
        }
            
        %>
    </body>
</html>
