<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>    

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet"> 
<link href="/web/css/kfonts2.css" rel="stylesheet">
<style>
	/* 공통css */
	body{
		padding-top: 20px;
	}	
	.page{
	margin-top: 40px;
	margin-left: auto;
	width:60%;
	margin:0 auto;
	/* background: pink; */
	}
	.clear{
	clear: both;
	}
	.line{
	border-bottom: 1px #eee solid;
	margin-top: 60px;
	margin-bottom:80px;
	}
	
	.tab {
	width: 100%;
	height: 400px;
	margin: 20% auto;
	border: 0px #eee solid;
	}
  	.tab .sub-tab{
  	width: 100%;
  	margin-top: 15px;
	border: 0px #eee solid;
	float: left;
	height: 80%;
	text-align: center;
	background-color: #e3e3e3;
  	}
  	.tab .sub-tab h3{
  	margin-top: 5%;
  	}
  	.tab .sub-tab h2{
  	margin-top: 5%;
  	}
  	.tab .sub-tab button{
  	margin-top: 5%;
  	height: 40px;
  	border: 0px solid gray;
  	background-color: white;
  	}
</style>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/web/js/bootstrap.min.js"></script>
</head>
<body>
<main>
<jsp:include page="../include/header.jsp" />
<div class="page">
<div class="clear"></div>

 <div class="tab">  
  	<div class="sub-tab">
		  <h2>회원가입이 <b style="color: red">완료</b> 되었습니다.</h2>
 		 <h3>${member.name }님의 가입을 축하드립니다. 로그인 후 이용해주세요.</h3>
 		<a href="main.jsp" style="color: black;"><button style="width:20%;"><div style="background-color: white">메인으로</div></button></a>
 		<a href="login_toggleTap.jsp" style="color: black;"><button style="width:20%;"><div style="background-color: white">로그인</div></button></a>
  </div>
</div>
		
</div><!-- .page -->
  <div class="line"></div>	
</main>
<footer>
  <div class="clear"></div>
<jsp:include page="../include/footer.jsp" /> 
</footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/web/js/bootstrap.min.js"></script>

</body>
</html>