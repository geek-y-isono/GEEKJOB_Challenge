<%-- 
    Document   : kadai3
    Created on : 2017/02/23, 20:42:35
    Author     : Yui
--%>

<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <form action="./kadai3.jsp" method="post">
        名前:<input type="text" name="txtName"><br>
        性別　男<input type="radio" name="Radio" value="男">
        女<input type="radio" name="Radio" value="女"><br>
        趣味:<textarea name="Hobby"></textarea><br>
        <input type="submit" value="送信">
    </form>
        <%
            //マルチバイト文字をCookieで扱う場合、URLエンコードで格納して　取り出し後URLデコード
            request.setCharacterEncoding("UTF-8");
            String n = request.getParameter("txtName");
            String r = request.getParameter("Radio");
            String h = request.getParameter("Hobby");
            
            String csl="",csn="",csr="",csh="";
            
            out.println("<br>変数から表示");
            out.println("<br>名前："+n);
            out.println("<br>性別："+r);
            out.println("<br>趣味："+h);
            
            Date time = new Date();
            Cookie c = new Cookie("LastLogin",time.toString());
            if(n!=null){
                n = URLEncoder.encode(n,"UTF-8");
            }
            if(r!=null){
                r = URLEncoder.encode(r,"UTF-8");
            }
            if(h!=null){
                h = URLEncoder.encode(h,"UTF-8");
            }
            Cookie cn = new Cookie("CookieName",n);
            Cookie cr = new Cookie("CookieRadio",r);
            Cookie ch = new Cookie("CookieHobby",h);
            
            response.addCookie(c);
            response.addCookie(cn);
            response.addCookie(cr);
            response.addCookie(ch);
            
            Cookie cs[] = request.getCookies();
            if(cs != null){
                for(int i=0;i<cs.length;i++){
                    if(cs[i].getName().equals("LastLogin")){
                        csl=cs[i].getValue();
                    }
                    else if(cs[i].getName().equals("CookieName")){
                        csn=cs[i].getValue();
                    }
                    else if(cs[i].getName().equals("CookieRadio")){
                        csr=cs[i].getValue();
                    }
                    else if(cs[i].getName().equals("CookieHobby")){
                        csh=cs[i].getValue();
                    }
                }
            }
            
            out.println("<br><br>クッキーから表示");
            
            //URLデコード処理
            csn = URLDecoder.decode(csn,"UTF-8");
            csr = URLDecoder.decode(csr,"UTF-8");
            csh = URLDecoder.decode(csh,"UTF-8");
            
            out.println("<br>最後のログインは、"+csl);
            out.println("<br>名前:"+csn);
            out.println("<br>性別:"+csr);
            out.println("<br>趣味:"+csh);
        %>
    </body>
</html>
