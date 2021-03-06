<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<!-- ** Basic Page Needs ** -->
<meta charset="utf-8">
<title>Medic | Medical HTML Template</title>

<!-- ** Mobile Specific Metas ** -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Medical HTML Template">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
<meta name="author" content="Themefisher">
<meta name="generator" content="Themefisher Medical HTML Template v1.0">

<!-- ** Plugins Needed for the Project ** -->
<!-- jquery-ui -->
<link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.css">
<!-- bootstrap -->
<link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
<!-- Slick Carousel -->
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="plugins/slick/slick-theme.css">
<!-- FancyBox -->
<link rel="stylesheet" href="plugins/fancybox/jquery.fancybox.min.css">
<!-- fontawesome -->
<link rel="stylesheet" href="plugins/fontawesome/css/all.min.css">
<!-- animate.css -->
<link rel="stylesheet" href="plugins/animation/animate.min.css">

<!-- timePicker -->
<link rel="stylesheet" href="plugins/timePicker/timePicker.css">

<!-- Stylesheets -->
<link href="css/style.css" rel="stylesheet">

<!--Favicon-->
<link rel="icon" href="images/favicon.png" type="image/x-icon">
<style>
div.fixed-button {
	display: none;
}


</style>


<script type="text/javascript">
	function Loading() {
		//화면 높이,너비 구하기
		var maskHeight = $(document).height();
		var maskWidth = window.document.body.clientWidth;

		//화면에 출력할 마스크 설정
		var mask = "<div id='mask' style='position:absolute; z-index:9000; background-color:#ffffff; display:none; left:0; top:0;'></div>";
		var loadingImg = '';

		loadingImg += "<div id='loadingImg'>";
		loadingImg += "<img src='images/heart2.gif' style='position: absolute; top:40%; left:40%;  display: block; margin: 0px auto;'>";
		loadingImg += "</div>";

		//화면에 레이어 추가
		$('body').append(mask).append(loadingImg)

		//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면채우기
		$('#mask').css({
			'width' : maskWidth,
			'height' : maskHeight,
			'opacity' : '0.3'

		});
		

		//마스크 표시
		$('#mask').show();

		//로딩중 이미지 표시

		$('#loadingImg').show();

	}
	function closeLoading() {
		$('#mask, #loadingImg').hide();
		$('#mask, #loadingImg').empty();
	}
</script>
</head>
<body>

	<!--Header Upper-->
	<section class="header-uper">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-xl-4 col-lg-3">
					<div class="logo">
						<a href="home.do"> <img loading="lazy" class="img-fluid"
							src="images/logo.jpg" alt="logo">
						</a>
					</div>
				</div>
				<div class="col-xl-8 col-lg-9">
					<div class="right-side">
						<ul class="contact-info pl-0 mb-4 mb-md-0" style="float: right">
							<div class="link-btn text-center text-lg-right">
								<c:if test="${empty id }">
									<a href="memberLoginForm.do" class="btn-style-one"
										style="border-radius: 150px">로그인</a>
									<a href="registerForm.do" class="btn-style-one"
										style="border-radius: 200px">회원가입</a>
								</c:if>
								<c:if test="${not empty id }">
									<div>
										<img class="rounded-circle border p-1"
											src="images/${propicture}" loading="lazy" width="90px"
											height="90px" alt="picture">${name }님 환영합니다!
									</div>
									<a href="logout.do" class="btn-style-one"
										style="border-radius: 200px">로그아웃</a>
								</c:if>
							</div>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<br>
		<!--Main Header-->
		<nav class="navbar navbar-expand-lg navbar-dark"
			style="border-radius: 200px">
			<div class="container">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarLinks" aria-controls="navbarSupportedContent"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarLinks">
					<ul class="navbar-nav">
						<li class="nav-item active"><a class="nav-link"
							href="home.do">Home</a></li>
						<li class="nav-item dropdown @@contacts"><a
							class="nav-link dropdown-toggle" href="#!" id="navbarDropdown1"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">사이트 소개</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown1">
								<li><a class="dropdown-item @@contact" href="introSelf.do">인사말</a></li>
								<li><a class="dropdown-item @@contactDetails"
									href="introSite.do">오시는 길</a></li>
							</ul></li>
						<li class="nav-item @@notice"><a class="nav-link"
							href="noticeMain.do">공지사항</a></li>
						<li class="nav-item @@about"><a class="nav-link"
							href="lostNotice.do?lFnStatus=분실">분실물 게시판</a></li>
						<li class="nav-item @@service"><a class="nav-link" href="lostNotice.do?lFnStatus=습득">습득물
								게시판</a></li>
						<li class="nav-item @@gallery"><a class="nav-link"
							href="totalApi.do" onclick="Loading()">공공기관 유실물 조회</a></li>

						<c:if test="${not empty id }">
							<!-- 로그인 후 보이는 메뉴 -->
							<li class="nav-item @@appointment"><a class="nav-link"
								href="myManage.do">나의 정보</a></li>
						</c:if>

						<c:if test="${author == 'ADMIN' }">
							<!-- 관리자만 보이는 드롭다운 -->
							<li class="nav-item dropdown @@blogs"><a
								class="nav-link dropdown-toggle" href="#!" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">관리자 페이지</a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item @@blog" href="memberList.do">회원
											관리</a></li>
									<li><a class="dropdown-item @@blogDetails"
										href="#">게시글 관리</a></li>
								</ul></li>
						</c:if>


					</ul>
				</div>
			</div>
		</nav>
		<!--End Main Header -->
	</section>
	<!--Header Upper-->
	<!-- jquery -->
	<script src="plugins/jquery.min.js"></script>
	<!-- bootstrap -->
	<script src="plugins/bootstrap/bootstrap.min.js"></script>
	<!-- Slick Slider -->
	<script src="plugins/slick/slick.min.js"></script>
	<script src="plugins/slick/slick-animation.min.js"></script>
	<!-- FancyBox -->
	<script src="plugins/fancybox/jquery.fancybox.min.js" defer></script>
	<!-- Google Map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU"
		defer></script>
	<script src="plugins/google-map/gmap.js" defer></script>

	<!-- jquery-ui -->
	<script src="plugins/jquery-ui/jquery-ui.js" defer></script>
	<!-- timePicker -->
	<script src="plugins/timePicker/timePicker.js" defer></script>

	<!-- script js -->
	<script src="js/script.js"></script>
</body>

</html>