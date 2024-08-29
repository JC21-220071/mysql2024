<%@page import="java.util.concurrent.CopyOnWriteArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JK3B16</title>
</head>

<%
	ArrayList<String[]> MAKER = 
		(ArrayList<String[]>) request.getAttribute("MAKER");
%>

<body>
	<table>
		<% for(String[] ss : MAKER) { %>
		<tr>
			<td><%=ss[0]%></td>
			<td><%=ss[1]%></td>
		</tr>
		<% } %>

	</table>

</body>
</html>