<%-- 
    Document   : Standard.class4
    Created on : 2017/02/14, 17:07:53
    Author     : 将也
--%>

<%@page import="java.util.*,java.text.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Standard.class4</title>
    </head>
    <body>
<%
    Date date = new Date();
    
    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
    
    //2015年1月1日と2015年12月31日23時59分59秒を持たせる。
    Date date1 = sdf.parse("20150101000000");
    Date date2 = sdf.parse("20151231235959");
    
    //2つの日時のTimeStampを作る。
    long dat1 = date1.getTime();
    long dat2 = date2.getTime();
    
    //ミリ秒差を出すためにTimeStampを引く。
    long newDat = dat2-dat1;
    
    //1年間のミリ秒差になるので「31535999000」が表示される。
    out.print("2015年1月1日0時0分0秒と2015年12月31日23時59分59秒のミリ秒差は<br>"+newDat);
    
%>
    </body>
</html>
