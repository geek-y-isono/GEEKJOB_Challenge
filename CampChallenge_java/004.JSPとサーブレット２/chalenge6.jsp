<%-- 
    Document   : chalenge6
    Created on : 2017/02/13, 13:08:15
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
    <body>
        <%!
            //プロフィール返却メソッド
            Integer getId(){
                return 12345;
            }
            
            String getMyname(){
                return "磯野祐一";
            }
            String getMybirth(){
                return "1987年8月5日";
            }
            String getMyaddress(){
                return "千葉県松戸市";
            }
        %>
        <%  
            int id=getId();
            String name=getMyname();
            String birth=getMybirth();
            String address=getMyaddress();
            out.print("氏名:"+name+"<br>");
            out.print("生年月日:"+birth+"<br>");
            out.print("住所:"+address+"<br>");
        %>
    </body>
</html>
