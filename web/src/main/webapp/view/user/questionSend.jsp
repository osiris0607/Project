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

section {
	margin-bottom: 8%;
	width: 70%;
}

/* footer */
#foot-bottom {
	/*    position: absolute;
   bottom: 0;     */
	
}

/* background: pink; */
}
.clear {
	clear: both;
}

.line {
	border-bottom: 1px #eee solid;
	/*    margin-top: 0%;
   margin-bottom:10%;
   margin-left: 0%; */
	width: 100%;
}

form {
	margin-top: 40px;
	margin-left: 0%;
}

label {
	width: 120px;
}

label, .form-control {
	display: block;
}

form .form-control {
	width: 87px;
	display: inline;
}

input[name='name'], input[name='password'], input[name='email'] {
	width: 300px;
	border: none;
}

input[name='id'] {
	width: 220px;
	border: none;
}

input[name='post1'], input[name='post2'] {
	width: 104px;
	border: none;
}

input[name='address'] {
	width: 300px;
	border: none;
}

input[name='tel1'], input[name='tel2'] {
	width: 115px;
	border: none;
}

input[name='month'], input[name='day'] {
	width: 80px;
	border: none;
}

input[name='hp1'], input[name='hp2'], input[name='hp3'] {
	width: 90px;
	border: none;
}

#address {
	display:
}

.btn btn-primary {
	margin-left: 10%;
}

#table {
	width: 100%;
}

#table .tb-subject {
	width: 20%;
}

#table button {
	float: left;
	margin-left: 9%;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="../include/header.jsp" />
	</header>

	<!-- 사이드바 -->
	<nav>
		<jsp:include page="../include/sideBar.jsp" />
	</nav>
	<!-- 사이드바 끝 -->

	<!-- 본문 -->
	<div class="col-sm-8 page">
		<jsp:include page="../include/myInfoHeader.jsp" />
		<!-- 본문 section1  -->
		<section id="section1">
			<h4>
				<strong>1:1문의</strong>
			</h4>
			<hr style="float: left; width: 70%;">
			<table class="table table-striped table-bordered" id="table">
				<tr>
					<th class="tb-subject" width="30%">문의유형</th>
					<td><input type="checkbox" style="width: 50px">배송관련</input> <input
						type="checkbox" style="width: 50px">취소/교환/반품</input> <input
						type="checkbox" style="width: 50px">상품관련</input></td>
				</tr>
				<tr>
					<th class="tb-subject" width="10%">상품명</th>
					<td><input type="text" id="txt1" style="width: 550px;"></td>
				</tr>
				<tr>
					<th class="tb-subject" width="10%">제목</th>
					<td><input type="text" id="txt1" style="width: 550px;">
					</td>
				</tr>
				<tr>
					<th class="tb-subject" width="10%">내용</th>
					<td><input type="text" id="txt1"
						style="width: 550px; height: 200px;"></td>
				</tr>
				<tr>
					<th class="tb-subject" width="10%">파일첨부</th>
					<td><button type="button">파일 첨부</button></td>
				</tr>
			</table>
			<br>
			<button type="button" class="btn btn-default" style="float: right;">취소</button>
			<button type="button" class="btn btn-default" style="float: right;">등록</button>
	</div>
	<br>

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