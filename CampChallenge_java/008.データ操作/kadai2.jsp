<%-- 
    Document   : kadai2
    Created on : 2017/02/23, 19:19:00
    Author     : Yui
--%>
<%--名前（テキストボックス）、性別（ラジオボタン）、趣味（複数行テキストボックス）--%>
<%--入力データを取得し表示する--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <form action="./kadai2.jsp" method="post">
        名前:<input type="text" name="txtName"><br>
        性別　男<input type="radio" name="Radio" value="男">
        女<input type="radio" name="Radio" value="女"><br>
        趣味:<textarea name="Hobby"></textarea><br>
        <input type="submit" value="送信">
    </form>
        <%
            request.setCharacterEncoding("UTF-8");
            String t = request.getParameter("txtName");
            String r = request.getParameter("Radio");
            String h = request.getParameter("Hobby");
            out.println("<br>名前："+t);
            out.println("<br>性別："+r);
            out.println("<br>趣味："+h);
        %>

    </body>
            
</html>
