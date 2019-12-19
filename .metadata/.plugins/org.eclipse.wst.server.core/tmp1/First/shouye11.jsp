<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
	
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Meta tag Keywords -->
    
	<!-- css files -->
	<link rel="stylesheet" href="CSS/bootstrap2.css"> <!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="CSS/style2.css" type="text/css" media="all" /> <!-- Style-CSS --> 
	<link rel="stylesheet" href="CSS/fontawesome-all2.css"> <!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<link rel="stylesheet" href="CSS/flexslider2.css" type="text/css" media="screen" />
	
	<!--web font-->
	<link href="http://fonts.googleapis.com/CSS?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<!--//web font-->
<style>
.row {
		margin-top:8px;
		color:#fff;
		padding-left: 10px;
		
	}
</style>
</head>

<body>
<header>	
<div class="container">
<!-- nav -->
		<nav class="navbar navbar-expand-lg navbar-light py-4">
			<!-- logo -->
			<h1>
				<a class="navbar-brand" href="index.html"> 
					图书管理系统
			  </a>
			</h1>
			<!-- //logo -->
			<button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- main nav -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-lg-auto text-center">
					<li class="nav-item active mr-lg-2">
						<a class="nav-link" href="http://localhost:8080/First/shouye11.jsp">首页
							<span class="sr-only">(current)</span>
						</a>
					</li>
					<li class="nav-item mr-lg-2">
						<a class="nav-link scroll" href="#welcome">关于</a>
					</li>
					<li class="nav-item mr-lg-2">
						<a class="nav-link scroll" href="#services">规则</a>&nbsp;&nbsp;
					</li>
					
					<li class="nav-item mr-lg-2">
						<a class="row" href="http://localhost:8080/First/logindwn/adminlogin.jsp">管理员</a>&nbsp;&nbsp;
					</li>
					<li class="nav-item mr-lg-2">
						<a class="nav-link scroll" href="#services">   </a>
					</li>
					<li class="nav-item mr-lg-2">
						<a class="row" href="http://localhost:8080/First/logindwn/login1.jsp">学生</a>
					</li>
							<div class="dropdown-divider"></div>
							
						</ul>
					</li>
					<li class="last">
						<a class="contact scroll" href="#contact">注册账户</a>
					</li>
				</ul>
			</div>
			<!-- //main nav -->
		</nav>
		<!-- //nav -->
</div>
</header>
		
<!-- banner -->
<div class="banner">
	<div class="banner-layer">
		<div class="container">
			<div class="agile_banner_info">
				<div class="agile_banner_info1">
					<div id="typed-strings" class="agileits_w3layouts_strings">
						<p><i>弘德明志，</i>博学笃行</p>
						<p>欢迎来到<i>图书管理系统</i></p>
					</div>
					<span id="typed" style="white-space:pre;">欢迎来到<em>图书管理系统</em></span></div>
			<div class="banner_agile_para">
				<p></p>
			</div>
			<a href="#" data-toggle="modal" data-target="#exampleModalCenter" role="button"> 显示更多 </a>
			</div>
		</div>
	</div>
</div>
<!-- //banner -->	
<!-- about -->
<section class="welcome py-5" id="welcome">
	<div class="container">
		<div class="head_part">
		  <h3 class="heading">关于系统：</h3>
		  <p class="heading-bottom mb-5">实现了图书借阅、管理等功能</p>
		</div>
		<div class="row">
			<div class="col-lg-7 welcome_left">
			  <h3 class="mb-3">本系统所实现的功能：</h3>
			  <p>本系统分学生和管理员两种角色和权限进行对图书管理系统进行控制，可以方便的对图书进行快捷操作</p>
			  <div class="row about-grids">
			<div class="col-md-4 about-grid1">
			  <h3>查询图书功能</h3>
			  <p>可以实时查看书库当中图书的各种信息。</p>
			</div>
					<div class="col-md-4 about-hover-grid">
					  <h3>借阅功能</h3>
					  <p>实现借阅与还书的快捷功能。</p>
					</div>
					<div class="col-md-4 about-hover-grid">
					  <h3>管理功能</h3>
					  <p>可以对图书进行实时操作，增加、删除、修改图书信息。</p>
					</div>
				</div>
				
			</div>
			
		</div>
	</div>
</section>
<!-- //about -->

