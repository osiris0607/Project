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
	
	form {
	margin-top: 40px;
	margin-left: 25%;
	}
	
	label{
	width: 120px;
	}
	
	
	label, .form-control{
	display: block;
	}
	form .form-control{
	width: 87px;
	display: inline; 
	
	}
	input[name='cname'], input[name='password'],input[name='company'] {
	width:300px;
	}
	input[name='id']{
	width:220px;
	}
	input[name='post1'], input[name='post2']{
	width:104px;
	}
	input[name='address']{
	width:300px;
	}
	input[name='tel1'],input[name='tel2']{
	width:115px;
	}
	input[name='email1'],input[name='email2']{
	width:140px;
	}
	input[name='month'],input[name='day']{
	width:80px;
	}
	input[name='hp1'],input[name='hp2'],input[name='hp3']{
	width:90px;
	}
	input[name='cp_num3']{
	width:94px;
	}
	
	.text-center{
	width: 20%;
	margin: auto auto;
	}
	
	pre{
	width: 90%;
	display: block;
	margin-left: auto;
	}	

  
</style>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/web/js/bootstrap.min.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script type="text/javascript">
$(function(){
	
	$("button#idck").click(function(){
		var id=$("input[name='id']");
		if(id.val().length==0){
			alert('아이디를 입력하세요.');
			return false;
		} //id 미입력시 false
		$.ajax({
			url:'/web/sellerIdCheck.do',
			dateType:'text',
			type:'POST',
			data:{id:id.val()},
			success:function(v){
				if(v=='fail'){
					alert('사용 중인 ID입니다.');
					$("input#idcb").prop("checked", false);
				} else if(v=='success'){
					alert('사용 가능한 ID입니다.');
					$("input#idcb").prop("checked", true);
				}
			},error:function(){
				alert('error');
			}
		});//id중복체크, 안하면 가입안됨.
	});//id끝
	
	$("input[lang='password']").keyup(function(){
		if($("input#password").val()==$("input#passwordck").val()){
			$("span#pwsp").html("<font color=green>일치합니다.</font")
			$("input#pwcb").prop("checked", true);
		} else if($("input#password").val()!=$("input#passwordck").val()){
			$("span#pwsp").html("<font color=red>불일치합니다.</font>")
			$("input#pwcb").prop("checked", false);
		}
	});//비밀번호 일치확인 
	
	$("input[name='cp_num']").keyup(function(){
		var cn1=$("input#cp_num1");
		var cn2=$("input#cp_num2");
		var cn3=$("input#cp_num3");
		if(cn1.val().length>3){
			cn1.val(cn1.val().substring(0,3));
		}
		if(cn2.val().length>2){
			cn2.val(cn2.val().substring(0,2));
		}
		if(cn3.val().length>5){
			cn3.val(cn3.val().substring(0,5));
		}		
		$("input#num").val(cn1.val()+cn2.val()+cn3.val());
	}); //사업자번호 글자수 제한 및 통합
	
	$("button#numck").click(function(){
		var num=$("input#num");
		if(num.val().length!=10){
			alert('올바른 사업자번호가 아닙니다.');
			return false;
		}
		$.ajax({
			url:'/web/sellerNumCheck.do',
			dateType:'text',
			type:'POST',
			data:{num:num.val()},
			success:function(v){
				console.log(v);
				if(v=='fail'){
					alert('이미 가입한 사업자번호입니다.');
					$("input#numcb").prop("checked", false);
					//8158101244
				} else if(v=='success'){
					alert('가입 가능한 사업자번호입니다.');
					$("input#numcb").prop("checked", true);
				}
			},error:function(){
				alert('error');
			}
		});
	});//사업자번호 중복 확인
	
	$("input[lang='email']").keyup(function(){
		var em1=$("input#email1");
		var em2=$("input#email2");
		$("input#email").val(em1.val()+'@'+em2.val());
	}); //email값 통합
	
	$("button#searchAddr").click(function(){
		window.open("address.jsp","address","left=100,top=50,width=400,height=381");
	}); //주소 검색창 오픈
	
	$("select#order").click(function(){
		var tel0=$("select#order option:selected");
		var tel1=$("input#tel1");
		var tel2=$("input#tel2");
		
		$("input#tel").val(tel0.val()+tel1.val()+tel2.val());
	}); //지역번호 선택 적용
	
	$("input[lang='tel']").keyup(function(){
		var tel0=$("select#order option:selected");
		var tel1=$("input#tel1");
		var tel2=$("input#tel2");
		if(tel1.val().length>4){
			tel1.val(tel1.val().substring(0,4));
		}
		if(tel2.val().length>4){
			tel2.val(tel2.val().substring(0,4));
		}
		$("input#tel").val(tel0.val()+tel1.val()+tel2.val());
	});//전화번호 글자수 제한 및 통합
	
	$("input[lang='cp']").keyup(function(){
		var hp1=$("input#hp1");
		var hp2=$("input#hp2");
		var hp3=$("input#hp3");
		
		if(hp1.val().length>3){
			hp1.val(hp1.val().substring(0,3));
		}
		if(hp2.val().length>4){
			hp2.val(hp2.val().substring(0,4));
		}
		if(hp3.val().length>4){
			hp3.val(hp3.val().substring(0,4));
		}
		$("input#cp").val(hp1.val()+hp2.val()+hp3.val());
	}); //휴대전화 글자수 제한 및 통합
	
	$("input#cball").click(function(){
		var chk = $(this).is(":checked");//.attr('checked');
        if(chk) $(".cb").prop('checked', true);
        else  $(".cb").prop('checked', false);
	}); //약관 동의 개별선택으로 모두 선택하면 전체 동의에 체크 아닐시 해제
	
	$("input.cb").click(function(){
		if( $("input#cb1").is(":checked")==true && $("input#cb2").is(":checked")==true){
			$("input#cball").prop('checked', true);
		} else {
			$("input#cball").prop('checked', false);
		}
	}) //약관 전체 동의 구현
	
	$("button#cancle").click(function(){
		document.location.href='/web/view/login_toggleTap.jsp';	
	}); //취소누르면 로그인화면으로
		
	$("button#send").click(function(){
		if($("input#idcb").is(":checked")==false){
			alert('ID 중복 확인이 필요합니다.');
		} else if($("input#password").val().length==0){
			alert('Password를 입력하세요');
		} else if($("input#pwcb").is(":checked")==false){
			alert('Password를 확인하세요');
		} else if($("input#name").val().length==0){
			alert('회사명을 입력하세요');
		} else if($("input#numcb").is(":checked")==false){
			alert('사업자번호 중복 확인이 필요합니다.');
		} else if($("input#rep").val().length==0){
			alert('담당자명을 입력하세요');
		} else if($("input#email1").val().length==0 || $("input#email2").val().length==0){
			alert('Email을 입력하세요');
		} else if($("input#hp2").val().length==0 || $("input#hp3").val().length==0){
			alert('휴대전화를 입력하세요');
		} else if( $("input#cb1").is(":checked")==false || $("input#cb2").is(":checked")==false){
			alert('약관에 동의하세요.')
		} else {
			alert('성공적으로 가입되셨습니다.');
			$("form#sjfrm").submit();
		} // 필수정보 입력 안하면 가입안되게
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
  
  <h3 style="text-align: center;" id="head">판매 회원가입</h3>

<form action="/web/sellerJoin.do" id="sjfrm" name="sjfrm" method="post">
      <div class="form-group">
         <label for="name">아이디</label>
         <input type="text" class="form-control" id="id" name="id" placeholder="아이디">
		 <button type="button" id="idck" name="idck">중복확인</button>
		 <input type="checkbox" hidden="hidden" id="idcb" name="idcb">
      </div>
      <div class="form-group">
         <label for="password">비밀번호</label>
         <input type="password" class="form-control" id="password" name="password" lang="password" placeholder="비밀번호">
      </div>
      <div class="form-group">
         <label for="password">비밀번호 확인</label>
         <input type="password" class="form-control" id="passwordck" name="passwordck" lang="password" placeholder="비밀번호 확인">
         <span id="pwsp"></span>
         <input type="checkbox" hidden="hidden" id="pwcb" name="pwcb">
      </div>
      <div class="form-group">
           <label for="name">회사명</label>
            <input type="text" class="form-control" id="name" name="cname" placeholder="회사명">
        </div>
        <div class="form-group">
           <label for="name">사업자등록번호</label>
           <input type="text" class="form-control" id="cp_num1" name="cp_num"> -
           <input type="text" class="form-control" id="cp_num2" name="cp_num"> -
           <input type="text" class="form-control" id="cp_num3" name="cp_num">
           <button type="button" id="numck" name="numck">중복확인</button>
           <input type="checkbox" hidden="hidden" id="numcb" name="numcb">
           <input type="hidden" class="form-control" id="num" name="cnum">
        </div>
      <div class="form-group">
           <label for="name">담당자명</label>
            <input type="text" class="form-control" id="rep" name="rep" placeholder="이름">
        </div>
      <div class="form-group">
         <label for="email">E-Mail</label> 
         <input type="text" class="form-control" id="email1" name="email1" lang="email" placeholder="Email Id" aria-describedby="emailHelp">@ 
         <input type="text" class="form-control" id="email2" name="email2" lang="email" placeholder="Email Addr" aria-describedby="emailHelp">

         <input type="text" class="form-contorl" id="email" name="email">
      </div>
     <div class="form-group">
           <label for="name">회사 주소</label>
           <input type="text" class="form-control" id="post1" name="post1"> -
           <input type="text" class="form-control" id="post2" name="post2">
           <button type="button" id="searchAddr">주소검색</button>
           <br>
           <label for="" style="visibility:hidden;"></label>
           <input type="text" class="form-control" id="address" name="address" placeholder="주소" readonly="readonly">
        </div>
        <div class="form-group">
           <label for="name">전화번호</label>
              <select id="order" name="order">
                 <option value="02">02</option>
                 <option value="031">031</option>
                 <option value="032">032</option>
                 <option value="033">033</option>
                 <option value="041">041</option>
                 <option value="042">042</option>
                 <option value="043">043</option>
                 <option value="044">044</option>
                 <option value="051">051</option>
                 <option value="052">052</option>
                 <option value="053">053</option>
                 <option value="054">054</option>
                 <option value="055">055</option>
                 <option value="061">061</option>
                 <option value="062">062</option>
                 <option value="063">063</option>
                 <option value="064">064</option>
             </select> -
           <input type="text" class="form-control" id="tel1" name="tel1" lang="tel"> -
           <input type="text" class="form-control" id="tel2" name="tel2" lang="tel">
           <input type="text" id="tel" name="tel">
        </div>
        <div class="form-group">
           <label for="name">핸드폰번호</label>
           <input type="text" class="form-control" id="hp1" name="hp1" lang="cp" value="010" > -
           <input type="text" class="form-control" id="hp2" name="hp2" lang="cp"> -
           <input type="text" class="form-control" id="hp3" name="hp3" lang="cp">
           <input type="text" id="cp" name="cp">
           
        </div>
        
        <div class="form-group">
           <div style="height: 120px; background-color: #eee; width: 65%;" >
           <ul><pre id="pre"><input type="checkbox" id="cball" value="all_agree"><b>전체 약관 동의하기</b></pre>
 					 <li style="list-style: none;"><input type="checkbox" class="cb" id="cb1">'이용약관'에 동의   <a href="#">이용약관 보기</a></li>
 					 <li style="list-style: none;"><input type="checkbox" class="cb" id="cb2">'개인정보 수집 및 이용안내'에 동의   <a href="#">이용약관 보기</a></li>
				</ul></div>
        </div>
      <!-- 
      <div class="form-group">
         <label for="message">Message</label>
         <textarea rows="10" cols="100" class="form-control" id="message" name="message" placeholder="Message" aria-describedby="messageHelp"></textarea>
         <span id="messageHelp" class="form-text text-muted" style="display: none;">Please enter a message.</span>
      </div>
       -->
   </form>
     <div class="text-center">
         <button type="submit" id="send" class="btn btn-primary" style="background-color: #eee; color: gray; border: 0px solid red;">가입</button>
         <button type="submit" id="cancle" class="btn btn-primary" style="background-color: #eee; color: gray; border: 0px solid red;">취소</button>
      </div>
       <div id="clear"></div>


		
</div><!-- .page -->
</main>
<footer>
  <div class="line"></div>	
  <div class="clear"></div>
<jsp:include page="../include/footer.jsp" /> 
</footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/web/js/bootstrap.min.js"></script>

</body>
</html>