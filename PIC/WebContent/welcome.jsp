<%@ page contentType="text/html;charset=GBK"%>			   <!-- ������ҳ�ı���ΪGBK -->
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %><!-- ����JSF���ı�ǿ� -->
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %><!-- ����JSF����HTML�ı�ǿ�-->
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