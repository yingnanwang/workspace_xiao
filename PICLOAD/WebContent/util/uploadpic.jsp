<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String uid=(String)session.getAttribute("username");
%>
<h>Hello <%=uid %>, please choose the file you want to upload</h>>
<form action = "dealUploadpic.jsp" method = "post" enctype = "multipart/form-data">
	<input type = "text" name="uname"><br>
	<input type = "file" name = "pic">
	<input type = "submit" value = "upload">
</form>
</body>
</html>