<%@page import="java.util.ArrayList"%>
<%@page import="jums.UserDataBeans"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%
    try{
        HttpSession hs = request.getSession();
        request.setCharacterEncoding("UTF-8");//セッションに格納する文字コードをUTF-8に変更    
        String accesschk = request.getParameter("ac");
        if(accesschk ==null || (Integer)hs.getAttribute("ac")!=Integer.parseInt(accesschk)){
            throw new Exception("不正なアクセスです");
        }
        UserDataBeans udb = (UserDataBeans)hs.getAttribute("udb");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
<%
    //フォームに空白があるとelseに飛ぶ処理。
    if( !udb.getName().equals("") && !udb.getStrYear().equals("") && !udb.getStrMonth().equals("") && !udb.getStrDay().equals("") && !udb.getStrType().equals("") && !udb.getTell().equals("") && !udb.getComment().equals("")) {
%>
        <h1>登録確認</h1>
        名前:<%= udb.getName()%><br>
        生年月日:<%= udb.getYear()+"年"+udb.getMonth()+"月"+udb.getDay()+"日"%><br>
        種別:<%= udb.getType()%><br>
        電話番号:<%= udb.getTell()%><br>
        自己紹介:<%= udb.getComment()%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
            <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="yes" value="はい">
        </form>
<%  }else{
        ArrayList <String> al = new ArrayList <String> ();
        if(udb.getName().equals("")){
        al.add("名前");
        }
        if(udb.getStrYear().equals("") || udb.getStrMonth().equals("") || udb.getStrDay().equals("")){
        al.add("生年月日");
        }
        if(udb.getStrType().equals("")){
        al.add("種別");
        }
        if(udb.getTell().equals("")){
        al.add("電話番号");
        }
        if(udb.getComment().equals("")){
        al.add("自己紹介");
        }
        int i = 0;
        for(String val: al){
            out.print(val);
            i++;
            if(i<al.size()){
                out.print("・");
            }
        }
        out.print("が未入力です。");
        }
%>
        <form action="insert" method="POST">
            <input type="submit" name="no" value="登録画面に戻る">
        </form>
        <br>
        <%=JumsHelper.getInstance().home()%>

<%
    }catch(Exception e){
        request.setAttribute("error", e.getMessage());
        request.getRequestDispatcher("/error.jsp").forward(request, response);
    }
%>
    </body>
</html>
