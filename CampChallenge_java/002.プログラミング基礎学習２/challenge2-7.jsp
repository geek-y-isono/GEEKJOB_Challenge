<%-- 
    Document   : challenge2-7
    Created on : 2017/02/09, 13:25:02
    Author     : Yui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String[] arr = {"10", "100", "soeda", "hayashi", "-20", "118", "END"};
            int i;
            for(i=0;i<7;i++){
                out.print("配列"+i+"番目は"+arr[i]+"です<br>");
            }
        %>
    </body>
</html>
