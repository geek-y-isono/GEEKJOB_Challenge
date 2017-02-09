<%-- 
    Document   : challenge2-3
    Created on : 2017/02/09, 12:54:40
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
            int i;
            long seki=1;
            for(i=1;i<=20;i++){
                seki*=8;
            }
            out.print("8の20乗は"+seki+"です");
        %>
    </body>
</html>
