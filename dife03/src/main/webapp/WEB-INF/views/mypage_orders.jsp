<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
    <title>layout</title>
    <!-- 웹폰트 -->
     <!-- 
    <link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
     -->
     <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <!-- fadeIn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/layout.css">
    <link rel="stylesheet" href="css/mypage/mypage.css">
    <link rel="stylesheet" href="css/mypage/mypage_orders.css">
    <!-- 제이쿼리 플러그인 -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
    <div id="wrap" class="animated fadeIn">
       <!-- header -->
        <div id="header">
            <div id="header-top">
               <div id="category">
                    <span id="category-1" class="animated fadeInUp">
                        <a href="main"><img src="img/logo/logo_white.png" id="logo"></a>
                        <a href="drone" class="cl-effect-1">드론</a>
                        <a href="pilot" class="cl-effect-1">파일럿</a>
                        <a href="#" class="cl-effect-1">지역 및 날씨</a>
                        <a href="#" class="cl-effect-1">고객지원</a>
                        <a href="#" class="cl-effect-1">커뮤니티</a>
                    </span>
                     <span id="category-2" class="animated fadeInUp">
                        <a href="signIn" class="cl-effect-1">LOGIN</a>
                        <a href="mypage_orders" class="cl-effect-1">MYPAGE</a>
                        <a href="#" class="cl-effect-1">RESERVATION</a>
                   </span>
                </div>
            </div>
            <div id="header-nav"></div>
        </div>
        <!-- //header -->

        <!-- contents -->
        <div id="contents">
            <div class="container">
               <div  class="mypage-grid">
                <div id="mypage-top" class="mypage-top">
                    <div class="mypage-top-nav"><img src="img/pilot/visit_cnt.png" id="mem-img">
                        <span id="mem-name">임수정 님</span>
                    </div>
                    <div class="mypage-top-nav">적립<i class="fas fa-angle-right" id="arrow"></i></div>
                    <div class="mypage-top-nav">쿠폰<i class="fas fa-angle-right" id="arrow"></i></div>
                </div>
                <div id="mypage-bottom" class="mypage-grid-nav">
                    <div id="mypage-bottom-left">
                        <nav>
                            <ul>
                                <li class="mypage-category"><a href="mypage_orders">주문내역<i class="fas fa-angle-right" id="icon"></i></a></li>
                                <li class="mypage-category"><a href="#">게시글관리<i class="fas fa-angle-right" id="icon"></i></a></li>
                                <li class="mypage-category"><a href="mypage_emoney">적립금 및 쿠폰<i class="fas fa-angle-right" id="icon"></i></a></li>
                                <li class="mypage-category"><a href="#">개인정보수정<i class="fas fa-angle-right" id="icon"></i></a></li>
                            </ul>
                        </nav>
                    </div>
                    <div id="mypage-bottom-right">
                       <div id="mypage-orders">
                           <span>주문내역</span>
                           <span>
                               <select name="mypage-orders-date" id="mypage-orders-date">
                                   <option value="1개월">전체</option>
                                   <option value="1개월">1개월</option>
                                   <option value="1개월">3개월</option>
                               </select>
                           </span>
                        </div><hr id="hr">
                        <div class="mypage-orders-list">
                            <a href="#"><div class="mypage-orders-title">[2019.07.14] MAVIC-PRO 외 1건<i class="fas fa-angle-right" id="icon"></i></div></a><hr>
                            <div class="mypage-orders-info">
                                <ul>
                                    <li>주문번호&nbsp;&nbsp;&nbsp; 156928405958</li>
                                    <li>결제금액&nbsp;&nbsp;&nbsp; 100,000 원</li>
                                    <li>주문상태&nbsp;&nbsp;&nbsp; 반납완료</li>
                                </ul>
                            </div>
                        </div>
                        <div class="mypage-orders-list">
                            <a href="#"><div class="mypage-orders-title">[2019.10.14] MAVIC-PRO 외 1건<i class="fas fa-angle-right" id="icon"></i></div></a><hr>
                            <div class="mypage-orders-info">
                                <ul>
                                    <li>주문번호&nbsp;&nbsp;&nbsp; 1569888755958</li>
                                    <li>결제금액&nbsp;&nbsp;&nbsp; 100,000 원</li>
                                    <li>주문상태&nbsp;&nbsp;&nbsp; 대여중</li>
                                </ul>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            </div>
        </div>
        <!-- //contents -->

        <!-- footer -->
        <div id="footer">
            <div id="footer-nav"></div>
            <div id="footer-info">(주)비트캠프:DIFE
                <div id="footer_info1">
                    <p>서울특별시 마포구 백범로 23 구프라자 3층</p>
                    <p>02-707-1480</p>
                    <p><a href="#">고객센터</a></p>
                    <p><a href="#">이용안내</a></p>
                </div>
            </div>
        </div>
        <!-- //footer -->
    </div>
<script>
window.onscroll = function() {myFunction()};

var header = document.getElementById("header");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script>
</body>
</html>