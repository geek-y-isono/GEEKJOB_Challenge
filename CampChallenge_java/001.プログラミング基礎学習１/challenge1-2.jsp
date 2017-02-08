<%-- 
    Document   : challenge1-2
    Created on : 2017/02/08, 15:18:29
    Author     : Yui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String aa = "groove";
    String bb = "gear";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            out.print(aa+'-'+bb);
        %>
    </body>
</html>
