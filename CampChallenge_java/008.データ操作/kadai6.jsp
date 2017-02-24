<%-- 
    Document   : kadai6
    Created on : 2017/02/24, 17:01:49
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
        <form action="./kadai6.jsp" method="post">
            名前:<input type="text" name="txtName"><br>
            性別　男<input type="radio" name="Radio" value="男">
            女<input type="radio" name="Radio" value="女"><br>
            趣味:<textarea name="Hobby"></textarea><br>
            pass:<input type="password" name="pass"><br>
            ファイル:<input type="file" name="file"><br>
            ボタン:<input type="button" name="but"value="ボタン1">
            <input type="button" name="but"value="ボタン2">
            <input type="button" name="but"value="ボタン3"><br>
            チェック1:<input type="checkbox" name="chek1">
            チェック2:<input type="checkbox" name="chek2">
            チェック3:<input type="checkbox" name="chek3">
            チェック4:<input type="checkbox" name="chek4"><br>
            リセット:<input type="reset" name="res"><br>
            <input type="submit" value="送信">
        </form>
        <%
            request.setCharacterEncoding("UTF-8");
            
            if("abc".equals(request.getParameter("pass"))){
                out.print("ログイン成功 情報を表示します。");
                out.println("<br>名前："+request.getParameter("txtName"));
                out.println("<br>性別："+request.getParameter("Radio"));
                out.println("<br>趣味："+request.getParameter("Hobby"));
                out.println("<br>趣味："+request.getParameter("Hobby"));
            }
            else{
                out.print("ログイン失敗");
            }
        %>
    </body>
</html>
