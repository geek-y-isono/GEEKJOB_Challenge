<%-- 
    Document   : chalenge3
    Created on : 2017/02/10, 22:43:30
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
            Integer getHantei(){
                return 2;
            }
            Integer getHantei(Integer han){
                int b;
                b=han%2;
                return b;
            }
        %>
        <%
            int a=1;
            Integer useHantei=getHantei(22);
            if(useHantei==0){
                out.print("偶数です");
            }
            else if(useHantei==1){
                out.print("奇数です");
            }
            else{
                out.print("値が入力されていません");
            }
        %>
    </body>
</html>
