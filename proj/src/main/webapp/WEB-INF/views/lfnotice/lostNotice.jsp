<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>Freshshop - Ecommerce Bootstrap 4 HTML Template</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="lnf/images/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon" href="lnf/images/apple-touch-icon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="lnf/css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="lnf/css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="lnf/css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="lnf/css/custom.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- 검색옆에 설정 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
          cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css
          cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js
          </script>
<style type="text/css">
body {
	text-align: center;
}

#paging {
	font-size: 22pt;
}
</style>
<script type="text/javascript">
      function CallNotice(n){
    	  lfnfrm.lfnoticeid.value=n;
			lfnfrm.submit(); 
      }
   
   </script>
</head>

<body>





	<!-- Start Shop Page  -->
	<div class="shop-box-inner">
		<div class="row"
			style="text-align: center; width: 100%; margin-left: 20%">
			<h3>분실/습득물</h3>
		</div>
		<div class="container">
			<div class="row" style="width: 100%; margin-left: 65%">
				<form id="frm" name="frm" action="titleidsearch.do" method="post">
					<div style="">

						<select name="searchType" class="btn-light">
							<option value="id">아이디</option>
							<option value="lFnTitle">타이틀</option>
						</select><input name="lostsearch" id="lostsearch" type="text">
						<button class="btn hvr-hover" type="submit">검색</button>
					</div>
				</form>

				<ul class="nav nav-tabs">
					<li><a class="nav-link active" href="#grid-view"
						data-toggle="tab"> <i class="fa fa-th"></i>
					</a></li>
					<li><a class="nav-link" href="#list-view" data-toggle="tab">
							<i class="fa fa-list-ul"></i>
					</a></li>
				</ul>
			</div>

			<div class="row" style="width: 100%;">
				<div class="col-xl-12 col-lg-12 col-sm-12 col-xs-12 ">
					<div class="right-product-box">
						<div class="product-item-filter row">
							<div class="col-12 col-sm-12 text-center ">
								<div class="lostSeach">
									<div class="container mt-9"
										style="width: 100%; margin-left: 15%">
										<div>
											<form action="lostNotice.do">
												<table border="1" style="align: center">
													<div class="toolbar-sorter-right"
														style="padding-top: 20px; text-align: center">
														<select name="LFnAddress"
															class="show-tick form-control btn-light"
															style="text-align-last: center; text-align: center">
															<option selected>지역(대구권내)</option>
															<option value="수성구">수성구</option>
															<option value="서구">서구</option>
															<option value="중구">중구</option>
															<option value="달서구">달서구</option>
															<option value="남구">남구</option>
															<option value="달성군">달성군</option>
														</select>
													</div>
													<div class="toolbar-sorter-right" style="padding-top: 20px">
														<select name="LFnobjType"
															class="show-tick form-control btn-light"
															style="text-align: center; text-align-last: center;">
															<option selected>물품종류</option>
															<option value="스마트폰">스마트폰</option>
															<option value="전자기기">전자기기</option>
															<option value="지갑">지갑</option>
															<option value="의류">의류</option>
															<option value="기타">기타</option>
														</select>

														<div
															style="padding-top: 20px; text-align: center; text-align-last: center;">

															<div>
																<div>
																	<input type="date" name="startdate" id="startydm"
																		style="width: 200px;" class="show-tick btn-light"
																		title="검색 시작일"> ~ <input type="date"
																		name="enddate" id="endydm" style="width: 200px;"
																		class="show-tick btn-light" title="검색 종료일">
																</div>
																<div class="button-group filter-button-group"
																	style="text-align: center; margin-top: 10px">
																	<button class="btn hvr-hover" type="submit">검색</button>
																</div>
															</div>
														</div>
												</table>
												<input name="lFnStatus" type ="hidden" value="${LfNoticeVO.LFnStatus }">
											</form>
										</div>
									</div>
								</div>

							</div>



						</div>
						<div class="product-categorie-box">
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane fade show active"
									id="grid-view">
									<div class="row">
										<c:forEach items="${lostNotice}" var="lostNotices">
											<div class="col-sm-6 col-md-6 col-lg-4 col-xl-4"
												onclick="CallNotice(${lostNotices.LFnid })">
												<div class="products-single fix">
													<div class="box-img-hover">
														<div class="type-lb">
															<p class="sale">${lostNotices.LFnStatus}</p>
														</div>
														<img src="images/${lostNotices.LFnImg}" class="img-fluid"  style="width:400px; height:400px; object-fit:cover"
															alt="Image">
													</div>
													<div class="why-text">
														<h4>${lostNotices.LFnDate}</h4>
														<h4>${lostNotices.LFnAddress}</h4>
														<h4>${lostNotices.LFnObj}</h4>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="list-view">
									<c:forEach items="${lostNotice}" var="lostNotices">
										<div class="list-view-box">
											<div class="row">
												<div class="col-sm-6 col-md-6 col-lg-4 col-xl-4"
													onclick="CallNotice(${lostNotices.LFnid})">
													<div class="products-single fix">
														<div class="box-img-hover">
															<div class="type-lb">
																<p class="new">${lostNotices.LFnStatus}</p>
															</div>
															<img src="images/${lostNotices.LFnImg}" class="img-fluid" style="width:2	00px; height:200px; object-fit:cover"
																alt="Image">

														</div>
													</div>
												</div>
												<div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
													<div class="why-text full-width">
														<h3>제목: ${lostNotices.LFnTitle}</h3>
														<h5>주소: ${lostNotices.LFnAddress}</h5>
														<h6>내용 ${lostNotices.LFncontent}</h6>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
					<div class="product-categori"></div>
				</div>
			</div>

			<!-- End Shop Page -->
			<div align="center">
				<nav aria-label="Page navigation example">
					<ul class="pagination" style="margin-left: 39%">
						<li class="page-item"><c:if test="${pagingVO.nowPage == 1}">
								<a class="page-link"
									href="lostNotice.do?nowPage=1&LFnobjType=${LfNoticeVO.LFnobjType}&LFnAddress=${LfNoticeVO.LFnAddress}&lFnStatus=${LfNoticeVO.LFnStatus}"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span></a>
							</c:if> <c:if test="${pagingVO.nowPage != 1}">
								<a class="page-link"
									href="lostNotice.do?nowPage=${pagingVO.nowPage-1}&LFnobjType=${LfNoticeVO.LFnobjType}&LFnAddress=${LfNoticeVO.LFnAddress}&lFnStatus=${LfNoticeVO.LFnStatus}"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span></a>
							</c:if></li>
						<c:forEach begin="1" end="${pagingVO.lastPage}" varStatus="status">
							<c:if test="${status.count == pagingVO.nowPage}">
								<li class="page-item"><a
									style="background: aqua; color: white;" class="page-link"
									href="lostNotice.do?nowPage=${status.count}&LFnobjType=${LfNoticeVO.LFnobjType}&LFnAddress=${LfNoticeVO.LFnAddress}&lFnStatus=${LfNoticeVO.LFnStatus}">${status.count}</a></li>
							</c:if>
							<c:if test="${status.count != pagingVO.nowPage}">
								<li class="page-item"><a class="page-link"
									href="lostNotice.do?nowPage=${status.count}&LFnobjType=${LfNoticeVO.LFnobjType}&LFnAddress=${LfNoticeVO.LFnAddress}&lFnStatus=${LfNoticeVO.LFnStatus}">${status.count}</a></li>
							</c:if>
						</c:forEach>
						<li class="page-item"><c:if
								test="${pagingVO.nowPage == pagingVO.lastPage}">
								<a class="page-link"
									href="lostNotice.do?nowPage=${pagingVO.nowPage}&LFnobjType=${LfNoticeVO.LFnobjType}&LFnAddress=${LfNoticeVO.LFnAddress}&lFnStatus=${LfNoticeVO.LFnStatus}"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span></a>
							</c:if> <c:if test="${pagingVO.nowPage != pagingVO.lastPage}">
								<a class="page-link"
									href="lostNotice.do?nowPage=${pagingVO.nowPage+1}&LFnobjType=${LfNoticeVO.LFnobjType}&LFnAddress=${LfNoticeVO.LFnAddress}&lFnStatus=${LfNoticeVO.LFnStatus}"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span></a>
							</c:if></li>
					</ul>
				</nav>
			</div>
			<c:if test="${not empty id}">
			<div style="margin-bottom: 5%" class="filter-button-group">
				<a href="lNForm.do">
					<button class="btn hvr-hover" type="submit">글쓰기</button>
				</a>
			</div>
