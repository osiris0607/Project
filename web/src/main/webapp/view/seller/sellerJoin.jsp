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
	input[name='name'], input[name='password'],input[name='company'] {
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
	$("button#save").click(function(){
		alert('check');
		$('form').submit();

	});
})
</script>
</head>
<body>
<main>
<jsp:include page="../include/header.jsp" />
<div class="page">
<div class="clear"></div>
  <div class="line"></div>
  
  <h3 style="text-align: center;" id="head">판매 회원가입</h3>

 <form action="#" method="post" >
      <div class="form-group">
         <label for="name">아이디</label>
         <input type="text" class="form-control" id="name" name="id" placeholder="아이디">
		 <button>중복확인</button>
      </div>
      <div class="form-group">
         <label for="password">비밀번호</label>
         <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호">
      </div>
      <div class="form-group">
         <label for="password">비밀번호 확인</label>
         <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호 확인">
      </div>
      <div class="form-group">
           <label for="name">회사명</label>
            <input type="text" class="form-control" id="company" name="company" placeholder="회사명">
        </div>
        <div class="form-group">
           <label for="name">사업자등록번호</label>
           <input type="text" class="form-control" id="cp_num1" name="cp_num1"> -
           <input type="text" class="form-control" id="cp_num2" name="cp_num2"> -
           <input type="text" class="form-control" id="cp_num3" name="cp_num3">
        </div>
      <div class="form-group">
           <label for="name">담당자명</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="이름">
        </div>
      <div class="form-group">
         <label for="email">E-Mail</label> 
         <input type="text" class="form-control" id="email1" name="email1" placeholder="Email Id" aria-describedby="emailHelp">@ 
         <input type="text" class="form-control" id="email2" name="email2" placeholder="Email Addr" aria-describedby="emailHelp">
      </div>
      <div class="form-group">
           <label for="name">회사 주소</label>
           <input type="text" class="form-control" id="post1" name="post1"> -
           <input type="text" class="form-control" id="post2" name="post2">
           <button>주소검색</button>
           <br>
           <label for="" style="visibility:hidden;"></label>
           <input type="text" class="form-control" id="address" name="address" placeholder="주소" readonly="readonly">
        </div>
        <div class="form-group">
           <label for="name">전화번호</label>
              <select name="order">
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
           <input type="text" class="form-control" id="tel1" name="tel1"> -
           <input type="text" class="form-control" id="tel2" name="tel2">
        </div>
        <div class="form-group">
           <label for="name">핸드폰번호</label>
           <input type="text" class="form-control" id="hp1" name="hp1" value="010"> -
           <input type="text" class="form-control" id="hp2" name="hp2"> -
           <input type="text" class="form-control" id="hp3" name="hp3">
        </div>
        
        <div class="form-group">
           <div style="height: 120px; background-color: #eee; width: 65%;" >
           <ul><pre id="pre"><input type="checkbox" value="all_agree"><b>전체 약관 동의하기</b></pre>
 					 <li style="list-style: none;"><input type="checkbox">'이용약관'에 동의   <a href="#">이용약관 보기</a></li>
 					 <li style="list-style: none;"><input type="checkbox">'개인정보 수집 및 이용안내'에 동의   <a href="#">이용약관 보기</a></li>
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
        <button type="submit" class="btn btn-primary" style="background-color: #eee; 
         			color: gray; border: 0px solid red;"
         			id="save" value="send">가입</button>
         <button class="btn btn-primary" style="background-color: #eee; color: gray; 
         			border: 0px solid red;" id="cancle">취소</button>      
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