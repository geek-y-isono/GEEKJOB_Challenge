<%-- 
    Document   : challenge1-5
    Created on : 2017/02/08, 15:37:04
    Author     : Yui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int a=2;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
        if(a==1){
            out.print("１です！");
        }else if(a==2){
            out.print("プログラミングキャンプ！");
        }else{
            out.print("その他です！");
        }
    %>
    </body>
</html>
