<%-- 
    Document   : challenge1-1
    Created on : 2017/02/08, 13:38:28
    Author     : Yui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String talk = "Hello world.";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            out.print(talk);
        %>
    </body>
</html>
