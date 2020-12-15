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
	margin-top: 2%;
	margin-left: 20%;
}

section {
	margin-bottom: 8%;
}

/* ////////// 위 css내용들 수정하지 말것 */
/* ////////// 아래 본문 내용의 css는 여기서부터 작성하기 */





</style>
</head>
<body>
	<header>
		<jsp:include page="../include/adminHeader.jsp" />
	</header>

	<!-- 사이드바 -->
	<nav>
		<jsp:include page="../include/adminSideBar.jsp" />
	</nav>
	<!-- 사이드바 끝 -->

	<!-- 본문 -->
	<jsp:include page="../include/adminSubHeader.jsp" />
	<div class="col-sm-8 page">
		<!-- 본문 section1  -->
		<section id="section1">
			<div class="table-responsive" style="width: 80%; margin-left: 20%;">

				<h4>
					<strong>공지사항</strong>
				</h4>
				<hr style="float: left; width: 70%;">
				<br>
				<br>
				<br>
			    <div class="clear"></div>


				<!-- 여기서부터 본문 내용 넣기 -->

				<a href="../admin/adminNotice.jsp"><button type="button"
						class="btn btn-default" style="float: right;">글쓰기</button></a> <br>
				<table class="table" style="">
					<thead>
						<tr>
							<th>Contents</th>
							<th>Date</th>
						</tr>
					</thead>
					<tr>

						<td><a href="#">시스템 교체에 따른 비밀번호 변경 안내</a></td>
						<td style="float: right;">2020/12/4</td>
					</tr>
					<tr>

						<td>모바일 및 PC 결제시스템 업그레이드</td>
						<td style="float: right;">2020/11/25</td>
					</tr>
					<tr>

						<td>서버 업데이트 및 점검 안내</td>
						<td style="float: right;">2020/11/24</td>
					</tr>
					<tr>

						<td>일부 서비스 일시 중단 안내</td>
						<td style="float: right;">2020/11/23</td>
					</tr>
					<tr>

						<td>서버 업데이트 및 점검 안내</td>
						<td style="float: right;">2020/11/23</td>
					</tr>
					<tr>

						<td>홈페이지 시스템 점검 공지 안내</td>
						<td style="float: right;">2020/11/22</td>
					</tr>
					<tr>
						<td>[Eat in] 시스템 변경 안내</td>
						<td style="float: right;">2020/11/21</td>
					</tr>
					<tr>
						<td>홈페이지 시스템 점검 공지 안내</td>
						<td style="float: right;">2020/11/21</td>
					</tr>
					<tr>
						<td>[Eat in] 판매자 매뉴얼용 공지사항 입니다.</td>
						<td style="float: right;">2020/11/19</td>
					</tr>
				</table>
				<hr>
				<br>

				<ul class="pager">
					<li><a href="#">Previous</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">6</a></li>
					<li><a href="#">7</a></li>
					<li><a href="#">8</a></li>
					<li><a href="#">9</a></li>
					<li><a href="#">10</a></li>

					<li><a href="#">Next</a></li>
				</ul>
			</div>

			<!--본문 내용 윗선까지만 넣기!!! -->
			<hr>

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