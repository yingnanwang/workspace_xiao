<%@ page contentType="text/html;charset=GBK" 
import = "java.sql.*,javax.naming.*,LoginRelative.*"
%>			   <!-- ������ҳ�ı���ΪGBK -->
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %><!-- ����JSF���ı�ǿ� -->
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %><!-- ����JSF����HTML�ı�ǿ�-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Indelible Image</title>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
</head>
<body>
	<% 
		String myuid=(String)session.getAttribute("username");
		String uid = request.getParameter("username");
		if(!LoginDB.isRegistered(uid)){
			response.sendRedirect("../exception/NosuchPerson.jsp");
		}
		//String[] images = {};
		String[] images = {"../images/1.jpg","../images/idImage/kangaroo.jpg","../images/idImage/xi.gif"};		
		String[] nums = {"200","190","30"} ; 
		String[] titles = {"2012.2","2012.3","2012.4"};
	%>
    <header>
        <div class="header-container">
            <h1 id="logo">Ӱ����</h1>
            <h2 id="search"><%=myuid%>�򿪵�<%= uid%>������ҳ</h2>
        </div>
    </header>
    <ul id="nav">
        <li class="current">
        	<% 
        		//String name = "xf";
        		//session.setAttribute("username",name);
        		//session.setAttribute("",);
        	%>
        </li>
    </ul>
    <div id="main-container">

        <div id="left-content">
        	    	 <% 
                for(int i=0;i<images.length;i++) {
         %>
            <div class="content-container">
            	<div class="content-head">
            	<% out.println(titles[0]);%>
            	</div>
                <div class="content-body">
                    <div class="img-wrap">
                        <div class="img-roll">
                        <% out.println("<img src=\""+images[0]+"\" class = \"imgs\">"); %>
                        </div>
                        <i class="fa fa-chevron-left left fa-2x"></i>
                        <i class="fa fa-chevron-right right fa-2x"></i>
                    </div>
                    <div class="icons">
                        <i class="fa fa-thumbs-o-up fa-2x up"></i>
                        <span class="up-amount amount">
                        200
                        </span>
                    </div>                   
                </div>
            </div>
               <%} %>
        </div>
        <div id="psn-info">
            <img src="../images/ps-port.gif" id="ps-port">
            <span id="ps-name"><%=uid%></span>
            <div class="spe-info">
                <span class="cl">ϲ��</span>
                <span class="num">500</span>
            </div>            
            <div class="spe-info">
                <span class="cl">��ע</span>
                <span class="num">20W</span>              
            </div>            
            <div class="spe-info">
                <span class="cl">��˿</span>
                <span class="num">888</span> 
            </div>            
            <div class="spe-info">
                <span class="cl">˽��</span>
                <span class="num">45</span>
            </div>
        </div>
        <div><br></div>
     
    </div>

    <footer>
         Ӱ����
    </footer>
</body>
</html>