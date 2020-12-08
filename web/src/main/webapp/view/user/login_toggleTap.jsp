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
	width: 40%;
	margin: 0 auto;
	
	}
	input[type="text"] {
	margin-bottom: 6px;
	width: 80%;	
	}	
	input[type="password"] {
	margin-bottom: 6px;
	width: 80%;	
	}	
	input[type="button"] {
	margin-bottom: 6px;
	height: 40px;
	width: 80%;
	background: #eee;
	border: 0px solid gray;	
	}	
	.join{
	float: right;
	margin-right: 20%;
	}
	form{
	margin-top: 5%;
	margin-bottom: 20%
	}
  
</style>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/web/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	  $("input[name='user_login']").click(function(){
		  //console.log($("input[name='user_id']").val()+' '+$("input[name='user_pw']").val());
		  
		  var user_id=$("input[name='user_id']");
		  var user_pw=$("input[name='user_pw']");
		  
		  if(user_id.val().length==0 || user_pw.val().length==0){
			  alert('아이디 또는 비밀번호를 확인해주세요!');
			  user_id.val('');
			  user_pw.val('');
			  
			  return  false;
		  }
		  $.ajax({
			  url:'/web/userlogin.do',
			  dataType:'text',
			  type:'POST',
			  data:{id:user_id.val(), password:user_pw.val()},
			  success:function(v){
				  console.log(v);
				  
				  if(v=='sucess'){
					  document.location.href='/web/userMain.do';
				  } else {
					  alert('로그인 실패!');
				  }
			  }, error:function(){
				  alert('에러ㅔ어레얼에ㅓ에러에ㅓㄹ');
			  }
		  });
	  });
	  
	  $("input[name='seller_login']").click(function(){
		  //console.log($("input[name='id']").val()+' '+$("input[name='pw']").val());
		  
		  var id=$("input[name='seller_id']");
		  var pw=$("input[name='seller_pw']");
		  
		  if(id.val().length==0 || pw.val().length==0){
			  alert('아이디 또는 비밀번호를 확인해주세요!');
			  id.val('');
			  pw.val('');
			  
			  return  false;
		  }
		  $.ajax({
			  url:'/web/sellerlogin.do',
			  dataType:'text',
			  type:'POST',
			  data:{id:id.val(), password:pw.val()},
			  success:function(v){
				  console.log(v);
				  
				  if(v=='sucess'){
					  document.location.href='/web/sellerMain.do';
				  } else {
					  alert('로그인 실패!');
				  }
			  }, error:function(){
				  alert('에러ㅔ어레얼에ㅓ에러에ㅓㄹ');
			  }
		  });
	  });
});
</script>
</head>
<body>
<main>
<jsp:include page="../include/header.jsp" />
<div class="page">
<div class="clear"></div>
  <div class="line"></div>
  
 <div class="tab">  
    <ul class="nav nav-tabs">
      <li class="active"><a href="#home" data-toggle="tab">개인 회원</a></li>
      <li><a href="#tab1" data-toggle="tab">판매 회원</a></li>
    </ul>
   
  <div class="tab-content">
    <div class="tab-pane fade in active" id="home">
      <h3>개인 회원 </h3>
		<form action="#" name="#">
			<div class="form-div">
			<input type="text" autofocus="autofocus" placeholder="ID" id="user_id" name="user_id"><br>
			<input type="password"  placeholder="Password" id="user_pw" name="user_pw"><br>
			<br>
			<input type="checkbox" value="id_save">아이디저장<a href="memberJoin.jsp" class="join">회원가입</a>
			<br><br>
			</div>
			<input type="button" value="로그인" name="user_login">
		</form>
	</div>
    <div class="tab-pane fade" id="tab1">
      <h3>판매 회원 </h3>
		<form action="#" name="#">
			<div class="form-div">
			<input type="text" autofocus="autofocus" placeholder="ID" id="seller_id" name="seller_id"><br>
			<input type="password" placeholder="Password" id="seller_pw" name="seller_pw"><br>
			<br>
			<input type="checkbox" value="id_save">아이디저장<a href="sellerJoin.jsp" class="join">회원가입</a>
			<br><br>
			</div>
			<input type="button" value="로그인" name="seller_login">
		</form>
	
	</div>
</div>

</div>

		
</div><!-- .page -->
</main>
<footer>
  <div class="line"></div>	
  <div class="clear"></div>
<jsp:include page="../include/footer.jsp" /> 
</footer>

</body>
</html>