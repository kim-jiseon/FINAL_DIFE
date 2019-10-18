<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <!--JSTL 사용  -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
    <title>layout</title>
    <!-- 웹폰트 -->
    <link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
    <!-- fadeIn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
    <!-- 기본 css -->
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/layout.css">
    <link rel="stylesheet" href="css/orders/basket.css">
    <!-- 제이쿼리 플러그인 -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <script type="text/javascript">
    $(function(){
    	
    	
    	/* 수량처리에 대한 스크립트,제이쿼리문 및 전역변수 */
    	var amount = $("#car_table[span]").text();
    	console.log(amount);
		$(".amountAdd").click(function(){
			alert("Aok"+amount)
		});
    	$(".amountMinus").click(function(){
    		alert("Mok"+amount)
    		
    	});
    	/*수량 처리 end  */
    	
    });
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
                        <a href="#" class="cl-effect-1">드론</a>
                        <a href="pilot" class="cl-effect-1">파일럿</a>
                        <a href="#" class="cl-effect-1">지역 및 날씨</a>
                        <a href="#" class="cl-effect-1">고객지원</a>
                        <a href="#" class="cl-effect-1">커뮤니티</a>
                    </span>
                     	<span id="category-2" class="animated fadeInUp">
                        <a href="signIn" class="cl-effect-1">LOGIN</a>
                        <a href="#" class="cl-effect-1">MYPAGE</a>
                        <a href="basket.do" class="cl-effect-1">RESERVATION</a>
                   </span>
                </div>
            </div>
            <div id="header-nav"></div>
        </div>
        <!-- //header -->
        <!-- //contents -->
        <div id="contents">
        <!-- 세션 영역        -->
        <div id="content-session">
            <div class="container" style="color: black">
                <div class='main-session'>
                   <p style=" font-size: 20px; color:white;">상품 목록</p><br>
                <!--테이블 영역      -->
                        <table class='cart_table' style="color:white;" id="car_table">
                             <colgroup>
                                 <col width='8%'>
                                 <col width="5%">
                                 <col width="10%">
                                 <col width="23%">
                                 <col width='10%'>
                                 <col width='20%'>
                                 <col width='19%'>
                                 <col width='10%'>
                             </colgroup>
                        <thead>
                            <th scope="col">번호</th>
                            <th scope="col"   style="cursor: pointer"><input type="checkbox" class="chk_all" checked></th>
                            <th scope="col"></th>
                            <th scope="col">상품명</th>
                            <th scope="col">판매가</th>
                            <th scope="col">수량</th>
                            <th scope="col">주문금액<br/>(적립예정)</th>
                            <th scope="col">주문관리</th>
                        </thead>
                        <tbody>
                      	<c:forEach items="${list }" var="c">
 						<!-- vo에서 가져온 Date값을 dateString 으로 바꾸기 위한 jstl-->
                      	  <fmt:formatDate value="${ c.bas_rental}" var='regDate1' pattern="yyyy-MM-dd" />
                          <fmt:formatDate value="${ c.bas_return }" var='regDate2' pattern="yyyy-MM-dd" />
						<c:choose>
						    <c:when test="${c.dro_name != null}">
                      			<tr class="trselect">
                            <td>${c.bas_no }</td>
                            <td><input type="checkbox" name="cart_no" checked="checked"></td>
                            <td>
                                <div class="product_img">
                                    <img src="img/drone.png" width="62" height="68">
                                </div>
         					</td>
                            <td><span style="font-size:15px; font-weight: 700;">${c.dro_name }/${c.dro_series }</span><br><span style='font-color:#898484; font-size:10px;'>
                           	대여일:${regDate1 }
                    		반납일:${regDate2 }
                            </span></td>
                            <td><span class="txt_origin_price">${c.pos_price}</span><br>${c.bas_price }</td>
                            <td><button style='border-radius: 1px; width: 20px;' class="amountAdd">+</button><span style="padding:7px" class="p_amount">${c.bas_amount }</span><button style='padding-right: 2px; border-radius: 1px; width: 20px;' class="amountMinus">-</button></td> 
                            <td><span style='font-weight: 700'>${c.bas_price }</span><br>${c.point }</td>
                            <td><button style='padding: 5px; border-radius: 5px;'>삭제</button></td>
                      			</tr>
						    </c:when>
						    <c:otherwise>
                      			<tr class="trselect">  	
                             <td>${c.bas_no }</td>
                            <td><input type="checkbox" name="cart_no" checked="checked"></td>
                            <td>
                                <div class="product_img">
                                    <img src="img/${c.dro_photo }" width="62" height="68">
                                </div>
         					</td>
                            <td><span style="font-size:15px; font-weight: 700;">${c.mem_name }/${c.pil_loc }/${c.pil_career}년 </span><br><span style='font-color:#898484; font-size:10px;'>
                    		대여일:${regDate1 }
                    		반납일:${regDate2 }
                            </span></td>
                            <td><span class="txt_origin_price">${c.pos_price}</span><br>${c.bas_price }</td>
                            <td><button style='border-radius: 1px; width: 20px;' class="amountAdd">+</button><span style="padding:7px" class="p_amount">${c.bas_amount }</span><button style=' border-radius: 1px; width: 20px;' class="amountMinus">-</button></td> 
                            <td><span style='font-weight: 700'>${c.bas_price} </span><br>${c.point }</td>
                            <td><button style='padding: 5px; border-radius: 5px;'>삭제</button></td>
                      			</tr>
						    </c:otherwise> 
						</c:choose>
                      	</c:forEach>
                      		</tbody>
                    </table>
                    <div class="delete-btn-area">
					<a href="javascript:void(0)" id="del_chk" class="a_btn"><font color="black">선택삭제</font></a>
					<a href="orders" id="order" class="a_btn"><font color="black">주문하기</font></a>
				</div>
                        </div>
                </div>
            </div>
        </div>
<!--    //table-->
          <!--    content_footer-->
       <div id='content_footer'>
            <div class="container" style="color: white">
               <div class="total_product">
                <span class="info">쿠폰 사용 여부</span> <input type="checkbox" style="border:10px; padding: 5px; margin: 5px;"><span class="info">쿠폰 선택</span>
                <select style="margin: 5px; width: 500px;"></select><br>
                
               </div>
                <div class="total_product">
                    <span class="info">적립금</span><span class="info"> 원</span>
                    
                </div>
                 <div class="total_product">
                     <span class="info">보유 적립금 사용</span><span><input type="checkbox"></span><span class="info"><input type="text" value="7000" style="text-align: center;width:80px;"> 원</span><span class="info">사용가능한 적립금</span><span class="info">8900원</span>
                </div>
                <div class="total_product">
                    <span class="info">할인금액</span><span class="info">50,000원</span>
                </div>
                 <div class="total_product" style="border-bottom: 0;">
                    <span class="info">최종 결제금액</span><span class="info">393,000원</span>
                </div>
           </div>
       </div>
    <!-- //contents -->
       
        <!-- footer -->
        <div id="footer">
            <div id="footer-nav">footer-nav</div>
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
