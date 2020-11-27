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

/* 본문 */
.page {
	width: 60%;
	position: relative;
	margin-top: 2%;
	margin-left: 20%;
}

section {
	margin-bottom: 8%;
}

/* ////////// 위 css내용들 수정하지 말것 */
/* ////////// 아래 본문 내용의 css는 여기서부터 작성하기 */
div #date_div {
	background-color: blue;
	display: inline;
}

form {
	margin-bottom: 4%;
}

</style>
</head>
<body>
	<header>
		<jsp:include page="../include/sellerHeader.jsp" />
	</header>

	<!-- 사이드바 -->
	<nav>
		<jsp:include page="../include/sellerSideBar.jsp" />
	</nav>
	<!-- 사이드바 끝 -->

	<!-- 본문 -->
	<jsp:include page="../include/sellerSubHeader.jsp" />
	<div class="col-sm-8 page">
		<!-- 본문 section1  -->
		<section id="section1">
			<div class="table-responsive" style="width: 60%; margin-left: 20%;">

				<h4>
					<strong>상품등록</strong>
				</h4>
				<hr style="float: left; width: 70%;">
				<br> <br> <br>
				<div class="clear"></div>



				<!-- 여기서부터 본문 내용 넣기 -->

				<table class="table table-striped table-bordered" id="table">


					<tr>
						<th width=20%>카테고리</th>
						<td><div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle"
									data-toggle="dropdown">
									대분류,소분류 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">대분류</a></li>
									<li><a href="#">소분류</a></li>
								</ul>
							</div></td>
					</tr>
					<tr>
						<th width="10%">상품명</th>
						<td><input type="text" id="txt1" style="width: 550px;"></td>
					</tr>
					<tr>
						<th width="10%">판매가</th>
						<td><input type="text" id="txt1" style="width: 550px;">
						</td>
					</tr>
					<tr>
						<th width="10%">재고</th>
						<td><input type="text" id="txt1" style="width: 550px;">
						</td>
					</tr>
					<tr>
						<th width="10%">옵션</th>
						<td><input type="text" id="txt1" style="width: 550px;">
						</td>
					</tr>
					<tr>
						<th width="10%">내용</th>
						<td><input type="text" id="txt1"
							style="width: 550px; height: 200px;"></td>
					</tr>
					<tr>
						<th width="10%">파일첨부</th>
						<td><button type="button" style="float: left;">파일 첨부</button></td>
					</tr>
				</table>
				<br>
				<button type="button" class="btn btn-default" style="float: right;">취소</button>
				<button type="button" class="btn btn-default" style="float: right;">등록</button>

			</div>

			<!--본문 내용 윗선까지만 넣기!!! -->

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