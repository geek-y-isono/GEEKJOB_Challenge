<%-- 
    Document   : kadai5
    Created on : 2017/02/24, 14:29:16
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
        <%
            //文字コードを正しい指定をすれば行けるはず
            //URLエンコードでセットして　URLでコードで元に戻す
            
            request.setCharacterEncoding("UTF-8");
            String n = request.getParameter("txtName");
            String r = request.getParameter("Radio");
            String h = request.getParameter("Hobby");
            
            String csl="",csn="",csr="",csh="";
            String fn,fr,fh;
            
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
            
            //URLデコード処理
            csn = URLDecoder.decode(csn,"UTF-8");
            csr = URLDecoder.decode(csr,"UTF-8");
            csh = URLDecoder.decode(csh,"UTF-8");

            //フォームの初期値を前回の値で表示
            
            if(csn!=null){
                fn=csn;
            }else{
                fn="";
            }
            if(csr!=null){
                fr=csr;
            }else{
                fr="";
            }
            if(csh!=null){
                fh=csh;
            }else{
                fh="";
            }
        %>
        <form action="./kadai5.jsp" method="post">
            名前:<input type="text" name="txtName" value="<%=fn%>"><br>
            性別　男<input type="radio" name="Radio" value="男" <%if(fr.equals("男")){out.print("checked");}%>>
            女<input type="radio" name="Radio" value="女" <%if(fr.equals("女")){out.print("checked");}%>><br>
            趣味:<textarea name="Hobby"><%=fh%></textarea><br>
            <input type="submit" value="送信">
        </form>
    </body>
</html>
