<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     import = "java.sql.*,javax.naming.*,LoginRelative.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
	String username = request.getParameter("username");
	String passwd = request.getParameter("passwd");
	String result = LoginDB.Login(username,passwd);
	if(result.equals("success")){
		session.setAttribute("username",username);
		response.sendRedirect("/PIC/main/main.jsp");
	}
	else {
		out.println("alert(\'用户名密码错误\');");
		response.sendRedirect("/PIC/login.jsp");
	}
%>
</body>
</html>