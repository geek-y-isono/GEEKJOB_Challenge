<%-- 
    Document   : challenge2-9
    Created on : 2017/02/09, 13:55:52
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
            HashMap<String,String> hMap=new HashMap<String,String>();
            hMap.put("1","AAA");
            hMap.put("hello","world");
            hMap.put("soeda","33");
            hMap.put("20","20");
            
            for(Map.Entry<String,String> val:hMap.entrySet()){
                out.print("Key:\""+val.getKey()+"\"");
                out.print(" Value:\""+val.getValue()+"\"");
                out.print("<br>");
            }
        %>
    </body>
</html>
