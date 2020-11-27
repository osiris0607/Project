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
body {
	padding-top: 20px;
}

.page {
	margin-top: 40px;
	margin-left: auto;
	width: 60%;
	margin: 0 auto;
	/* background: pink; */
}

.clear {
	clear: both;
}

.line {
	border-bottom: 0px #eee solid;
	margin-top: 60px;
	margin-bottom: 80px;
}

table {
	border: none;
}

#carttr td {
	vertical-align: middle;
}

#carttr td {
	vertical-align: middle;
}

.form-group {

}

label{
width: 100px;
}
	
.form-control{
display: block;
}

form .form-control{
width: 140px;
display: inline; 
vertical-align: middle;
}
form input[name='id'],input[name='msg'],input[name='id'],input[name='address']{
width: 270px;
}
form input[name='hp1'],input[name='hp2'],input[name='hp3']{
width: 80px;
}
form input[name='post1'],input[name='post2']{
width: 84px;
}

#table2 tr th, .form-control{
vertical-align: middle;
}

#table2 tr{
border: hidden;
}
#table2{
border: 1px solid #ccc;
}

</style>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/web/js/bootstrap.min.js"></script>
<script>
$(function(){
	$("button#pay").click(function(){	//form내용: 배송정보 
		alert('check');
	});
});

</script>
</head>
<body>
	<main> 
	<jsp:include page="../include/header.jsp" />
	<div class="page">
		<div class="line"></div>
		<div class="clear"></div>
		<h4 class="text-primary" style="text-align: center;">
			<img src="/web/img/process2.png" height="100px">
		</h4>
		<br>

		<h4 class="text-primary">주문상품 정보</h4>
		<br>
		<table class="table" style="width: 100%; height: 500px;">
			<tr>
				<td colspan="2"><br>
					<table class="table"
						style="text-align: center; width: 100%; border: none;">
						<thead style="padding-bottom: 10%;">
							<tr>
								<th style="padding-bottom: 2%; text-align: center;">상품이미지</th>
								<th style="padding-bottom: 2%; text-align: center;">상품정보</th>
								<th style="padding-bottom: 2%; text-align: center;">수량</th>
								<th style="padding-bottom: 2%; text-align: center;">가격</th>
								<th style="padding-bottom: 2%; text-align: center;">상품 금액</th>
							</tr>
						</thead>

						<tr id="carttr">
							<td style="margin: auto; text-align: center;"><img
								src="/web/img/대패.jpg" width="100" height="100"></td>
							<td style="margin: auto; text-align: center;">소곱창</td>
							<td style="margin: auto; text-align: center;">10개</td>
							<td style="margin: auto; text-align: center;">99,000원</td>
							<td style="margin: auto; text-align: center;">99,000원</td>
						</tr>


					</table>
				</td>
			</tr>
			
			<tr>
				<td height="120px"></td>
			</tr>

			<tr>
				<td colspan="0">
					<h4 class="text-primary" >배송정보 입력</h4><br>
					<form action="#" method="post">
					<table id="table1" class="table">
					
							<div class="form-group">
								<label for="name">받는분</label>
								<input type="text" class="form-control" id="name" name="id" placeholder="아이디">
							</div>
							<div class="form-group">
								<label for="addr">주소</label> 
								<input type="text" class="form-control" id="post1" name="post1"> - 
								<input type="text" class="form-control" id="post2" name="post2">
								<button type="button" class="btn btn-default">주소검색</button>
								<br>
								<label for="" style="visibility: hidden;"></label> 
								<input type="text" class="form-control" id="address" name="address"
												placeholder="주소" readonly="readonly">
							</div>
							<div class="form-group">
								<label for="hp">핸드폰번호</label> 
								<input type="text" class="form-control" id="hp1" name="hp1" value="010"> -
								<input type="text" class="form-control" id="hp2" name="hp2"> - 
								<input type="text" class="form-control" id="hp3" name="hp3">
							</div>
							<div class="form-group">
								<label for="message">배송메시지</label> 
								<input type="text" class="form-control" id="msg" name="msg" placeholder="배송메시지를 입력해주세요">
							</div>
						</table>
					</form>
				</td>
				
				<td colspan="2"><h4 class="text-primary">최종결제</h4> <br>
				
					<table class="table" id="table2" >
						<tr>
							<th style="width: 40px;">총금액</th>
								<td colspan="2">
									<input type="text" class="form-control" style="width: 180px; float: left;">
								</td>
						</tr>
						<tr>
							<th style="width: 30%">배송비</th>
								<td colspan="2">
									<input type="text"  class="form-control"  style="width: 180px; float: left;">
								</td>
						</tr>
						<tr>
							<th style="width: 30%">결제액</th>
								<td colspan="2">
									<input type="text" class="form-control" style="width: 180px; float: left;">
								</td>
						</tr>
						<tr id="carttr">
							<td colspan="2" style="height: 120px;">
								<button type="button" class="btn btn-default"
									style="margin-left: 15%;" id="pay">결제하기</button>
								<button type="button" class="btn btn-default">취소하기</button>
							</td>
						</tr>
					</table></td>

			</tr>

		</table>
		<br>


	</div>
	<!-- .page --> </main>
	<footer>
		<div class="line"></div>
		<div class="clear"></div>
		<jsp:include page="../include/footer.jsp" />
	</footer>

</body>
</html>