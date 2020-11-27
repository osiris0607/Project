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
  
  .promotion_list {
    font-size: 0;
}
user agent stylesheet
div {
    display: block;
}
body {
    word-break: break-all;
}
body {
    font-family: "Apple SD Gothic Neo",'돋움',Dotum,sans-serif;
    font-size: 12px;
    color: #333;
}

ul, ol {
    list-style: none;
}
body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button, select {
    margin: 0;
    padding: 0;
}
user agent stylesheet
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.promotion_list {
    font-size: 0;
}
body {
    word-break: break-all;
}
body {
    font-family: "Apple SD Gothic Neo",'돋움',Dotum,sans-serif;
    font-size: 12px;
    color: #333;
}

.promotion_list li {
    display: inline-block;
}
body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button, select {
    margin: 0;
    padding: 0;
}
user agent stylesheet
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
ul, ol {
    list-style: none;
}
user agent stylesheet
ul {
    list-style-type: disc;
}
.promotion_list {
    font-size: 0;
}
body {
    word-break: break-all;
}
body {
    font-family: "Apple SD Gothic Neo",'돋움',Dotum,sans-serif;
    font-size: 12px;
    color: #333;
}
.promotion_list li a {
    display: block;
    overflow: hidden;
    width: 248px;
    height: 280px;
    border: 1px solid #f5f5f5;
    border-radius: 20px;
}
a {
    color: #333;
    text-decoration: none;
    cursor: pointer;
}
user agent stylesheet
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
user agent stylesheet
li {
    text-align: -webkit-match-parent;
}
ul, ol {
    list-style: none;
}
user agent stylesheet
ul {
    list-style-type: disc;
}
.promotion_list {
    font-size: 0;
}
body {
    word-break: break-all;
}
body {
    font-family: "Apple SD Gothic Neo",'돋움',Dotum,sans-serif;
    font-size: 12px;
    color: #333;
}

.promotion_list li a img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}
iframe, img {
    vertical-align: top;
}
img, fieldset, button {
    border: 0;
}
img[Attributes Style] {
    width: 248px;
    height: 280px;
}
a {
    color: #333;
    text-decoration: none;
    cursor: pointer;
}
user agent stylesheet
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
}
user agent stylesheet
li {
    text-align: -webkit-match-parent;
}
ul, ol {
    list-style: none;
}
user agent stylesheet
ul {
    list-style-type: disc;
}
.promotion_list {
    font-size: 0;
}
  
</style>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/web/js/bootstrap.min.js"></script>

