<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.net.*"%>
<%
String message = "";
int year=0,month=0,date=0;
 
Cookie[] cookies = request.getCookies();
if(cookies != null) {
	for(int i = 0; i < cookies.length; i++){
		if(cookies[i].getName().equals("name")) {
		
			message = URLDecoder.decode(cookies[i].getValue(),"UTF-8");
			
		} else if(cookies[i].getName().equals("year")){
			year=Integer.parseInt(cookies[i].getValue());
		} else if(cookies[i].getName().equals("month")){
			month=Integer.parseInt(cookies[i].getValue());
		} else if(cookies[i].getName().equals("date")){
			date=Integer.parseInt(cookies[i].getValue());
		}
	}
}
%>

<HTML><HEAD><TITLE>Cookieのチェック</TITLE></HEAD><BODY>
<BR>
<% if(cookies == null) { %>
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
<FORM ACTION="A2-1out.jsp" METHOD="Post">
入力画面<BR>
<TABLE>
<TR><TD>イベント名</TD><TD><INPUT TYPE="text" NAME="name" value="<%= message %>"></TD></TR>
<TR><TD>年</TD><TD><INPUT TYPE="text" NAME="year" value="<%= year %>"></TD></TR>
<TR><TD>月</TD><TD><INPUT TYPE="text" NAME="month" value="<%= month %>"></TD></TR>
<TR><TD>日</TD><TD><INPUT TYPE="text" NAME="date" value="<%= date %>" ></TD></TR>
</TABLE>
<INPUT TYPE="submit" VALUE="検索"><BR>
</FORM>
<% } %>
</BODY></HTML>