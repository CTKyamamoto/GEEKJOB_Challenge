<%@page import="jums.UserDataBeans"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%
        HttpSession hs = request.getSession();
        
        UserDataBeans udb = (UserDataBeans)hs.getAttribute("udb");
        
        //初回起動時のnullチェック。
        if(udb == null){
            udb = new UserDataBeans();
        }
        if(udb.getName() == null){
            udb.setName("");
        }
        if(udb.getStrYear() == null){
            udb.setStrYear("");
        }
        if(udb.getStrMonth() == null){
            udb.setStrMonth("");
        }
        if(udb.getStrDay() == null){
            udb.setStrDay("");
        }
        if(udb.getStrType() == null){
            udb.setStrType("");
        }
        if(udb.getTell() == null){
            udb.setTell("");
        }
        if(udb.getComment() == null){
            udb.setComment("");
        }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録画面</title>
    </head>
    <body>
    <form action="insertconfirm" method="POST">
        名前:
        <input type="text" name="name" value="<%=udb.getName()%>">
        <br><br>

        生年月日:　
        <select name="year">
            <option value="<%=udb.getStrYear()%>"><%if(udb.getStrYear().equals("")){out.print("----");}else{out.print(udb.getStrYear());}%></option>
            <%
            for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>"> <%=i%> </option>
            <% } %>
        </select>年
        <select name="month">
            <option value="<%=udb.getStrMonth()%>"><%if(udb.getStrMonth().equals("")){out.print("--");}else{out.print(udb.getMonth());}%></option>
            <%
            for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="<%=udb.getStrDay()%>"><%if(udb.getStrDay().equals("")){out.print("--");}else{out.print(udb.getStrDay());}%></option>
            <%
            for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br>
        <input type="radio" name="type" value="1"　<%if(udb.getStrType().equals("1")){out.print("checked");}%>>エンジニア<br>
        <input type="radio" name="type" value="2" <%if(udb.getStrType().equals("2")){out.print("checked");}%>>営業<br>
        <input type="radio" name="type" value="3" <%if(udb.getStrType().equals("3")){out.print("checked");}%>>その他<br>
        <br>

        電話番号:
        <input type="text" name="tell" value="<%=udb.getTell()%>">
        <br><br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%=udb.getComment()%></textarea><br><br>
        
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>