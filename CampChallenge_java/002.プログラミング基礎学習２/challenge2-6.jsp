<%-- 
    Document   : challenge2-6
    Created on : 2017/02/09, 13:19:11
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
        <%
            int x=1000;
            out.print("1000を100未満になるまで2で割り続けます<br>");
            while(x>=100){
                out.print(x+"÷2は");
                x/=2;
                out.print(x+"<br>");
            }
            out.print("100以下となったためループを終了します");
        %>
    </body>
</html>
