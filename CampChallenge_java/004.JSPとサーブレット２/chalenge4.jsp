<%-- 
    Document   : chalenge4
    Created on : 2017/02/13, 11:11:06
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
       <%!
            Integer getHantei(Integer a, Boolean c){
                int seki;
                seki=a*5;
                if (c==true){
                    seki*=seki;
                }
                return seki;
            }
            Integer getHantei(Integer a,Integer b,Boolean c){
                int seki;
                seki=a*b;
                if (c==true){
                    seki*=seki;
                }
                return seki;
            }
        %>
        <%
            Integer useHantei=getHantei(2,4,true);
            out.print(useHantei+"です");
        %>
    </body>
</html>
