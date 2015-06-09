<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.io.*,com.jspsmart.upload.*,java.util.*,database.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	//保存图片
	SmartUpload smart = new SmartUpload();
	String uid=(String)session.getAttribute("username");
	smart.initialize(pageContext);
	smart.upload();
    String ext = smart.getFiles().getFile(0).getFileExt();//获取上传文件的扩展名
    ServletContext myapplication=this.getServletContext();	
    String addr = myapplication.getRealPath("")+ "/images" + uid +"/";
	File fileimage = new File(addr);
	if(!fileimage.exists()){
		fileimage.mkdirs();
	}
	long time = System.currentTimeMillis();
	String pic_id = Long.toString(time);
	smart.getFiles().getFile(0).saveAs(addr+"icon.jpg");

	//System.out.println(pic_id + "  " + pic_title + " "+ uid + " "+path);
	
	//插入数据库
	String path = "/PIC/images" + uid +"/icon.jpg";
	String result = UserDB.changeIconPath(uid,path);
	
	//跳转
	if(result.equals("success"))response.sendRedirect("/PIC/personinfo/infoMe.jsp");
	else response.sendRedirect("/PIC/util/uploadicon.jsp");
%>
</body>
</html>