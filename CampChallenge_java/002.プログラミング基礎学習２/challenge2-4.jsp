<%-- 
    Document   : challenge2-4
    Created on : 2017/02/09, 13:13:39
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
            String str="";
            for(i=1;i<=30;i++){
                str+="A";
            }
            out.print("Aを30個連結<br>"+str);
        %>
    </body>
</html>
