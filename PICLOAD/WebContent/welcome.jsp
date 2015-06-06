<%@ page contentType="text/html;charset=GBK"%>			   <!-- 设置网页的编码为GBK -->
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %><!-- 引入JSF核心标记库 -->
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %><!-- 引入JSF关于HTML的标记库-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<f:view>
<div>
<h:graphicImage value = "#{imagePath.path1}">
</h:graphicImage>
</div>
<div>
<h:graphicImage value = "#{imagePath.path2}"/>
</div>
<h:form>
<h:commandButton image="images/move-up.png" action = "#{imagePath.change}"/>
</h:form>
</f:view>
</body>
</html>