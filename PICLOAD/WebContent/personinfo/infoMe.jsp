<%@ page contentType="text/html;charset=GBK" import="java.io.*,database.*" %>			   <!-- ������ҳ�ı���ΪGBK -->
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
	String uid=(String)session.getAttribute("username");
	//Ϊ�û������ļ���
	ServletContext myapplication=this.getServletContext();	
	String addr = myapplication.getRealPath("")+ "/images" + uid +"/";
	File fileimage = new File(addr);
	if(!fileimage.exists()){
		fileimage.mkdirs();
	}
	String iconpath = UserDB.getIconPath(uid);
	String[] pic_ids = PictureDB.getID(uid);
	String[] titles = PictureDB.getTitle(uid);
	String[] paths = PictureDB.getPath(uid);
	int[] favs = PictureDB.getFav(uid);
	%>
    <header>
        <div class="header-container">
            <h1 id="logo">Ӱ����</h1>
            <h2 id="search">�ҵ���ҳ</h2>
        </div>
    </header>
    <ul id="nav">
        <li>
        	<% 
        		//String name = "xf";
        		//session.setAttribute("username",name);
        		//session.setAttribute("",);
        	%>
        	<a name = "button"  href="../main/main.jsp">
        	������ҳ
        	</a>
        </li>
         <li>
        	<a name = "button"  href="../util/uploadpic.jsp">
        	�ϴ�ͼƬ
        	</a>
        </li>
        <li>
        	<a name = "button"  href="../util/uploadicon.jsp">
        	�޸�ͷ��
        </li>
        <li>
        	<a name = "button"  href="news.jsp">
        	�ҵ�����
        </li>
    </ul>
    <div id="main-container">

        <div id="left-content">
       	 <% 
       	 		if(paths!=null){
                for(int i=0;i < paths.length;i++) {
         %>
            <div class="content-container">
            	<div class="content-head">
            	    <img src=<%= iconpath%> class="portrait">
                    <span class="name"><%=titles[i] %></span>
            	</div>
                <div class="content-body">
                    <div class="img-wrap">
                        <div class="img-roll">
                        <% out.println("<img src=\""+paths[i]+"\" class = \"imgs\">"); %>
                        </div>
                        <!--  <i class="fa fa-chevron-left left fa-2x"></i>
                        <i class="fa fa-chevron-right right fa-2x"></i>-->
                    </div>
                    <div class="icons">
                        <i class="fa fa-thumbs-o-up fa-2x up" id = <%=pic_ids[i] %> ></i>
                        <span class="up-amount amount">
                        <%= Integer.toString(favs[i])%>
                        </span>
                    </div>                   
                </div>
            </div>
               <%} }  else {%>
            	<div class="content-body">
            	</div>
       	 	 <% } %>
        </div>
        <div id="psn-info">
            <img src=<%= iconpath%> id="ps-port">
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
     <script src="../js/script.js"></script>
</body>
</html>