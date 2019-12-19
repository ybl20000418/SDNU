<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="team.wewon.libsys.domain.User"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>mian</title>
<link href="css/main02.css" rel="stylesheet" type="text/css">
</head>

<body>
	         <% 
				User user = (User) request.getSession().getAttribute("user");
				if(null == user){
				%>
						<a  href="login.jsp"><img id="login" src="images/login1.png"/></a>				
				<% 	
				}else{
				%> 
				     <h3>欢迎您：${user.snu }</h3>
				   <a  href="${pageContext.request.contextPath}/Slogout"><img id="logout" src="images/logout1.png"/></a>
			<% 	
				}
				%>	
				
                
             
<div id="top">
	  <img id="libchar" src="images/libchar.png"/>
	  
     <ul id="ultop">
                <li onMouseOver="dychangecolor(this)" onMouseOut="backcolor(this)"><a href="main.jsp">首页</a></li>
                <li onMouseOver="dychangecolor(this)" onMouseOut="backcolor(this)"><a href="search.jsp">搜索</a></li>
                <li onMouseOver="dychangecolor(this)" onMouseOut="backcolor(this)"><a href="${pageContext.request.contextPath}/Slogjud?url=stmain.jsp">我的</a></li>
                <li onMouseOver="dychangecolor(this)" onMouseOut="backcolor(this)"><a href="${pageContext.request.contextPath}/Slogjud?url=sborrow.jsp" >借书</a></li>
               
      </ul>
  
</div>

  <div id="search">
		<form action="${pageContext.request.contextPath}/Search" method="post" >
            <select name="type" id="type">
		      <option value="kind">图书分类号</option>
			  <option value="name">书名</option>
			  <option value="author">作者</option>
			  <option value="publishhouse">出版社</option>
			  <option value="publishtime">出版时间</option>
			  <option value="ISBN">ISBN</option>
			  <option value="count">副本量</option>
		   </select>
			<input name="value" id="value" type="text"/>
			<p><input id="sear" value="" type="submit"/></p>
</form>
  </div>
  <div id="shows">
	 <div id="showleft">
		  <h5>&nbsp;&nbsp;读书无嗜好，就能尽其多。不先泛览群书，则会无所适从或失之偏好，广然后深，博然后专。　——鲁迅<br/><br/>
			 &nbsp;&nbsp;当我们第一遍读一本好书的时候，我们仿佛觉得找到了一个朋友；当我们再一次读这本书的时候，仿佛又和老朋友重逢。——伏尔泰<br/><br/>
			  &nbsp;&nbsp;任何时候我也不会满足，越是多读书，就越是深刻地感到不满足，越感到自己知识贫乏。　——马克思<br/><br/>
			  &nbsp;&nbsp;读书有三种方法：一种是读而不懂，另一种是既读也懂，还有一种是读而懂得书上所没有的东西。　——克尼雅日宁<br/><br/>
			   &nbsp;&nbsp;一个爱书的人，他必定不致于缺少一个忠实的朋友，一个良好的老师，一个可爱的伴侣，一个温情的安慰者。——巴罗 <br/><br/>
  
		 </h5>
	 </div>
      <div id="show" class="show">
		<div class="banner-slide slide1"></div>
	    <div class="banner-slide slide2"></div>
	    <div class="banner-slide slide3"></div>
	    <div class="banner-slide slide4"></div>  
    </div>
	<div id="showright">
		      <br/>
		  <h5>&nbsp;&nbsp;一种纯粹靠读书学来的真理，与我们的关系，就像假肢、假牙、蜡鼻子甚或人工植皮。而由独立思考获得的真理就如我们天生的四肢：只有它们才属于我们。 —— 叔本华<br/><br/>
			 &nbsp;&nbsp;少年读书，如隙中窥月；中年读书，如庭中望月；老年读书，如台上玩月。皆以阅历之深浅，为所得之深浅耳。 —— 张潮<br/><br/>
			  &nbsp;&nbsp;任何时候我也不会满足，越是多读书，就越是深刻地感到不满足，越感到自己知识贫乏。　——马克思<br/><br/>
			  &nbsp;&nbsp;读书使人充实，讨论使人机智，笔记使人准确，读史使人明智，读诗使人灵秀，数学使人周密，科学使人深刻，伦理使人庄重，逻辑修辞使人善辩。凡有所学，皆成性格。—— 培根<br/><br/>
			   &nbsp;&nbsp;读而未晓则思，思而未晓则读。——宋·朱熹《学规类编》<br/><br/>
  
		 </h5>
		 
	</div>
	  
 </div>
<div id="bottom">
</div>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>