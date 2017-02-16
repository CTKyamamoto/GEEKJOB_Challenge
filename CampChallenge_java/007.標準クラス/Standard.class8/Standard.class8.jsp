<%-- 
    Document   : Standard.class8
    Created on : 2017/02/15, 15:55:44
    Author     : 将也
--%>

<%@page import = "java.util.*,java.text.*,java.io.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Standard.class8</title>
    </head>
    <body>
<%
    //メモ張の「profile.txt」を開く。
    File txt = new File(application.getRealPath("profile.txt"));
    
    //上書きモードを選択。
    FileWriter fw = new FileWriter(txt);
    
    BufferedWriter br = new BufferedWriter(fw);
    
    //「profile.txt」に()内を上書き処理(newLineで改行する)。
    br.write("私の名前は山本将也です。");
    br.newLine();
    br.write("1991年11月21日生まれの25歳、さそり座です。");
    
    br.close();
%>
    </body>
</html>
