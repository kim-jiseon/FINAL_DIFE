<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
<title>DIFE.com</title>
<!-- 웹폰트 -->
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
<link rel="stylesheet" href="css/orders/ordersDetail.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script type="text/javascript">
	$(function() {
		//로그인 로그아웃 전환
		var mem_id = "${mem_id}";
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
		
		//마이페이지 이동
		$("#mypage").click(function(){
			console.log("클릭");
			//var mem_id = "${mem_id}";
			if(mem_id == null || mem_id == ''){
				alert("로그인을 해주세요.");
				location.href="signIn";
			}else{
				$("#mypage").attr("href","mypage_orders");
			}
		})
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
                </div><hr>
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
                           <span>주문 상세 내역</span>
                           <span id="ordersDetail-number">주문번호 156928405958</span>
                        </div><hr id="hr">
                        <div class="mypage-orders-list">
                           <div class="detail">
                            <table id="detail-table">
                               <colgroup>
                                 <col width="40%">
                                 <col>
                                 <col>
                                 <col>
                                 <col>
                             </colgroup>
                                <thead id="thead">
                                    <tr>
                                        <th scope="col">상품명</th>
                                        <th>주문금액</th>
                                        <th>대여일</th>
                                        <th>반납일</th>
                                        <th>주문상태</th>
                                    </tr>
                                </thead>
                                <tbody id="tbody">
                                    <tr>
                                        <td class="detail-product">
                                            <img src="img/main/drone2_cnt.png" class="detail-img">
                                            <span class="img-name">MAVIC pro</span>
                                        </td>
                                        <td>25,000원</td>
                                        <td>2019-11-04</td>
                                        <td>2019-11-06</td>
                                        <td style="color: #7EBDC2; font-weight: 600;">결제완료</td>
                                    </tr>
                                    <tr>
                                        <td class="detail-product">
                                            <img src="img/main/drone2_cnt.png" class="detail-img">
                                            <span class="img-name">MAVIC pro</span>
                                        </td>
                                        <td>30,000원</td>
                                        <td>2019-11-04</td>
                                        <td>2019-11-06</td>
                                        <td style="color: #7EBDC2; font-weight: 600;">결제완료</td>
                                    </tr>
                                </tbody>
                            </table>
                            </div>
                            <div class="detail">
                                <div class="detail-title">결제정보</div>
                                <table class="detail-info">
                                   <colgroup>
                                     <col width="20%">
                                     <col>
                                    </colgroup>
                                    <tr class="detail-tr">
                                        <td class="td">총주문금액</td>
                                        <td>55,900원</td>
                                    </tr>
                                    <tr class="detail-tr">
                                        <td class="td">쿠폰할인</td>
                                        <td>10%</td>
                                    </tr>
                                    <tr class="detail-tr">
                                        <td class="td">적립금 사용</td>
                                        <td>-</td>
                                    </tr>
                                    <tr class="detail-tr">
                                        <td class="td">결제금액</td>
                                        <td>55,000원</td>
                                    </tr>
                                    <tr class="detail-tr">
                                        <td class="td">적립금액</td>
                                        <td>200원</td>
                                    </tr>
                                    <tr class="detail-tr">
                                        <td class="td">결제방법</td>
                                        <td>카카오페이</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="detail">
                                <div class="detail-title">주문정보</div>
                                <table class="detail-info">
                                   <colgroup>
                                     <col width="20%">
                                     <col>
                                    </colgroup>
                                    <tr class="detail-tr">
                                        <td class="td">주문번호</td>
                                        <td>156928405958</td>
                                    </tr>
                                    <tr class="detail-tr">
                                        <td class="td">주문자명</td>
                                        <td>홍길동</td>
                                    </tr>
                                    <tr class="detail-tr">
                                        <td class="td">결제일시</td>
                                        <td>2019-11-01</td>
                                    </tr>
                                </table>
                            </div>
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