<!-- services -->
<section class="services py-5" id="services">
	<div class="container">
		<div class="head_part">
		  <h3 class="heading">借阅须知：</h3>
		  <p class="heading-bottom mb-5">&nbsp;</p>
		</div>
		<div class="serv-grids text-center">
			<div class="serv-icons"> <span class="fab mr-md-5 mr-3 fa-accusoft" aria-hidden="true"></span>
			</div>
		  <h4>图书馆书刊阅览与外借规则</h4>
		  <p> &nbsp;1.图书馆图书只向我校全日制本科生、研究生、交换生和教职工提供借阅。进入书库请首先出示本人校园卡（无卡者不得进入），并拿取代书板后方可入库，用完放回原处。 2.读者应将携带的书包、水杯、书籍等物放在指定地点，请勿带入书库内。 3.读者选书时请使用代书板，严禁乱插乱放，以保证图书排架准确、整齐。 4.请保持库内安静，不得随地吐痰，严禁吸烟、乱扔杂物等。 5.借书前请仔细检查图书污损（包括污渍、水渍、油渍、划痕、字迹、撕页、缺页等）。若书籍有污损，请在借书时声明，待工作人员处理好后再借。还书时，如发现图书有污损，将按有关规定处理。 </p>
		  <p>&nbsp;</p>
		  <div class="read"> </div>
		</div>
		
	</div>
</section>
<!-- services -->

<!-- pricing -->
<section class="pricing" id="pricing"> </section>
<!-- //pricing -->


<!-- testimonials -->
<div class="testimonials py-5" id="testimonials"> </div>
<!-- //testimonials -->	

<!-- stats -->
<section class="stats" id="stats"> </section>
<!-- //stats -->

<!-- team --><!-- //team -->

<!-- contact -->
<div class="contact py-5" id="contact">
	<div class="container py-3">
		<div class="head_part">
		  <h3 class="heading">注册账户：</h3>
		</div>
		<div class="row agile-contact-form">
			<div class="col-md-6 contact-form-left">
				<iframe src="" class="map" allowfullscreen=""></iframe>
			</div>
			<div class="col-md-6 mt-md-0 mt-5 contact-form-right">
				<div class="agileinfo-contact-form-grid">
					<form action="http://localhost:8080/First/login/chenggong.jsp" method="post">
						<input type="text" name="学号" placeholder="学号" required="">
						<input type="text" name="Subject" placeholder="密码" required="">
						<input type="text" name="Email" placeholder="姓名" required="">
<button class="btn1">注册</button>
					</form>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- //contact -->

<!-- footer --><!-- footer -->

	<!-- Vertically centered Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
		  <div class="modal-header">
		    <h5 class="modal-title text-capitalize text-center" id="exampleModalLongTitle"> 图书管理系统 </h5>
		    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			  <span aria-hidden="true">&times;</span>
			</button>
		  </div>
		  <div class="modal-body">
			<img src="images/banner1.jpg" class="img-fluid mb-3" alt="Modal Image" />
			为了更加方便地管理和借阅图书，我们制作了图书管理系统。
		  </div>
		  <div class="modal-footer">
			<button type="button" class="btn btn-primary">关闭</button>
		  </div>
		</div>
	  </div>
	</div>
	<!-- //Vertically centered Modal -->

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min2.js"></script>
	<script type="text/javascript" src="js/bootstrap2.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
	<!-- //js -->	
	
	<!-- banner-type-text -->
		<script src="js/typed2.js" type="text/javascript"></script>
		<script>
			$(function(){

				$("#typed").typed({
					// strings: ["Typed.js is a <strong>jQuery</strong> plugin.", "It <em>types</em> out sentences.", "And then deletes them.", "Try it out!"],
					stringsElement: $('#typed-strings'),
					typeSpeed: 30,
					backDelay: 500,
					loop: false,
					contentType: 'html', // or text
					// defaults to false for infinite loop
					loopCount: false,
					callback: function(){ foo(); },
					resetCallback: function() { newTyped(); }
				});

				$(".reset").click(function(){
					$("#typed").typed('reset');
				});

			});

			function newTyped(){ /* A new typed object */ }

			function foo(){ console.log("Callback"); }
		</script>
	<!-- //banner-type-text -->
	
	<!-- Stats-Number-Scroller-Animation-JavaScript -->
	<script src="js/waypoints.min2.js"></script> 
	<script src="js/counterup.min2.js"></script> 
	<script>
		jQuery(document).ready(function( $ ) {
			$('.counter').counterUp({
				delay: 10,
				time: 1000 
			});
		});
	</script>
	<!-- //Stats-Number-Scroller-Animation-JavaScript -->

	<!-- flexslider --><!-- for testimonials -->
	<script defer src="js/jquery.flexslider2.js"></script>
	<!--Start-slider-script-->
		<script type="text/javascript">
		
		$(window).load(function(){
		  $('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		});
	  </script>
	<!--End-slider-script-->
	<!-- //flexslider --><!-- //for testimonials -->

	<!-- start-smoth-scrolling -->
	<script src="js/SmoothScroll.min2.js"></script>
	<script type="text/javascript" src="js/move-top2.js"></script>
	<script type="text/javascript" src="js/easing2.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- start-smoth-scrolling -->

</body>
</html>