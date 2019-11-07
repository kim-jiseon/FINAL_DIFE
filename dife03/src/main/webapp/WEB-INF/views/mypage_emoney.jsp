<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
<title>layout</title>
<!-- 웹폰트 -->
<!-- 
    <link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
     -->
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<!-- fadeIn -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/mypage/mypage.css">
<link rel="stylesheet" href="css/mypage/mypage_emoney.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script type="text/javascript">
	$(function() {
		//로그인 로그아웃 전환
		var mem_id = "${mem_id}";
		alert(mem_id);
		if (mem_id != '' && mem_id != null) {
			//var login = $("#category-2").find("a:first").html();
			//var logout = $("<a></a>").attr("href","logout").addClass("cl-effect-1").html("LOGOUT");
			//$("#category-2").append(logout);
			$("#sign").attr("href", "logout").html("LOGOUT");
		}
		if (mem_id == '' || mem_id == null) {
			//var login = $("<a></a>").attr("href","signIn").addClass("cl-effect-1").html("LOGIN");
			//$("#category-2").append(login);
			$("#sign").attr("href", "signIn").html("LOGIN");
		}
	})
</script>
</head>
<body>
    <div id="wrap" class="animated fadeIn">
       <!-- header -->
         <jsp:include page="header.jsp"></jsp:include>

        <!-- //header -->

        <!-- contents -->
        <div id="contents">
            <div class="container">
               <div  class="mypage-grid">
                <div id="mypage-top" class="mypage-top">
                    <div class="mypage-top-nav"><img src="img/pilot/visit_cnt.png" id="mem-img">
                        <span id="mem-name">${mem_id } 님</span>
                    </div>
                    <div class="mypage-top-nav">적립<i class="fas fa-angle-right" id="arrow"></i></div>
                    <div class="mypage-top-nav">쿠폰<i class="fas fa-angle-right" id="arrow"></i></div>
                </div>
                <div id="mypage-bottom" class="mypage-grid-nav">
                    <div id="mypage-bottom-left">
                        <nav>
                            <ul>
                                <li class="mypage-category"><a href="mypage_orders.html">주문내역<i class="fas fa-angle-right" id="icon"></i></a></li>
                                <li class="mypage-category"><a href="#">글관리<i class="fas fa-angle-right" id="icon"></i></a></li>
                                <li class="mypage-category"><a href="mypage_emoney.html">적립금 및 쿠폰<i class="fas fa-angle-right" id="icon"></i></a></li>
                                <li class="mypage-category"><a href="#">개인정보수정<i class="fas fa-angle-right" id="icon"></i></a></li>
                            </ul>
                        </nav>
                    </div>
                    <div id="mypage-bottom-right">
                       <div class="mypage-bottom-right">
                        <div id="mypage-emoney">보유 적립금</div><hr id="hr">
                        <div id="emoney">적립금&nbsp;&nbsp;&nbsp;<span id="emoney-amount">1000</span> 원</div>
                         <table class="mypage-table">
                            <thead>
                                <tr>
                                    <th>적립일</th>
                                    <th>적립내용</th>
                                    <th>적립금액</th>
                                </tr>
                            </thead>
                            <tbody>
                               <!-- ajax 이용 -->
                                <tr>
                                    <td>2019/11/11</td>
                                    <td>[구매] 0.5%적립</td>
                                    <td>100 원</td>
                                </tr>
                            </tbody>
                        </table>
                        </div>
                        <div class="mypage-bottom-right">
                        <div id="mypage-coupon">보유 쿠폰</div><hr id="hr">
                        <div id="emoney">쿠폰&nbsp;&nbsp;&nbsp;<span id="emoney-amount">2</span> 장</div>
                        <table class="mypage-table">
                            <thead>
                                <tr>
                                    <th>쿠폰명</th>
                                    <th>할인/적립</th>
                                    <th>사용가능기간</th>
                                    <th>사용여부</th>
                                </tr>
                            </thead>
                            <tbody>
                               <!-- ajax 이용 -->
                                <tr>
                                    <td>고객감사 10%할인 쿠폰</td>
                                    <td>10%</td>
                                    <td>2019/11/11-2019/11/30</td>
                                    <td>미사용</td>
                                </tr>
                                <tr>
                                    <td>고객감사 10%할인 쿠폰</td>
                                    <td>10%</td>
                                    <td>2019/11/11-2019/11/30</td>
                                    <td>미사용</td>
                                </tr>
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
        <!-- //contents -->

        <!-- footer -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- //footer -->
    </div>

</body>
</html>