</head>
<body>
<main>
<jsp:include page="../include/header.jsp" />
<div class="page">
<!--   <div class="clear"></div> -->
   <h3>이벤트</h3>
   <br><br>
  
  <!-- 기획전 해보자 -->
   <div class="promotion_list">
    <ul>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="3774_열정제작소 (노출지원)" data-gtm-index="1" data-gtm-link-type="EXHIBIT" data-gtm-link-value="3774" href="//front.wemakeprice.com/promotion/3774" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="1710" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/52/202011/23/esbp_bdeedqxlsven.jpg" width="248" height="280" alt="3774_열정제작소 (노출지원)">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5860_룰루랄라레저" data-gtm-index="2" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5860" href="//front.wemakeprice.com/promotion/5860" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="1745" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/23/202011/24/esbp_c48ombihnhsq.jpg" width="248" height="280" alt="5860_룰루랄라레저">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5613_끝까지 판다" data-gtm-index="3" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5613" href="//front.wemakeprice.com/promotion/5613" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="1769" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/22/202011/24/esbp_ynki7zdty0rl.jpg" width="248" height="280" alt="5613_끝까지 판다">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5636_가치있는 소비" data-gtm-index="4" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5636" href="//front.wemakeprice.com/promotion/5636" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="1796" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/33/202011/23/esbp_i477yrrebvgu.jpg" width="248" height="280" alt="5636_가치있는 소비">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5732_쀼산 수산의 세계" data-gtm-index="5" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5732" href="//front.wemakeprice.com/promotion/5732" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="1898" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/38/202011/20/esbp_nmivmopgmqlj.jpg" width="248" height="280" alt="5732_쀼산 수산의 세계">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="6709_따따블 SHOW" data-gtm-index="6" data-gtm-link-type="EXHIBIT" data-gtm-link-value="6709" href="//front.wemakeprice.com/promotion/6709" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="1934" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/35/202011/20/esbp_all2ckmkpceh.png" width="248" height="280" alt="6709_따따블 SHOW">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="6725_MSI(노출지원)" data-gtm-index="7" data-gtm-link-type="EXHIBIT" data-gtm-link-value="6725" href="//front.wemakeprice.com/promotion/6725" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="1963" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/34/202011/20/esbp_luepnn8kjdiz.jpg" width="248" height="280" alt="6725_MSI(노출지원)">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="6148_광주경제고용진흥원" data-gtm-index="8" data-gtm-link-type="EXHIBIT" data-gtm-link-value="6148" href="//front.wemakeprice.com/promotion/6148" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="1986" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/19/202011/19/esbp_1dto2v2waqfw.png" width="248" height="280" alt="6148_광주경제고용진흥원">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5345_부산시청" data-gtm-index="9" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5345" href="//front.wemakeprice.com/promotion/5345" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="2409" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/18/202011/19/esbp_jjjl9utr3h6e.png" width="248" height="280" alt="5345_부산시청">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="6766_서울슈퍼위크" data-gtm-index="10" data-gtm-link-type="EXHIBIT" data-gtm-link-value="6766" href="//front.wemakeprice.com/promotion/6766" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="2467" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/50/202011/23/esbp_jdgvi7hktixz.png" width="248" height="280" alt="6766_서울슈퍼위크">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="6619_2020 연말준비" data-gtm-index="11" data-gtm-link-type="EXHIBIT" data-gtm-link-value="6619" href="//front.wemakeprice.com/promotion/6619" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="2518" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/36/202011/18/esbp_hn1pclvzzg80.png" width="248" height="280" alt="6619_2020 연말준비">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="6147_제주에서놀멍쉬멍" data-gtm-index="12" data-gtm-link-type="EXHIBIT" data-gtm-link-value="6147" href="//front.wemakeprice.com/promotion/6147" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="2572" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/35/202011/18/esbp_smejydj57v8i.png" width="248" height="280" alt="6147_제주에서놀멍쉬멍">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="6624_슈퍼끼어로(~12/24)" data-gtm-index="13" data-gtm-link-type="EXHIBIT" data-gtm-link-value="6624" href="//front.wemakeprice.com/promotion/6624" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="172690" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/34/202011/13/esbp_ky3ljxirheuy.png" width="248" height="280" alt="6624_슈퍼끼어로(~12/24)">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="6596_김해원정대" data-gtm-index="14" data-gtm-link-type="EXHIBIT" data-gtm-link-value="6596" href="//front.wemakeprice.com/promotion/6596" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="172745" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/24/202011/13/esbp_jrzbvwva0ey8.png" width="248" height="280" alt="6596_김해원정대">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="4041_국가스타인증팜 (~11/30" data-gtm-index="15" data-gtm-link-type="EXHIBIT" data-gtm-link-value="4041" href="//front.wemakeprice.com/promotion/4041" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="172776" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/44/202010/27/esbp_lovxmik9pe2h.jpg" width="248" height="280" alt="4041_국가스타인증팜 (~11/30">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5653_금산군 건강마켓" data-gtm-index="16" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5653" href="//front.wemakeprice.com/promotion/5653" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="172801" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/37/202011/06/esbp_egwlp9iajnqz.jpg" width="248" height="280" alt="5653_금산군 건강마켓">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="6434_경북청년농부의 꿈과 신선을 " data-gtm-index="17" data-gtm-link-type="EXHIBIT" data-gtm-link-value="6434" href="//front.wemakeprice.com/promotion/6434" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="172924" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/33/202011/06/esbp_tyvrrthfmvyj.jpg" width="248" height="280" alt="6434_경북청년농부의 꿈과 신선을 ">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="경기 투어패스" data-gtm-index="18" data-gtm-link-type="URL" data-gtm-link-value="https://front.wemakeprice.com/special/category/5001945" href="https://front.wemakeprice.com/special/category/5001945" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="172947" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/03/202011/05/esbp_7iyk125qj2rh.jpg" width="248" height="280" alt="경기 투어패스">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="6414_ 비즈렌탈파트(노출지원건)" data-gtm-index="19" data-gtm-link-type="EXHIBIT" data-gtm-link-value="6414" href="//front.wemakeprice.com/promotion/6414" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="172968" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/07/202011/03/esbp_af7j6dtzx0zc.jpg" width="248" height="280" alt="6414_ 비즈렌탈파트(노출지원건)">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="6356_농촌진흥청" data-gtm-index="20" data-gtm-link-type="EXHIBIT" data-gtm-link-value="6356" href="//front.wemakeprice.com/promotion/6356" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="172996" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/05/202011/03/esbp_w8edfsbat1ly.jpg" width="248" height="280" alt="6356_농촌진흥청">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="6423_충남의 모든것(노출지원)" data-gtm-index="21" data-gtm-link-type="EXHIBIT" data-gtm-link-value="6423" href="//front.wemakeprice.com/promotion/6423" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173018" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/55/202011/17/esbp_v8viagc6m68k.jpg" width="248" height="280" alt="6423_충남의 모든것(노출지원)">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="6131_우리 차 티타임~11/30" data-gtm-index="22" data-gtm-link-type="EXHIBIT" data-gtm-link-value="6131" href="//front.wemakeprice.com/promotion/6131" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173040" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/32/202010/28/esbp_xyedjegft2hc.jpg" width="248" height="280" alt="6131_우리 차 티타임~11/30">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5830_광주를 탐하다(~11/30)" data-gtm-index="23" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5830" href="//front.wemakeprice.com/promotion/5830" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173060" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/45/202010/26/esbp_yf6ylfcswvb1.jpg" width="248" height="280" alt="5830_광주를 탐하다(~11/30)">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="6148_광주를 주목하라" data-gtm-index="24" data-gtm-link-type="EXHIBIT" data-gtm-link-value="6148" href="//front.wemakeprice.com/promotion/6148" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173080" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/40/202010/23/esbp_v2gxsyewfqun.jpg" width="248" height="280" alt="6148_광주를 주목하라">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5547_전자랜드X위메프 제휴이벤트 " data-gtm-index="25" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5547" href="//front.wemakeprice.com/promotion/5547" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="176742" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/12/202010/23/esbp_ntntmwlh2clx.jpg" width="248" height="280" alt="5547_전자랜드X위메프 제휴이벤트 ">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5450_입안가득 바다내음(노출지원)" data-gtm-index="26" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5450" href="//front.wemakeprice.com/promotion/5450" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="176794" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/45/202009/15/esbp_gtpdpad18dxo.png" width="248" height="280" alt="5450_입안가득 바다내음(노출지원)">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="6187_사회적경제기업(노출지원)" data-gtm-index="27" data-gtm-link-type="EXHIBIT" data-gtm-link-value="6187" href="//front.wemakeprice.com/promotion/6187" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="176814" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/00/202010/21/esbp_wvchjczpbvgl.jpg" width="248" height="280" alt="6187_사회적경제기업(노출지원)">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5448_간편한끼쇼핑 (노출지원)" data-gtm-index="28" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5448" href="//front.wemakeprice.com/promotion/5448" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="176834" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/24/202010/30/esbp_f5fjzc6lxhv9.jpg" width="248" height="280" alt="5448_간편한끼쇼핑 (노출지원)">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5850_처음뵙겠습니다(노출지원)" data-gtm-index="29" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5850" href="//front.wemakeprice.com/promotion/5850" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173264" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/01/202010/13/esbp_o5fa0qujicqs.jpg" width="248" height="280" alt="5850_처음뵙겠습니다(노출지원)">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="4396_위메프오 배달용품 기획전" data-gtm-index="30" data-gtm-link-type="EXHIBIT" data-gtm-link-value="4396" href="//front.wemakeprice.com/promotion/4396" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173281" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/01/202010/14/esbp_xe3wuml6ze26.jpg" width="248" height="280" alt="4396_위메프오 배달용품 기획전">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="1079_낮저밤이" data-gtm-index="31" data-gtm-link-type="EXHIBIT" data-gtm-link-value="1079" href="//front.wemakeprice.com/promotion/1079" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173311" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/28/202008/14/esbp_ni2mbwij0hzs.png" width="248" height="280" alt="1079_낮저밤이">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5331_자연과 일상속의 제주" data-gtm-index="32" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5331" href="//front.wemakeprice.com/promotion/5331" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173336" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/20/202010/12/esbp_mvthdxf3psje.jpg" width="248" height="280" alt="5331_자연과 일상속의 제주">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5095_대한민국 농할" data-gtm-index="33" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5095" href="//front.wemakeprice.com/promotion/5095" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173353" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/39/202008/12/esbp_gexnqmykx2cy.png" width="248" height="280" alt="5095_대한민국 농할">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5843_충남맛원정대" data-gtm-index="34" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5843" href="//front.wemakeprice.com/promotion/5843" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173368" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/53/202010/05/esbp_7psrubolfqnm.jpg" width="248" height="280" alt="5843_충남맛원정대">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5804_전북을 맛보다" data-gtm-index="35" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5804" href="//front.wemakeprice.com/promotion/5804" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173386" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/44/202009/18/esbp_y9dqb4dys2yc.png" width="248" height="280" alt="5804_전북을 맛보다">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="3793_어디까지팔아봤니2" data-gtm-index="36" data-gtm-link-type="EXHIBIT" data-gtm-link-value="3793" href="//front.wemakeprice.com/promotion/3793" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173403" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/43/202009/18/esbp_1t7x9jxd9z1t.png" width="248" height="280" alt="3793_어디까지팔아봤니2">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="5775_수산가공품(노출지원)" data-gtm-index="37" data-gtm-link-type="EXHIBIT" data-gtm-link-value="5775" href="//front.wemakeprice.com/promotion/5775" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173422" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/17/202009/15/esbp_xy0wdgmqhn4y.png" width="248" height="280" alt="5775_수산가공품(노출지원)">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="3847_경북을담다(~12/31)" data-gtm-index="38" data-gtm-link-type="EXHIBIT" data-gtm-link-value="3847" href="//front.wemakeprice.com/promotion/3847" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173446" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/09/202011/10/esbp_b5lmvairqjsh.jpg" width="248" height="280" alt="3847_경북을담다(~12/31)">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="3776_특가원정대" data-gtm-index="39" data-gtm-link-type="EXHIBIT" data-gtm-link-value="3776" href="//front.wemakeprice.com/promotion/3776" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173463" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/41/202009/24/esbp_n82pg4n1clo5.jpg" width="248" height="280" alt="3776_특가원정대">
        </a>
      </li>
      <li>
        <a data-gtm-category="PC_기획전리스팅" data-gtm-action="서브배너_클릭" data-gtm-label="3869_다채롭게 삽시다" data-gtm-index="40" data-gtm-link-type="EXHIBIT" data-gtm-link-value="3869" href="//front.wemakeprice.com/promotion/3869" target="_blank" data-gtm-vis-first-on-screen-8207576_1620="173477" data-gtm-vis-total-visible-time-8207576_1620="100" data-gtm-vis-has-fired-8207576_1620="1">
          <img src="https://view01.wemep.co.kr/wmp-banner/31/202008/31/esbp_6m5ugbff6r7v.png" width="248" height="280" alt="3869_다채롭게 삽시다">
        </a>
      </li>
    </ul>
  </div>
  <!--기획전 끝  -->
  
      
</div><!-- .page -->
</main>
<footer>
  <div class="line"></div>   
  <div class="clear"></div>
<jsp:include page="../include/footer.jsp" /> 
</footer>

</body>
</html>