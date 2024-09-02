<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JK3B16</title>
</head>

<body>
<h1>メーカー一覧</h1>


<FORM METHOD="get"  ACTION="./Items">
<SELECT NAME="ID">

<%ArrayList<String[]> MAKER = 
		(ArrayList<String[]>) request.getAttribute("MAKER");%>

<% for (String[] ss : MAKER) { %>
		<OPTION VALUE="<%=ss[0] %>">
		<%= ss[1] %>
		</OPTION>
<% } %>

</SELECT>
<INPUT TYPE="SUBMIT" VALUE="絞り込む"/>
</FORM>




<h1>商品一覧</h1>


<table border="3" style="border-style: double;">

<%ArrayList<String[]> PRODUCT = 
		(ArrayList<String[]>) request.getAttribute("PRODUCT");%>

<% for (String[] ss2 : PRODUCT) { %>
		<tr>
			<th><%=ss2[0]%></th>
			<td><%=ss2[1]%></td>
			<td><%=ss2[2]%></td>
		</tr>
<%}%>

</table>

</body>
</html>