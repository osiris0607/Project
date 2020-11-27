<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/css/kfonts2.css" rel="stylesheet">
<style>
/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
.clear {
	clear: both;
}

.line {
	margin-top: 10%;
	margin-left: 20%;
	width: 60%;
	border-bottom: #ccc 1px solid;
}

/* 본문 */
.page {
	width: 60%;
	position: relative;
	margin-top: 60px;
	margin-bottom: 400px;
	margin-left: 30%;
}

     section{
     margin-bottom: 8%;
     width:70%;
    }

.buyButton {
	position: relative;
	width: 45%;
	background-color: rgba(208, 207, 207, 1.00);
	height: 35px;
	color: rgba(255, 255, 255, 1.00);
	border-style: none;
	font-size: 12px;
	float: left;
}
.likeCancelButton {
	position: relative;
	width: 45%;
	background-color: rgba(208, 207, 207, 1.00);
	height: 35px;
	color: rgba(255, 255, 255, 1.00);
	border-style: none;
	font-size: 12px;
	float: right;
}
.thumbnail {
	border-radius: 0;
	position: relative;
	z-index: 1;
	border: 0px solid #fff;
	outline: 0px solid #ccc;
	display: inline;
	margin: auto;
}

.red {
	color: #FF0000
}

.black {
	color: #000
}

ul.block {
	height: 60px;
}

.thumbnail:hover {
	border: 1px solid red;
	outline: 0
}

.thumbnail a:hover {
	text-decoration: none
}

.thumbnail:hover img {
	opacity: 0.3;
	filter: progid:DXImageTransform.Microsoft.Alpha(opacity=50);
}

.thumbnail:hover .zoom {
	opacity: 1;
	filter: progid:DXImageTransform.Microsoft.Alpha(opacity=100);
}

.thumbnail {
	float: left;
}

</style>
</head>
<body>
	<header>
		<jsp:include page="../include/header.jsp" />
	</header>

	<!-- 사이드바 -->
	<nav><jsp:include page="../include/sideBar.jsp" /></nav>
	<!-- 사이드바 끝 -->

	<!-- 본문 -->
	<div class="col-sm-8 page">
		<jsp:include page="../include/myInfoHeader.jsp" />
		<!-- 본문 section1  -->
		<section id="section1">
			<h4>
				<strong>찜 목록</strong>
			</h4>
			<hr style="float: left; width: 70%;">
			<div class="clear"></div>
			<!-- The offer section displays a banner text for promotions -->
			<div>
			<div class="row">
				<div class="col-sm-3 col-xs-6">
					<div class="thumbnail">
						<a href="#"> <img src="/web/img/대패.jpg" alt="">
							<div class="caption">
								<ul class="list-unstyled block">
									<li><b>돌돌말이 대패 삼겹살(냉동), 900g, 1팩</b></li>
									<small>17% </small>
									<small style="text-decoration: line-through; color: #ccc">10,900</small>
									<dd class="red">8,990 원</dd>
								</ul>
								<dl>
								</dl>
							</div>
						</a>
					</div>
					<input type="button" name="button" value="구입하기" class="buyButton">
					<input type="button" name="button" value="찜하기 취소"
						class="likeCancelButton">
				</div>
				<div class="col-sm-3 col-xs-6">
					<div class="thumbnail">
						<a href="#"> <img src="/web/img/샤인머스캣.jpg" alt="">
							<div class="caption">
								<ul class="list-unstyled block">
									<li><b>국내산 샤인머스캣 청포도, 1.3kg(2수), 1팩</b></li>
									<small>34% </small>
									<small style="text-decoration: line-through; color: #ccc">37,600</small>
									<dd class="red">24,600 원</dd>
								</ul>
								<dl>
								</dl>
							</div>
						</a>
					</div>
					<input type="button" name="button" value="구입하기" class="buyButton">
					<input type="button" name="button" value="찜하기 취소"
						class="likeCancelButton">
				</div>
				<div class="col-sm-3 col-xs-6">
					<div class="thumbnail">
						<a href="#"> <img src="/web/img/소꽃갈비살.jpg" alt="">
							<div class="caption">
								<ul class="list-unstyled block">
									<li><b>미국산 소꽃갈비살구이(냉장), 400g, 1개</b></li>
									<small>13% </small>
									<small style="text-decoration: line-through; color: #ccc">26,500</small>
									<dd class="red">22,900 원</dd>
								</ul>
								<dl>
								</dl>
							</div>
						</a>
					</div>
					<input type="button" name="button" value="구입하기" class="buyButton">
					<input type="button" name="button" value="찜하기 취소"
						class="likeCancelButton">
				</div>
				<div class="col-sm-3 col-xs-6">
					<div class="thumbnail">
						<a href="#"> <img src="/web/img/수입 블루베리.jpg" alt="">
							<div class="caption">
								<ul class="list-unstyled block">
									<li><b>수입 블루베리, 310g, 2팩</b></li>
									<small>23% </small>
									<small style="text-decoration: line-through; color: #ccc">14,900</small>
									<dd class="red">11,400 원</dd>
								</ul>
								<dl>
								</dl>
							</div>
						</a>
					</div>
					<input type="button" name="button" value="구입하기" class="buyButton">
					<input type="button" name="button" value="찜하기 취소"
						class="likeCancelButton">
				</div>
			</div>
		</div>
		</section>

		<!-- 본문 끝 -->

	</div>

	<!-- footer -->
	<footer class="container-fluid navbar-absolute-bottom2"
		id="foot-bottom">
		<div class="clear"></div>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
	<!-- footer 끝 -->

</body>
</html>