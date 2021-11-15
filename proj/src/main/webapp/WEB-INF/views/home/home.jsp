
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 
PROJECT: Medic | Medical HTML Template
VERSION: 1.0.0
AUTHOR: Themefisher
WEBSITE: https://themefisher.com
-->

<!DOCTYPE html>
<html lang="zxx">
<head>

<!-- ** Basic Page Needs ** -->
<meta charset="utf-8">
<title>Medic | Medical HTML Template</title>

<!-- ** Plugins Needed for the Project ** -->
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
<!-- jquery-ui -->
<link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.css">
<!-- timePicker -->
<link rel="stylesheet" href="plugins/timePicker/timePicker.css">

<!-- Stylesheets -->
<link href="css/style.css" rel="stylesheet">

<!--Favicon-->
<link rel="icon" href="images/favicon.png" type="image/x-icon">

<meta name="viewport" content="width=device-width, initial-scale=1">

</head>


<body>
	<!-- 배너 이미지 -->
	<div class="col-12" style="padding: 0">
		<img src="images/banner.jpg" class="img-fluid">
	</div>
	<!--Service Section: 최근 분실물 습득 현황-->
	<section class="service-section bg-gray section">
		<div class="container">
			<div class="section-title text-center">
				<h2 style="color: #000000">최근 분실물 습득 현황</h2>

			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="items-container">
						<div class="item">
							<div class="inner-box">
								<div class="img_holder">
									<a href="lostNotice.do?lFnStatus=습득"> <img loading="lazy"  style="width:400px; height:400px; object-fit:cover"
										src="images/갈색지갑.jpg" alt="images" class="img-fluid">
									</a>
								</div>
								<div class="image-content text-center">
									<span>2021-11-01</span> <a href="lostNotice.do?lFnStatus=습득">
										<h6>갈색지갑</h6>
									</a>
									<p>중앙로 역에서 주웠습니다!</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="inner-box">
								<div class="img_holder">
									<a href="lostNotice.do?lFnStatus=습득"> <img loading="lazy"  style="width:400px; height:400px; object-fit:cover"
										src="images/phone.png" alt="images" class="img-fluid">
									</a>
								</div>
								<div class="image-content text-center">
									<span>2021-10-29</span> <a href="lostNotice.do?lFnStatus=습득">
										<h6>휴대폰</h6>
									</a>
									<p>대구역 주변에서 주웠습니다.</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="inner-box">
								<div class="img_holder">
									<a href="lostNotice.do?lFnStatus=습득"> <img loading="lazy"  style="width:400px; height:400px; object-fit:cover"
										src="images/pradabag.jpg" alt="images" class="img-fluid">
									</a>
								</div>
								<div class="image-content text-center">
									<span>2021-11-09</span> <a href="lostNotice.do?lFnStatus=습득">
										<h6>가방</h6>
									</a>
									<p>동대구역내 대기하는 의자 밑에서 가방 주웠어요.</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="inner-box">
								<div class="img_holder">
									<a href="lostNotice.do?lFnStatus=습득"> <img loading="lazy"  style="width:400px; height:400px; object-fit:cover"
										src="images/noimage.jpg" alt="images" class="img-fluid">
									</a>
								</div>
								<div class="image-content text-center">
									<span>2021-11-01</span> <a href="lostNotice.do?lFnStatus=습득">
										<h6>폰</h6>
									</a>
									<p>서문시장 A-11홀에서 주웠습니다.</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="inner-box">
								<div class="img_holder">
									<a href="lostNotice.do?lFnStatus=습득"> <img loading="lazy"  style="width:400px; height:400px; object-fit:cover"
										src="images/tablet.jpeg" alt="images" class="img-fluid">
									</a>
								</div>
								<div class="image-content text-center">
									<span>2021-11-06</span> <a href="lostNotice.do?lFnStatus=습득">
										<h6>태블릿</h6>
									</a>
									<p>안양역 스타벅스쪽에서 태블릿을 두고가셨더라구요.</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="inner-box">
								<div class="img_holder"> 
									<a href="lostNotice.do?lFnStatus=습득"> <img loading="lazy"  style="width:400px; height:400px; object-fit:cover"
										src="images/iphone13blue.png" alt="images" class="img-fluid">
									</a>
								</div>
								<div class="image-content text-center">
									<span>2021-10-19</span> <a href="lostNotice.do?lFnStatus=습득">
										<h6>아이폰</h6>
									</a>
									<p>앞산 등산로 입구쪽에서 발견했습니다.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--End Service Section-->

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



