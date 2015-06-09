<%@ page contentType="text/html;charset=GBK" import="java.io.*,database.*"%>			  
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %><!-- 引入JSF核心标记库 -->
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %><!-- 引入JSF关于HTML的标记库-->
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
		String iconpath = UserDB.getIconPath(uid);
		//为用户创建文件夹
		ServletContext myapplication=this.getServletContext();	
		String addr = myapplication.getRealPath("")+ "/images" + uid +"/";
		File fileimage = new File(addr);
		if(!fileimage.exists()){
			fileimage.mkdirs();
		}
		String[] users = PictureDB.getAllPicUsernameByFav();
		String[] titles = PictureDB.getAllPicTitleByFav();
		String[] paths = PictureDB.getAllPicPathByFav();
		String[] pic_ids = PictureDB.getAllPicIDByFav();
		int[] favs = PictureDB.getAllPicFavByFav();
		String[] icons;
		if(users != null){		
			icons = new String[users.length];
			for(int i=0;i<users.length;i++){
				icons[i] = UserDB.getIconPath(users[i]);
				System.out.println(icons[i]);				
			}
		}
		//String test = "/PIC/images/1.jpg";
		
		
		//String[] images = {"/PIC/images/1.jpg","../images/1.jpg","../images/1.jpg","../images/1.jpg","../images/1.jpg"};		
		//String[] nums = {"200","190","30","20","20"} ;
		//String[] titles = {"2012.2","2012.3","2012.4","2012.5","2012.6"};
	%>
    <header>
        <div class="header-container">
            <div id="logo">影南忘</div>
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
        	进入我的主页
        	</a>
        </li>

    </ul>
    <div id="main-container">

        <div id="left-content">
        	<% 
        		if(paths != null){
                	for(int i=0;i<paths.length;i++) {
                		//System.out.println(paths[i]);
                		//System.out.println(titles[i]);
                		//System.out.println(favs[i]);
        	 %>
            <div class="content-container">
            	<div class="content-head">
            	<% String str = UserDB.getIconPath(users[i]);%>          	
            	    <img src=<%=str %> class="portrait">
                    <span class="name"><%=users[i] %></span>
            	</div>
                <div class="content-body">
                    <div class="img-wrap">
                        <div class="img-roll">
                        <% out.println("<img src=\""+paths[i]+"\" class = \"imgs\">"); %>
                        </div>
                        <i class="fa fa-chevron-left left fa-2x"></i>
                        <i class="fa fa-chevron-right right fa-2x"></i>
                    </div>
                    <div class="icons">
                        <i class="fa fa-thumbs-o-up fa-2x up" id=<%=pic_ids[i] %>></i>
                        <span class="up-amount amount">
                       	<%=Integer.toString(favs[i])%>
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
            <span id="ps-name"><%=uid %></span>
            <div class="spe-info">
                <span class="cl">喜欢</span>
                <span class="num">500</span>
            </div>            
            <div class="spe-info">
                <span class="cl">关注</span>
                <span class="num">20W</span>              
            </div>            
            <div class="spe-info">
                <span class="cl">粉丝</span>
                <span class="num">888</span> 
            </div>            
            <div class="spe-info">
                <span class="cl">私信</span>
                <span class="num">45</span>
            </div>
        </div>
        <div><br></div>
     
    </div>

    <footer>
         影南忘
    </footer>
    <script src="http://lib.sinaapp.com/js/jquery/1.9.1/jquery-1.9.1.min.js"></script>
    <script src="../js/script.js"></script>
</body>
</html>