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
     width:70%;
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
   
   article {
   margin-top: 40px;
   margin-left: 0%;
   }
   
   label{
   width: 120px;
   }
   
   
   label, .form-control{
   display: block;
   }
   article .form-control{
   width: 87px;
   display: inline; 
   
   }
   input[name='name'], input[name='password'],input[name='email'], input[name='id'], 
   input[name='email']{
   width:300px;
   border: none;
   }
   input[name='post1'], input[name='post2']{
   width:142px;
   border: none;
   }
   input[name='address']{
   width:300px;
   border: none;
   }
   input[name='tel1'],input[name='tel2']{
   width:115px;
   border: none;
   }
   input[name='month'],input[name='day']{
   width:80px;
   border: none;
   }
   input[name='hp1'],input[name='hp2'],input[name='hp3']{
   width:90px;
   border: none;
   }
   input[name='tel1'],input[name='tel2'],input[name='tel3']{
   width:90px;
   border: none;
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
${userInfo }
<header>
<jsp:include page="../include/header.jsp"/>
</header>

     <!-- 사이드바 -->
    <nav>
     <jsp:include page="../include/sideBar.jsp"/>
    </nav>
   <!-- 사이드바 끝 -->

   <!-- 본문 -->
<div class="col-sm-8 page">
<jsp:include page="../include/myInfoHeader.jsp"/>
   <!-- 본문 section1  -->
    <section id="section1">
  
			<h4>
				<strong>가입정보</strong>
			</h4>
			<hr style="float: left; width: 70%;">
			<div class="clear"></div>
<article>
      <div class="form-group">
         <label for="name">아이디</label>
         <input type="text" class="form-control" id="name" name="id" value="${userInfo.id }" readonly="readonly">
      </div>
      <div class="form-group">
           <label for="name">이름</label>
            <input type="text" class="form-control" id="name" name="name" value="${userInfo.name }" readonly="readonly">
        </div>
        <div class="form-group">
           <label for="name">생일</label>
           <input type="text" class="form-control" id="year" name="year" value="#" readonly="readonly">년
           <input type="text" class="form-control" id="month" name="month" value="#" readonly="readonly">월
           <input type="text" class="form-control" id="day" name="day" value="#"  readonly="readonly">일
        </div>
      <div class="form-group">
         <label for="email">E-Mail</label> 
         <input type="text" class="form-control" id="email" name="email" value="${userInfo.email }" aria-describedby="emailHelp"  readonly="readonly"> 
      
            <span id="emailHelp" class="form-text text-muted" style="display: none;"  readonly="readonly">올바른 이메일 주소를 입력하세요.</span>
      </div>
      <div class="form-group" id="address">
           <label for="name">주소</label>
           <input type="text" class="form-control" id="post1" name="post1" value="#" readonly="readonly"> -
           <input type="text" class="form-control" id="post2" name="post2" value="#" readonly="readonly">
           <br>
           <label for="" style="visibility:hidden; margin-top: 3%;"></label>
         
           
           <input type="text" class="form-control" id="address" name="address" value="#" readonly="readonly">
        </div>
         <!-- style="margin-left: 11.3%;" -->
        <div class="form-group">
           <label for="name">전화번호</label>
           <input type="text" class="form-control" id="tel1" name="tel1" readonly="readonly" value="#"> -
           <input type="text" class="form-control" id="tel2" name="tel1" readonly="readonly" value="#"> -
           <input type="text" class="form-control" id="tel3" name="tel2" readonly="readonly" value="#">
        </div>
        <div class="form-group">
           <label for="name">핸드폰번호</label>
           <input type="" class="form-control" id="hp1" name="hp1" value="010" readonly="readonly" value="#"> -
           <input type="text" class="form-control" id="hp2" name="hp2" readonly="readonly" value="#"> -
           <input type="text" class="form-control" id="hp3" name="hp3" readonly="readonly" value="#">
        </div>
        <br>
        <div class="form-group" id="moddel"><!-- style=" width:28%;" -->
        <a href="myInfoModify.jsp"><button class="btn btn-primary" >수정</button></a>
        <a href="#myModal" data-toggle="modal"><button type="button" class="btn btn-primary" >탈퇴</button></a>
        </div>
        </article>
      </section>
    <!-- 본문 끝 -->
 
 
 <!-- 탈퇴 모달 시작 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">waring</h4>
      </div>
      <div class="modal-body">
      <p>정말 탈퇴 하시겠습니까?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary">탈퇴하기</button>
      </div>
    </div> <!-- 모달 콘텐츠 -->
  </div> <!-- 모달 다이얼로그 -->
</div> <!-- 모달 전체 윈도우 -->
 
 
</div>

<!-- footer -->
<footer class="container-fluid navbar-absolute-bottom2" id="foot-bottom">
   <div class="clear"></div>
   <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
<!-- footer 끝 -->

</body>
</html>