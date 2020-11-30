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
    
  </style>
</head>
${userInfo }
<body>
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