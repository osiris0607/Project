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
     margin-top: 2%;
     margin-left: 20%;
    }
       section{
     margin-bottom: 8%;
    }
    
    
  </style>
</head>
<body>
<header>
<jsp:include page="../include/adminHeader.jsp"/>
</header>
     <!-- 사이드바 -->
    <nav>
     <jsp:include page="../include/adminSideBar.jsp"/>
    </nav>
   <!-- 사이드바 끝 -->

   <!-- 본문 -->
<jsp:include page="../include/adminSubHeader.jsp"/>
<div class="col-sm-8 page">
   <!-- 본문 section1  -->
    <section id="section1">

 <div class="table-responsive" style=" width: 60%; margin-left: 20%;">
 <!-- 여기서부터 본문 내용 넣기 -->
    <h4><strong>공지사항 등록</strong></h4>
	<hr style="float: left; width: 70%;">
		<div class="clear"></div>
<table class="table table-striped table-bordered" id="table" style="width: 100%;">
    
           
            <tr>
                <th width="30%">분류</th>
                <td>
                <select style="width: 50%; height: 30px; float: left;">
                  <option value="selected">선택하세요</option>
                  <option value="1">일반</option>
                  <option value="2">중요</option>
                  <option value="3">매뉴얼</option>
               </select>
                </td>
            </tr>
            <tr>
                <th width="10%">제목</th>
                <td><input type="text" id="txt1" style="width:550px;"></td>
            </tr>
            <tr>
                <th width="10%">공지사항 내용</th>
                <td><input type="text" id="txt1" style="width:550px; height:200px;"></td>
            </tr>
            <tr>
                <th width="10%">파일첨부</th>
                <td><button type="button" style="float: left;">파일 첨부</button></td>
            </tr>
        </table><br>
 <button type="button" class="btn btn-default" style="float: right;">취소</button>
 <button type="button" class="btn btn-default" style="float: right;">등록</button>
 
 <br>

 </div>   
      </section>
    <!-- 본문 끝 -->
 
</div>

<!-- footer -->
<footer class="container-fluid navbar-absolute-bottom2" id="foot-bottom">
   <div class="clear"></div>
   <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
<!-- footer 끝 -->

</body>
</html>