</c:if>


			<form id="lfnfrm" name="lfnfrm" action="lostNoticeSelect.do"
				method="post">
				<input type="hidden" id="lfnoticeid" name="lfnid">
			</form>
			<!-- ALL PLUGINS -->
			<script src="lnf/js/jquery.superslides.min.js"></script>
			<script src="lnf/js/bootstrap-select.js"></script>
			<script src="lnf/js/inewsticker.js"></script>
			<script src="lnf/js/bootsnav.js"></script>
			<script src="lnf/js/images-loded.min.js"></script>
			<script src="lnf/js/isotope.min.js"></script>
			<script src="lnf/js/owl.carousel.min.js"></script>
			<script src="lnf/js/baguetteBox.min.js"></script>
			<script src="lnf/js/jquery-ui.js"></script>
			<script src="lnf/js/jquery.nicescroll.min.js"></script>
		</div>
	</div>

	<!-- End Footer  -->


	<!-- ALL JS FILES -->
	<script src="lnf/js/jquery-3.2.1.min.js"></script>
	<!-- <script src="lnf/js/lnfpopper.min.js"></script> -->
	<script src="lnf/js/bootstrap.min.js"></script>
	<script src="lnf/js/lnfpopper.min.js"></script>
	<script src="lnf/js/form-validator.min.js"></script>
	<script src="lnf/js/contact-form-script.js"></script>
	<script src="lnf/js/custom.js"></script>



</body>
</html>