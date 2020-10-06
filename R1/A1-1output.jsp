<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %> <% /* クラスライブラリの指定*/%>
<!DOCTYPE HTML>

<%
request.setCharacterEncoding("UTF-8");
String strName=request.getParameter("name");
int year=Integer.parseInt(request.getParameter("year"));
int month=Integer.parseInt(request.getParameter("month"));
int date=Integer.parseInt(request.getParameter("date"));

Calendar now = new GregorianCalendar(); 
Calendar event =new GregorianCalendar(year,month-1,date);

long days=(event.getTimeInMillis() - now.getTimeInMillis())/1000/60/60/24;

%>

<HTML>
<HEAD>
<META CHARSET="UTF-8">
<TITLE>表示</TITLE>
</HEAD>

<BODY>
表示<BR>

<TABLE BORDER="1">
<TR><TD>イベント名</TD><TD><%= strName %></TD></TR>
<TR><TD>開催まで</TD><TD><%= days %>日</TD></TR>
</TABLE>
</BODY>
</HTML>