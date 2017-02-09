<%-- 
    Document   : challenge2-10
    Created on : 2017/02/09, 14:51:09
    Author     : Yui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%
    int[] sosu = {2,3,5,7};
    int i=0;
    int bunkai = Integer.parseInt(request.getParameter("kazu"));
    ArrayList<Integer> al = new ArrayList<Integer>();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            out.print("元の値"+bunkai+"です<br>");
            for(i=0;i<4;i++){
                while(bunkai % sosu[i]==0){
                    bunkai/=sosu[i];
                    al.add(sosu[i]);
                }
            }
            if(bunkai==1){
                out.println("一桁の素数で素因数分解すると");
                for(i=0;i<al.size()-1;i++){
                    out.print(al.get(i)+"×");
                }
                out.println(al.get(i));
            }else{
                out.print("その他");
            }
        %>
    </body>
</html>
