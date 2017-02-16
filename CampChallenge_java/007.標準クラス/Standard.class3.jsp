<%-- 
    Document   : Standard.class3
    Created on : 2017/02/14, 14:33:24
    Author     : 将也
--%>

<%@page import="java.util.*,java.text.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Standard.class3</title>
    </head>
    <body>
<%
    Date date = new Date();
    
    SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMddHHmmss");
    
    //parseで指定日時をDate型で持たせる。
    Date dat1 = sdf1.parse("20161104100000");
    
    SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    
    //String型でないと指定の表示にできないのでformatにdat1を入れる。
    String dat2 = sdf2.format(dat1);
    
    //「2016-11-04 10:00:00」が表示される。
    out.print(dat2);
%>
    </body>
</html>
