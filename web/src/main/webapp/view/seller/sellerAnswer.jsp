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

table span div{
border: 0px #eee solid;
background-color: #eee;
padding: 4px;
width: 50%;
border-radius: 3px;
text-align: center;
font-size: 12px;
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
			<div class="table-responsive" style="width: 70%; margin-left: 20%;">

				<h4>
					<strong>문의관리</strong>
				</h4>
				<hr style="float: left; width: 70%;">
				<br> <br> <br>
				<div class="clear"></div>



				<!-- 여기서부터 본문 내용 넣기 -->

				<div>
					<table class="table">
						<thead>
							<tr>
								<th>문의번호</th>
								<th>문의유형</th>
								<th>상품명</th>
								<th>제목</th>
								<th>아이디</th>
								<th>문의일자</th>
								<th>처리상태</th>
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
							<td><span><div>완료</div></span></td>
						</tr>
						<tr>
							<td>2</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><span><div>미완료</div></span></td>
						</tr>
						<tr>
							<td>3</td>
							<td></td>
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