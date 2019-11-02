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
<link rel="stylesheet" href="css/orders/ord_dt.css">
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
	})
</script>
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
                        <a id="sign" class="cl-effect-1"></a>
                        <a href="mypage_orders" class="cl-effect-1">MYPAGE</a>
                        <a href="basket" class="cl-effect-1">RESERVATION</a>
                   </span>
                </div>
            </div>
            <div id="header-nav"></div>
        </div>

        <jsp:include page="header.jsp"></jsp:include>

        <!-- //header -->

        <!-- contents -->
        <div id="contents">
            <div class="container"></div>
        </div>
        <!-- //contents -->
  <div id="contents">
        <!-- 세션 영역 -->
        <div id="content-session">
            <div class="container" style="color: black">
                <div class='main-session'>
                   <p class="title" style="color: white;">주문 상세 목록</p><br>
                <!--테이블 영역      -->
                        <table class='cart_table' style="color: white">
                             <colgroup>
                                 <col width='100px'>
                                 <col width="100px">
                                 <col width="50px">
                                 <col width="200px">
                                 <col width='70px'>
                                 <col width='100px'>
                                 <col width='150px'>
                                 <col width='150px'>
                                 <col width='150px'>
                                 <col width='100px'>
                             </colgroup>
                        <thead>
                            <th scope="col">주문상세번호</th>
                            <th scope="col">주문번호</th>
                            <th scope="col"></th>
                            <th scope="col">보유상품</th>
                            <th scope="col">주문수량</th>
                            <th scope="col">주문금액</th>
                            <th scope="col">대여일</th>
                            <th scope="col">반납일</th>
                            <th scope="col">주문현황</th>
                            <th scope="col">비고</th>
                        </thead>
              
                            <!-- 주문번호 1페이지  -->
                            <tbody style="border-top: 1px solid #000">
                            <td>
                            	<!-- 클릭시 택배 이동경로 탐색위해 a 설정 -->
                               <span>19091500001</span>
                            </td>
                            
                            <td><a href="payment">OD0001-100001</a></td>
                            <td>
                            		<div class="product_img">
                                        <img src="img/car3.jpg" width="62" height="68" align="center">
                                    </div>
									
							</td>
							<td align="left"><a href="droneDetail">MiniDrone(minis-3)</a></td>
                            <td>1</td>
                            <td>
                               <span>100,000 원</span>
                            </td>
                            <td>
                                <span>2019-09-16</span>
                            </td>
                            <td>
                                <span>2019-09-20</span><br>
                            </td>
                            <td>
                                <span>대여중</span>
                            </td>
                            <td>
                                <a href="review_write"><button class="btn_review">후기작성</button></a>
                            </td>
                        </tbody>
                        
                         <!-- 주문번호 2페이지  -->
                            <tbody style="border-top: 1px solid #000">
                              <td>
                            	<!-- 클릭시 택배 이동경로 탐색위해 a 설정 -->
                               <span>19080100013</span>
                            </td>
                            <td><a href="payment">OD0001-100001</a></td>
                            <td>
                            		<div class="product_img">
                                    <img src="img/car2.jpg" width="62" height="68" align="center">
                                    </div>
									
							</td>
							<td align="left">BlackDrone(KB)</td>
                            <td>1</td>
                            <td>
                               <span>200,000 원</span>
                            </td>
                            
                            <td>
                                <span>2019-08-01</span>
                            </td>
                            <td>
                                <span>2019-08-05</span><br>
                            </td>
                            <td>
                                <span>대여완료</span>
                            </td>
                            <td>
                                <a href="review_write"><button class="btn_review">후기작성</button></a>
                            </td>
                        </tbody>
                        
                        <!-- 주문번호 3페이지  -->
                        <tbody style="border-top: 1px solid #000">
                              <td>
                            	<!-- 클릭시 택배 이동경로 탐색위해 a 설정 -->
                               <span>19071002222</span>
                            </td>
                            <td><a href="payment">OD0001-100001</a></td>
                            <td>
                            		<div class="product_img">
                                    <img src="img/car1.jpg" width="62" height="68" align="center">
                                    </div>
									
							</td>
							<td align="left">BigDrone(bibibig)</td>
                            <td>2</td>
                            <td>
                               <span>600,000 원</span>
                            </td>
                            
                            <td>
                                <span>2019-07-15</span>
                            </td>
                            <td>
                                <span>2019-07-20</span><br>
                            </td>
                            <td>
                                <span>대여완료</span>
                            </td>
                            <td>
                                <a href="review_write"><button class="btn_review">후기작성</button></a>
                            </td>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
<!--    //table-->
       
          <!--    content_footer-->
       <div id='content_footer'>
            <div class="container" style="color: black;">
               <div class="total_product">
               </div>
           </div>
       </div>
    </div>
        <!-- footer -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- //footer -->
    </div>

</body>
</html>