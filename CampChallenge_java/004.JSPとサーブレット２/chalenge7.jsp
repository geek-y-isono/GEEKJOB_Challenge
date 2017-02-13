<%-- 
    Document   : chalenge7
    Created on : 2017/02/13, 13:55:16
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
            //プロフィール返却メソッド
            String getProf(Integer identity,Integer num){
                String prof1[]={"一ノ瀬","2000年1月1日","東京"};
                String prof2[]={"二宮","2000年2月2日","千葉"};
                String prof3[]={"三条","2000年3月3日","神奈川"};
                String temp="";
                switch(identity){
                    case 1:
                        temp=prof1[num];
                        break;
                    case 2:
                        temp=prof2[num];
                        break;
                    case 3:
                        temp=prof3[num];
                        break;
                }
                return temp;
            }
        %>
        <%  
            int id=3;
                out.print("氏名："+getProf(id,0)+"<br>");
                out.print("生年月日："+getProf(id,1)+"<br>");
                out.print("住所："+getProf(id,2)+"<br>");
        %>
    </body>
</html>
