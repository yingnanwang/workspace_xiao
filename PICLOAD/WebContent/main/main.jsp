<%@ page contentType="text/html;charset=GBK"%>			   <!-- ������ҳ�ı���ΪGBK -->
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %><!-- ����JSF���ı�ǿ� -->
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %><!-- ����JSF����HTML�ı�ǿ�-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Indelible Image</title>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
    <link rel="stylesheet" type="text/css" href="../css2/style.css">
</head>
<body>
	<% 
		String uid=(String)session.getAttribute("username");
		String[] images = {"../images/1.jpg","../images/1.jpg","../images/1.jpg","../images/1.jpg","../images/1.jpg"};		
		String[] nums = {"200","190","30","20","20"} ;
		String[] titles = {"2012.2","2012.3","2012.4","2012.5","2012.6"};
	%>
    <header>
        <div class="header-container">
            <div id="logo">Ӱ����</div>
            <!--<h2 id="search">
            <form action = "../personinfo/infoOthers.jsp" method = "post" target="_blank">
            <input name = "username"  type="text" required="true">
            <input type="submit" value="Search">
            </form>-->
            
            <div class="search">
				<form action = "../personinfo/infoOthers.jsp" method = "post" target="_blank">
					<input name = "username" type="text" value="Search Here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search Here';}" required="true">
					<input type="submit" value="">
				</form>	
			</div>
            
            <!--</h2>-->
        </div>
    </header>
    <ul id="nav">
        <li>
        	<% 
        		//String name = "xf";
        		//session.setAttribute("username",uid);
        		//session.setAttribute("",);
        	%>
        	<a name = "button"  href="../personinfo/infoMe.jsp">
        	�����ҵ���ҳ
        	</a>
        </li>

    </ul>
    <div id="main-container">

        <div id="left-content">
        	    	 <% 
                for(int i=0;i<images.length;i++) {
         %>
            <div class="content-container">
            	<div class="content-head">
            	<% out.println(titles[i]);%>
            	</div>
                <div class="content-body">
                    <div class="img-wrap">
                        <div class="img-roll">
                        <% out.println("<img src=\""+images[i]+"\" class = \"imgs\">"); %>
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
            <img src="images/ps-port.gif" id="ps-port">
            <span id="ps-name"><%=uid %></span>
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