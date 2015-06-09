<%@ page language="java" contentType="text/html; charset=UTF-8 "
    pageEncoding="UTF-8" import="database.*,java.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String sender = (String)session.getAttribute("username");
	String receiver = request.getParameter("uid");
	String content = request.getParameter("commentarea");
	out.println(sender + " send to " + receiver);
	long time = System.currentTimeMillis();
	DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	Calendar calendar = Calendar.getInstance();
	calendar.setTimeInMillis(time);
	String date = formatter.format(calendar.getTime());
	System.out.println(time + " = " + date);
	MessageDB.insertMessage(Long.toString(time), content, sender, receiver,date);
	out.println("success");
%>
</body>
</html>