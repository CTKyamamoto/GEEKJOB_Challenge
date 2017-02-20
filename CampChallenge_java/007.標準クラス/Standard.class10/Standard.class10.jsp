<%-- 
    Document   : Standard.class10
    Created on : 2017/02/16, 1:21:41
    Author     : 将也
--%>
<%@page import="java.util.logging.SimpleFormatter"%>
<%@page import="java.util.logging.FileHandler"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.io.*"%>
<%@page import="java.math.RoundingMode"%>
<%@page import="java.math.BigDecimal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Standard.class10</title>
    </head>
    <body>
<%
    //ログを取得する為に、loggerを作成する。
    final Logger logger = Logger.getLogger("tryLog");

    //loggerを使うのでファイルオープンはHandlerを使用する。
    FileHandler fh = new FileHandler(application.getRealPath("log.txt"),false);
    
    //XMLのままなのでSimpleFormatterでtextにフォーマットする。
    fh.setFormatter(new SimpleFormatter());
    
    //loggerにファイル(fh)を紐づける。
    logger.addHandler(fh);
    
    //ログ(INFO = 情報)開始の出力。
    logger.log(Level.INFO, "開始");
    
    /*「BigDecimal」の標準クラスを使います。
    　精度を意識した計算をする。*/
    //BigDecimalで3の値と10の値を持たせる。
    BigDecimal three = BigDecimal.valueOf(3);
    BigDecimal ten = BigDecimal.TEN;
    
    //result=計算結果 10/3の計算を行う。(10を3で割って6桁目を繰り上げする。) 
    BigDecimal result = ten.divide(three, 6,RoundingMode.UP);
    
    //「10÷3 = 3.33334」が表示される。
    out.println("10÷3="+result);

    // ログ(終了時)を出力する
    logger.log(Level.INFO, "終了");
    
    //log.txtを読み込んで表示させる処理。
    File txt = new File(application.getRealPath("log.txt"));
    
    FileReader fr = new FileReader(txt);
    
    BufferedReader br = new BufferedReader(fr);
    
    String str;
    while((str=br.readLine())!=null){
        out.print("<br>"+str);
    }
    br.close();
    
%>
    </body>
</html>
