<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.net.*"%>
<%
String message;
 
request.setCharacterEncoding("UTF-8");
message=request.getParameter("name");

int year=Integer.parseInt(request.getParameter("year"));
int month=Integer.parseInt(request.getParameter("month"));
int date=Integer.parseInt(request.getParameter("date"));

Calendar now = new GregorianCalendar(); 
Calendar event =new GregorianCalendar(year,month-1,date);

long days=(event.getTimeInMillis() - now.getTimeInMillis())/1000/60/60/24;

if(message != null) {
	Cookie cookie1 = new Cookie("name",URLEncoder.encode(message,"UTF-8"));
	Cookie cookie2 = new Cookie("year",year);
	Cookie cookie3 = new Cookie("month",month);
	Cookie cookie4 = new Cookie("date",date);
	cookie.setMaxAge(60*60*24*30);
	response.addCookie(cookie1);
	response.addCookie(cookie2);
	response.addCookie(cookie3);
	response.addCookie(cookie4);
}
%>
 
<HTML><HEAD><TITLE>Cookieのチェック</TITLE></HEAD><BODY>
<BR>
<%= message %>の開催日まであと<%= days>日
<BR>
</BODY></HTML>