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

form{
margin-bottom: 4%;
}

label {
	width: 100px;
	margin-left: 20px;
}

label, .form-control {
	display: block;
}

form .form-control {
	width: 200px;
	display: inline;
	vertical-align: middle;
}
input[name='text']{
	width: 320px;
}

table tbody tr{
height: 40px;
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
			<div class="table-responsive" style="width: 72%; margin-left: 20%;">

				<h4>
					<strong>주문관리</strong>
				</h4>
				<hr style="float: left; width: 70%;">
				<br> <br> <br>
				<div class="clear"></div>



				<!-- 여기서부터 본문 내용 넣기 -->

				<form name="dateFrm" action="#" method="post">
					<div class="form-group">
						<label for="date_label">조회기간</label> <input type='date'
							class="form-control" name='firstdate' value='2020-01-01' /> ~ <input
							type='date' class="form-control" name='seconddate'
							value='2020-11-14' />
					</div>
					<div class="form-group">
						<label for="date_label">상세조건</label>
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown">
								상품번호 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">주문번호</a></li>
								<li><a href="#">구매자명</a></li>
							</ul>
						</div>
						<input type="text" class="form-control" name="text"placeholder="내용을 입력하세요">
						<button style="width: 80px; height: 32px; vertical-align: middle">검색</button>
					</div>
				</form>
				<div>
					<table class="table">
						<thead>
							<tr>
								<th>주문번호</th>
								<th>상품명</th>
								<th>구매자명</th>
								<th>주문일시</th>
								<th>수량</th>
								<th>주문상태</th>
							</tr>
						</thead>
						<tbody>
						<tr>
							<td>1</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>2</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>3</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						</tbody>
					</table>
				</div>
				<br><br>
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