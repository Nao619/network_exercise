<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %> <% /* クラスライブラリの指定*/%>
<!DOCTYPE HTML>

<%
request.setCharacterEncoding("UTF-8");
int quantity=Integer.parseInt(request.getParameter("quantity"));
int value=Integer.parseInt(request.getParameter("currency"));
double rate;

if(value == 1){
	
} else if(value ==2){
	
} else if(value ==3){
	
} else {
	
}

%>

<HTML>
<HEAD>
<META CHARSET="UTF-8">
<TITLE>計算結果</TITLE>
</HEAD>

<BODY>
計算結果<BR>

<TABLE BORDER="1">
<TR><TD>日本円</TD><TD><%= rate*quantity %></TD></TR>
</TABLE>
</BODY>
</HTML>