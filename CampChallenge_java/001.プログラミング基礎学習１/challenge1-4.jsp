<%-- 
    Document   : challenge1-4
    Created on : 2017/02/08, 15:28:32
    Author     : Yui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int aa=10;
    int bb=5;
    int wa,sa,seki,syou;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            wa=aa+bb;
            out.println("aaとbbの和は"+wa+"です<br>");
            
            sa=aa-bb;
            out.println("aaとbbの差は"+sa+"です<br>");
            
            seki=aa*bb;
            out.println("aaとbbの積は"+seki+"です<br>");
            
            syou=aa/bb;
            out.println("aaとbbの商は"+syou+"です<br>");
        %>

    </body>
</html>
