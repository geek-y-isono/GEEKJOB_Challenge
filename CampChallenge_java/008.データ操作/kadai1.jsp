<%-- 
    Document   : kadai1
    Created on : 2017/02/23, 19:00:00
    Author     : Yui
--%>
<%--名前（テキストボックス）、性別（ラジオボタン）、趣味（複数行テキストボックス）--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <form action="./sample.jsp" method="post">
        名前:<input type="text" name="txtName"><br>
        性別　男<input type="radio" name="radioSex">
        女<input type="radio" name="radioSex"><br>
        趣味:<textarea name="hobby"></textarea><br>
        <input type="submit" value="送信">
    </form>
    </body>
</html>
