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
    width: 60%;
     position: relative;
     margin-top: 60px;
     margin-bottom: 400px;
     margin-left: 30%;
    }
    section{
     margin-bottom: 8%;
    }
    
    /* footer */
      #foot-bottom{
 /*    position: absolute;
   bottom: 0;     */
    }
    
    
   /* background: pink; */
   }
   .clear{
   clear: both;
   }
   .line{
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
   input[name='name'], input[name='password'],input[name='email'] {
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
   input[name='month'],input[name='day']{
   width:80px;
   }
   input[name='hp1'],input[name='hp2'],input[name='hp3']{
   width:90px;
   }
   
   .text-center{
   width: 20%;
   margin: auto auto;
   }
   
   #address{
   display: 
   }
   
   #moddel{
   margin-left: 18%;
   }
   
   .btn btn-primary{
   margin-left: 10%;
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
		
		$('form').submit();

	});
})
</script>
  
</head>
<body>
<header>
<jsp:include page="header.jsp"/>
</header>

     <!-- 사이드바 -->
    <nav>
     <jsp:include page="sideBar.jsp"/>
    </nav>
   <!-- 사이드바 끝 -->

   <!-- 본문 -->
<div class="col-sm-8 page">
<jsp:include page="myInfoHeader.jsp"/>
   <!-- 본문 section1  -->
   <hr>
    <section id="section1">
  
  <h3 style="text-align: left;" id="head">회원정보 수정</h3>

 <form action="#" method="post" >
      <div class="form-group">
         <label for="name">아이디</label>
         <input type="text" class="form-control" id="name" name="id" value="#" readonly="readonly">
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
           <label for="name">이름</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="이름">
        </div>
         <div class="form-group">
           <label for="name">성별</label>
           <input type='radio' name='gender' value='male' />남성 
           <input type='radio' name='gender' value='female' />여성
        </div>
        <div class="form-group">
           <label for="name">생일</label>
           <input type="text" class="form-control" id="year" name="year" placeholder="년">년
           <input type="text" class="form-control" id="month" name="month" placeholder="월">월
           <input type="text" class="form-control" id="day" name="day" placeholder="일">일
        </div>
      <div class="form-group">
         <label for="email">E-Mail</label> 
         <input type="text" class="form-control" id="email1" name="email1" placeholder="Email Id" aria-describedby="emailHelp">@ 
         <input type="read" class="form-control" id="email2" name="email2" placeholder="readOnly" readonly="readonly">
         <select>
         
         <option>선택하세요</option>
         <option>naver.com</option>
         <option>daum.net</option>
         <option>google.com</option>
         <option onclick">직접 입력하기</option>
         </select>
            <span id="emailHelp" class="form-text text-muted" style="display: none;">올바른 이메일 주소를 입력하세요.</span>
      </div>
      <div class="form-group" id="address">
           <label for="name">주소</label>
           <input type="text" class="form-control" id="post1" name="post1"> -
           <input type="text" class="form-control" id="post2" name="post2">
           <button>주소검색</button>
           <br>
           <label for="" style="visibility:hidden; margin-top: 3%;"></label>
         
           
           <input type="text" class="form-control" id="address" name="address" placeholder="주소" readonly="readonly">
        </div>
         <!-- style="margin-left: 11.3%;" -->
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
        <br>
        <div class="form-group" id="moddel"><!-- style=" width:28%;" -->
        <button id="save" class="btn btn-primary" >변경</button>
        <button id="cancle" class="btn btn-primary" >취소</button>
        </div>
      </section>
    <!-- 본문 끝 -->
 
</div>

<!-- footer -->
<footer class="container-fluid navbar-absolute-bottom2" id="foot-bottom">
   <div class="clear"></div>
   <jsp:include page="footer.jsp"></jsp:include>
</footer>
<!-- footer 끝 -->

</body>
</html>