<%-- 
    Document   : kadai4
    Created on : 2017/02/24, 13:10:43
    Author     : Yui
--%>

<%@page import="java.util.Date"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="./kadai4.jsp" method="post">
        名前:<input type="text" name="txtName"><br>
        性別　男<input type="radio" name="Radio" value="男">
        女<input type="radio" name="Radio" value="女"><br>
        趣味:<textarea name="Hobby"></textarea><br>
        <input type="submit" value="送信">
    </form>
        <%
            request.setCharacterEncoding("UTF-8");
            String n = request.getParameter("txtName");
            String r = request.getParameter("Radio");
            String h = request.getParameter("Hobby");
            
            Date time = new Date();
            HttpSession hs = request.getSession(true);
            hs.setAttribute("LastLogin", time.toString());
            hs.setAttribute("sessionName", n);
            hs.setAttribute("sessionRadio", r);
            hs.setAttribute("sessionHobby", h);
            //HttpSession hs = request.getSession(true);
            out.print("<br>最後のログインは"+hs.getAttribute("LastLogin"));
            out.print("<br>名前："+hs.getAttribute("sessionName"));
            out.print("<br>性別："+hs.getAttribute("sessionRadio"));
            out.print("<br>趣味："+hs.getAttribute("sessionHobby"));
        %>
    </body>
</html>
