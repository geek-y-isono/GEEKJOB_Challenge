<%-- 
    Document   : challenge2-5
    Created on : 2017/02/09, 13:16:15
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
            int i,sum;
            sum=0;
            for(i=0;i<=100;i++){
                sum+=i;
            }
            out.print("0～100まですべて加算すると<br>"+sum);
        %>
    </body>
</html>
