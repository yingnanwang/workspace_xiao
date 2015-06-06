<%@ page contentType="text/html;charset=GBK"%>			   <!-- ������ҳ�ı���ΪGBK -->
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %><!-- ����JSF���ı�ǿ� -->
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %><!-- ����JSF����HTML�ı�ǿ�-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Indelible Image</title>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <header>
        <div class="header-container">
            <h1 id="logo">Ӱ����</h1>
        </div>
    </header>
    <ul id="nav">
        <li class="current">����ҳ</li>
    </ul>
    <f:view>
    <div id="main-container">
        <div id="left-content">
            <div class="content-container">
                <div class="content-head">
                    <h:graphicImage value = "#{searchPageImages.idImagePath}" styleClass="portrait"/>
                    <h:outputText value = "#{searchPageImages.id}" styleClass="name"/>
                </div>
                <div class="content-body">
                    <div class="img-wrap">
                        <div class="img-roll">
                    		 <h:graphicImage value = "#{searchPageImages.image1Path}"  styleClass="imgs"/>
                    		<h:graphicImage value = "#{searchPageImages.image2Path}"  styleClass="imgs"/>
                    		<h:graphicImage value = "#{searchPageImages.image3Path}"  styleClass="imgs"/>
                        </div>
                        <i class="fa fa-chevron-left left fa-2x"></i>
                        <i class="fa fa-chevron-right right fa-2x"></i>
                    </div>
                    <div class="icons">
                        <i class="fa fa-thumbs-o-up fa-2x up"></i>
                        <span class="up-amount amount">250</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </f:view>
    <footer>
         Ӱ����
    </footer>
</body>
</html>