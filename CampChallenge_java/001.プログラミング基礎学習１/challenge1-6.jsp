<%-- 
    Document   : challenge1-6
    Created on : 2017/02/08, 15:49:55
    Author     : Yui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int sougaku = Integer.parseInt(request.getParameter("sou"));
    int kosu = Integer.parseInt(request.getParameter("ko"));
    int syubetsu = Integer.parseInt(request.getParameter("syu"));
    int tanka;
    int point;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //商品種別判別処理
            if(syubetsu==1){
                out.print("商品種別は１：雑貨です<br>");
            }else if(syubetsu==2){
                out.print("商品種別は２：生鮮食品<br>");
            }else if(syubetsu==3){
                out.print("商品種別は３：その他<br>");
            }else{
                out.print("商品種別が設定されていません<br>");
            }
            
            //総額単価算出処理
            tanka = sougaku/kosu;
            out.print("総額："+sougaku+"<br>単価："+tanka+"<br>");
            
            //ポイント還元処理
            if(sougaku<3000){
                out.print("ご購入金額3000円に満たない為ポイント還元はありません");
            }else if(sougaku<5000){
                point=sougaku*4/100;
                out.print("今回付与されるポイントは"+point+"ポイントです");
            }else{
                point=sougaku*5/100;
                out.print("今回付与されるポイントは"+point+"ポイントです");
            }
        %>
    </body>
</html>
