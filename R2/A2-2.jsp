<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import = "java.net.*"%>

<%
boolean flag = false;

Cookie[] cookies = request.getCookies();

%>


<HTML>
<HEAD>
<TITLE>計算ツール</TITLE>
</HEAD>

<BODY>
<BR>
<% if(!flag){ %>
<FORM ACTION="A2-2output.jsp" METHOD="Post">
通貨換算ツール<BR>

<TABLE>
<TR><TD>外貨の数量</TD><TD><INPUT TYPE="text" NAME="quantity"></TD></TR>
<TR><TD>外貨の数量</TD><TD><INPUT TYPE="text" NAME="quantity"></TD></TR>
</TABLE>

<select name="currency">
<option value="1" /checked>加算
<option value="2"/>減算
<option value="3"/>乗算
<option value="4"/>除算
</select><BR>

<INPUT TYPE="submit" VALUE="両替"><BR>
</FORM>
<% } else { %>

<% } %>
</BODY>
</HTML>
