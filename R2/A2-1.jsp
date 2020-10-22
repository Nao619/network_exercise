<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.net.*"%>
<%@ page import="java.util.*" %>
<%
boolean flag = false;
String message = "";
int year,month,date;
 
Cookie[] cookies = request.getCookies();
if(cookies != null) {
	for(int i = 0; i < cookies.length; i++){
		if(cookies[i].getName().equals("name")) {
			message = URLDecoder.decode(cookies[i].getValue(),"UTF-8");
			flag = true;
		} else if(cookies[i].getName().equals("year")){
			year=Integer.parseInt(cookies[i].getValue());
			flag = true;
		} else if(cookies[i].getName().equals("month")){
			month=Integer.parseInt(cookies[i].getValue());
			flag = true;
		} else {
			date=Integer.parseInt(cookies[i].getValue());
			flag = true;
		}
	}
	
	Calendar now = new GregorianCalendar(); 
	Calendar eventday =new GregorianCalendar(year,month-1,date);

	long days=(eventday.getTimeInMillis() - now.getTimeInMillis())/1000/60/60/24;
}
%>

<HTML><HEAD><TITLE>Cookieのチェック</TITLE></HEAD><BODY>
<BR>
<% if(!flag) { %>
<FORM ACTION="A2-1out.jsp" METHOD="Post">
入力画面<BR>
<TABLE>
<TR><TD>イベント名</TD><TD><INPUT TYPE="text" NAME="name"></TD></TR>
<TR><TD>年</TD><TD><INPUT TYPE="text" NAME="year"></TD></TR>
<TR><TD>月</TD><TD><INPUT TYPE="text" NAME="month"></TD></TR>
<TR><TD>日</TD><TD><INPUT TYPE="text" NAME="date"></TD></TR>
</TABLE>
<INPUT TYPE="submit" VALUE="検索"><BR>
</FORM>
<%} else { %>
<%= message %>の開催日まであと<%= days%>日<BR>
<% } %>
</BODY></HTML>