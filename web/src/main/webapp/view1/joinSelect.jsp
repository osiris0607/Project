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
	height: 500px;
	margin: auto auto;
	border: 0px #eee solid;
	}
  	.tab .sub-tab{
  	width: 34%;
  	margin-left: 100px;
  	margin-top: 10%;
  	height: 300px;
	border: 0px #eee solid;
	float: left;
	text-align: center;
  	}
  	.tab .sub-tab h3{
  	margin-top: 10%;
  	}
  	.tab .sub-tab button{
  	margin-top: 5%;
  	height: 40px;
  	border: 0px solid gray;
  	}
</style>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/web/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	
	
	
	
});
</script>

</head>
<body>
<main>
<jsp:include page="header.jsp" />
<div class="page">
<div class="clear"></div>
  
 <div class="tab">  
  <h2>회원가입</h2>
  	<div class="sub-tab">
  	<img alt="" src="/web/img/개인.png">
 		 <h3>개인 구매회원</h3>
 		 <p style="font: #eee small;" >만 14세 이상 가입 가능</p>
 		<a href="memberJoin.jsp" style="color: black;"><button style="width:40%;"><div style="background-color: #eee">회원가입</div></button></a>
  
  	</div>
  	<div class="sub-tab">
  	<img alt="" src="/web/img/사업자.png">
  	<h3>사업자 판매회원</h3>
 		 <p style="font: #eee small;">사업자등록증을 보유한 법인 가능</p>
 		<a href="sellerJoin.jsp" style="color: black;"><button style="width:40%;"><div style="background-color: #eee">회원가입</div></button></a>
  
  </div>

</div>
		
</div><!-- .page -->
  <div class="line"></div>	
</main>
<footer>
  <div class="clear"></div>
<jsp:include page="footer.jsp" /> 
</footer>

</body>
</html>