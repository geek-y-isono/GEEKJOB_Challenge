<%-- 
    Document   : challenge8
    Created on : 2017/02/13, 14:37:40
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
                String prof2[]={"二宮","2000年2月2日",null};
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
            int id,j;
            String tmp;
            for(id=1;id<=3;id++){
                for(j=0;j<3;j++){
                    tmp=getProf(id,j);
                    if(tmp==null){
                        continue;
                    }
                    out.print(tmp+"<br>");
                }
                out.print("<br>");
            }
        %>
    </body>
</html>
