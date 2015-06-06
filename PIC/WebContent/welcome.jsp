<%@ page contentType="text/html;charset=GBK"%>			   <!-- ÉèÖÃÍøÒ³µÄ±àÂëÎªGBK -->
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %><!-- ÒýÈëJSFºËÐÄ±ê¼Ç¿â -->
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %><!-- ÒýÈëJSF¹ØÓÚHTMLµÄ±ê¼Ç¿â-->
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