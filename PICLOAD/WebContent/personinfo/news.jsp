<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "database.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String uid=(String)session.getAttribute("username");
String[] contents = MessageDB.getContent(uid);
String[] dates = MessageDB.getTime(uid);
String[] senders = MessageDB.getSender(uid);
if(contents!=null){
	for(int i=0;i<contents.length;i++){
		out.println("\"" + contents[i] + "\"" + "   from "+ senders[i] + "  "+dates[i]+"<br>");
	}
}
%>
</body>
</html>