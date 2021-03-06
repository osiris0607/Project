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
    
    /* 사이드바 */
    .sidenav {
      position: fixed;
      width: 15%;
      height: 50%;
      margin-left: 17%;
      margin-top:140px;
      z-index: 10;
    }
    #subhead{
	font-size: 22px;
	margin-top: 15%;
	margin-left: 20%;
    }
    .sidenav-bar{
    list-style: none;
    margin-top: 20px;
    margin-bottom: 20px;
    }
    .sidenav-bar li{
    left:-40px;
	padding-bottom: 10px;
	padding-top: 10px;
    }
    .sidenav-bar a{
    margin-left: 10%;
	color: gray;
    }
    
    .sidenav-bar li, .sidenav-bar a{
    vertical-align: middle;
    }
    .sidenav-bar a:hover{
    color: green;
    text-decoration:none;
    font-weight:bold;
    opacity:10;
    }
  </style>
</head>
<body>
  	<!-- 사이드바 -->
    <nav class="sidenav">
      <h3 id="subhead"><strong>MENU</strong></h3>
      <div class="line"></div>
      <ul class="sidenav-bar">
        <li><a href="/web/view/admin/adminNoticeMain.jsp">공지사항</a></li>
        <li><a href="/web/view/admin/adminOrderMain.jsp">주문관리</a></li>
        <li><a href="/web/viewUserList.do">회원관리</a></li>
        <li><a href="/web/viewSellerList.do">판매자관리</a></li>
        <li><a href="/web/view/admin/adminAnswer.jsp">1:1문의관리</a></li>
      </ul>
    </nav>
	<!-- 사이드바 끝 -->
</body>
</html>