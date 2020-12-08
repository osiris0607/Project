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

${sList }
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

				<table class="table" style="">
					<thead>
						<tr>
							<th>Contents</th>
							<th>Date</th>
						</tr>
					</thead>
					<tr>

						<td><a href="#">딱히 생일이라서 신난것은 아니지만 오늘이 생일이기에 열심히 프로젝트를
								해본다</a></td>
						<td style="float: right;">2020/11/24</td>
					</tr>
					<tr>

						<td>딱히 생일이라서 신난것은 아니지만 오늘이 생일이기에 열심히 프로젝트를 해본다</td>
						<td style="float: right;">2020/11/24</td>
					</tr>
					<tr>

						<td>딱히 생일이라서 신난것은 아니지만 오늘이 생일이기에 열심히 프로젝트를 해본다</td>
						<td style="float: right;">2020/11/24</td>
					</tr>
					<tr>

						<td>딱히 생일이라서 신난것은 아니지만 오늘이 생일이기에 열심히 프로젝트를 해본다</td>
						<td style="float: right;">2020/11/24</td>
					</tr>
					<tr>

						<td>딱히 생일이라서 신난것은 아니지만 오늘이 생일이기에 열심히 프로젝트를 해본다</td>
						<td style="float: right;">2020/11/24</td>
					</tr>
					<tr>

						<td>생일에도 일하는 현대 사회인들의 처참한 삶에 대한 고뇌</td>
						<td style="float: right;">2020/11/24</td>
					</tr>
					<tr>
						<td>생일에도 일하는 현대 사회인들의 처참한 삶에 대한 고뇌</td>
						<td style="float: right;">2020/11/24</td>
					</tr>
					<tr>
						<td>생일에도 일하는 현대 사회인들의 처참한 삶에 대한 고뇌</td>
						<td style="float: right;">2020/11/24</td>
					</tr>
					<tr>
						<td>생일에도 일하는 현대 사회인들의 처참한 삶에 대한 고뇌</td>
						<td style="float: right;">2020/11/24</td>
					</tr>
					<tr>
						<td>생일에도 일하는 현대 사회인들의 처참한 삶에 대한 고뇌</td>
						<td style="float: right;">2020/11/24</td>
					</tr>
					<tr>

						<td>오늘부터 생일에는 정기휴가권으로 3박 4일은 줘야한다 ㅇㄱㄹㅇ ㅋㅈ?ㅇㅇㅋㅈ</td>
						<td style="float: right;">2020/11/24</td>
					</tr>
					<tr>

						<td>오늘부터 생일에는 정기휴가권으로 3박 4일은 줘야한다 ㅇㄱㄹㅇ ㅋㅈ?ㅇㅇㅋㅈ</td>
						<td style="float: right;">2020/11/24</td>
					</tr>
					<tr>

						<td>오늘부터 생일에는 정기휴가권으로 3박 4일은 줘야한다 ㅇㄱㄹㅇ ㅋㅈ?ㅇㅇㅋㅈ</td>
						<td style="float: right;">2020/11/24</td>
					</tr>
					<tr>

						<td>오늘부터 생일에는 정기휴가권으로 3박 4일은 줘야한다 ㅇㄱㄹㅇ ㅋㅈ?ㅇㅇㅋㅈ</td>
						<td style="float: right;">2020/11/24</td>
					</tr>
					<tr>

						<td>오늘부터 생일에는 정기휴가권으로 3박 4일은 줘야한다 ㅇㄱㄹㅇ ㅋㅈ?ㅇㅇㅋㅈ</td>
						<td style="float: right;">2020/11/24</td>
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