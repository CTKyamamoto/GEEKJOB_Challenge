<%-- 
    Document   : Standard.class9
    Created on : 2017/02/15, 16:29:24
    Author     : 将也
--%>

<%@page import = "java.util.*,java.text.*,java.io.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Standard.class9</title>
    </head>
    <body>
<%
    File txt = new File(application.getRealPath("profile.txt"));
    
    //読み込みモードを選択する。
    FileReader fr = new FileReader(txt);
    
    BufferedReader br = new BufferedReader(fr);
    
    //「profile.txt」の1行を読み込んで表示させる。ループさせる事でまとめて表示する。
    String str;
    while((str=br.readLine())!=null){
        out.print(str);
    }
    br.close();
%>
    </body>
</html>
