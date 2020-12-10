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
			<div class="table-responsive" style="width: 72%; margin-left: 20%;">

				<h4>
					<strong>판매자관리</strong>
				</h4>
				<hr style="float: left; width: 70%;">
				<br> <br> <br>
				<div class="clear"></div>



				<!-- 여기서부터 본문 내용 넣기 -->

				<form name="dateFrm" action="" method="post">
					<div class="form-group">
						<label for="date_label">가입기간</label> <input type='date'
							class="form-control" name='firstdate' value='2020-01-01' /> ~ <input
							type='date' class="form-control" name='seconddate'
							value='2020-11-14' />
					</div>
					<div class="form-group">
						<label for="date_label">상세조건</label>
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown">
								업체명 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">담당자명</a></li>
								<li><a href="#">사업자등록번호</a></li>
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
								<th>업체명</th>
								<th>사업자등록번호</th>
								<th>담당자명</th>
								<th>연락처</th>
								<th>이메일</th>
								<th>가입일자</th>
							</tr>
						</thead>
						<c:forEach var="i" items="${sList }" varStatus="cnt">
						<tbody>
						<tr>
							<td>${i.name }</td>
							<td>${i.num }</td>
							<td>${i.rep }</td>
							<td>${i.cp }</td>
							<td>${i.email }</td>
							<td>${i.regdate }</td>
						</tr>
						
						</tbody>
						</c:forEach>
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