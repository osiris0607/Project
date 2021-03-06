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
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */

    .clear{
    clear: both;
    }
    .line{
    margin-top: 10%;
    margin-left: 20%;
    width: 60%;
    border-bottom: #ccc 1px solid; 
    }
    
    /* 본문 */
    .page {
    position: absolute;
    margin-left:10%;
    /* left:10%; */
    }
    section{
     margin-bottom: 8%;
    }
    
    .loginBox{
    position: relative;
    left: 38%;
    width:26%;
    height:300px;
    background-color: #eee;
    text-align: center;
    padding-top: 2%;
     margin-top: 8%;
    
    }

    
    form #id_save {
    float: left;
	margin-left: 14%;
    }
    .join{
	float: right;
	margin-right: 24%;
	}
    
    
</style>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/web/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){

	
	$("input#adminLogin").click(function(){
		var id = $("input[name='adminId']");
		var pw = $("input[name='adminPw']");
		console.log(id.val() + ' ' + pw.val());

		if(id.val().length==0 || pw.val().length==0){
			  alert('아이디 또는 비밀번호를 확인해주세요!');
			  id.val('');
			  pw.val('');
			  
			  return  false;
		  }
		if(id.val() =='admin' && pw.val() == 'admin'){
			
			 $.ajax({
				url:'/web/adminLogin.do',
				dataType:'text',
				type:'post',
				data:{id:id.val()},
				success:function(v){
					console.log(v);
					document.location.href='/web/view/admin/adminNoticeMain.jsp';

				},
				error:function(){
					alert('ERROR');
				}
				
			 });
		}
	});
	
	
});
</script>

</head>
<body>
<header>
<jsp:include page="../include/adminHeader.jsp"/>
</header>


   <!-- 본문 -->
<!-- <div class="col-sm-8 page"> -->
   <!-- 본문 section1  -->
    <div class="loginBox">  
    <div class="tab-pane">
     	 <h3><strong>관리자</strong></h3><br>
			<form action="#" name="adminRegistForm">
				<div class="form-div" >
				<input type="text" id="adminId" name="adminId" autofocus="autofocus" placeholder="ID" style="width: 250px;"><br>
				<input type="password" id="adminPw" name="adminPw" placeholder="Password" style="width: 250px;"><br>
				<br>
				<input type="checkbox" value="id_save">아이디저장
				<!-- <a href="#" class="join">회원가입</a> -->
				<br><br>
				</div>
				<input type="button" value="LOGIN" id="adminLogin">
		</form>
		</div>

	</div>
    <!-- 본문 끝 -->
 
<!-- </div> -->

<!-- footer -->
<footer class="container-fluid navbar-absolute-bottom2" id="foot-bottom">
   <div class="clear"></div>
   <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
<!-- footer 끝 -->

</body>
</html>