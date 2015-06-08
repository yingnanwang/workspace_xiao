<%@ page language="java" contentType="text/html; charset=UTF-8"
    import = "java.sql.*,javax.naming.*,LoginRelative.*"   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<% 
	String username = request.getParameter("username");
	String passwd = request.getParameter("passwd");
	String email = request.getParameter("email");
	//LoginDB mylogin = new LoginDB();
	String result = LoginDB.Register(username,passwd,null,null,null,null,null,email,null);
	
	if(result.equals("success")){
		session.setAttribute("username",username);
		response.sendRedirect("/PIC/main/main.jsp");
		//request.getRequestDispatcher("main.jsp").forward(request,response);
	}
	else {
		out.println("alert(\'注册失败\');");
		response.sendRedirect("/PIC/login.jsp");
	}
%>
</body>
</html>