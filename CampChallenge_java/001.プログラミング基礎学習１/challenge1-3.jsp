<%-- 
    Document   : challenge1-3
    Created on : 2017/02/08, 15:23:51
    Author     : Yui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String sei = "磯野";
    String mei = "祐一";
    String ikigomi = "頑張ります！";
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            out.print(sei+mei+"です！"+ikigomi);
        %>
    </body>
</html>
