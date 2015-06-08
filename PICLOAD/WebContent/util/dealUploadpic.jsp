<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.io.*,com.jspsmart.upload.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	SmartUpload smart = new SmartUpload();
String uid=(String)session.getAttribute("username");
	smart.initialize(pageContext);
	smart.upload();
	//String name = smart.getRequest().getParameter("uname");
	ServletContext myapplication=this.getServletContext();
	String addr = myapplication.getRealPath("")+ "/images" + uid + "/images";
	File fileimage = new File(addr);
	if(!fileimage.exists()){
		fileimage.mkdirs();
	}
	smart.save(addr);
%>
</body>
</html>