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
<link rel="stylesheet" href="css/orders/orders.css">
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
        <!-- //header -->

        <!-- contents -->
     <!-- 컨텐츠 영역 -->
    <div id="contents">
        <!-- 세션 영역        -->
        <div id="content-session">
            <div class="container" style="color: white; font-size:20px;">
                <div class='main-session'>
                   <p>주문</p><br>
                <!--테이블 영역      -->
                        <table class='cart_table' style="color: white;">
                             <colgroup>
                                 <col width='150px'>
                                 <col width="100px">
                                 <col width="300px">
                                 <col width='100px'>
                                 <col width='250px'>
                                 <col width='200px'>
                             </colgroup>
                        <thead>
                            <th scope="col">주문번호</th>
                            <th scope="col"></th>
                            <th scope="col">상품명</th>
                            <th scope="col">판매가</th>
                            <th scope="col">수량</th>
                            <th scope="col">주문금액<br/>(적립예정)</th>
                        </thead>
                              <tbody style="border-top: 1px solid #000">
                            <td>1</td>
                            <td>
                                <div class="product_img">
                                    <img src="img/drone.png" width="62" height="68">
                                    
                                </div>
                                
                            </td>
                            <td>
                                <span>드론/시리즈명/구매일</span><br>
                                <span>대여일:2019/09/05 반납일:2019/09/09</span>
                            </td>
                            <td>
                                <span class="txt_origin_price">150000</span><br>120000
                                
                            </td>
                            <td>
                                <span>수량</span>
                            </td>
                            
                            <td>
                                <span>120000</span><br>
                                4500
                            </td>
                           
                        </tbody>
                        
                        
                            <tbody style="border-top: 1px solid #000">
                            <td>2</td>
                            <td>
                                <div class="product_img">
                                    <img src="img/drone.png" width="62" height="68">
                                    
                                </div>
                                
                            </td>
                            <td>
                                <span>드론/시리즈명/구매일</span><br>
                                <span>대여일:2019/09/05 반납일:2019/09/09</span>
                            </td>
                            <td>
                                <span class="txt_origin_price">100000</span><br>90000
                                
                            </td>
                            <td>
                                <span>수량</span>
                            </td>
                            
                            <td>
                                <span>90000</span><br>
                                5740
                            </td>
                         
                        </tbody>
                        
                        
                            <tbody style="border-top: 1px solid #000">
                            <td>3</td>
                            <td>
                                <div class="product_img">
                                    <img src="img/drone.png" width="62" height="68">
                                    
                                </div>
                                
                            </td>
                            <td>
                                <span>드론/시리즈명/구매일</span><br>
                                <span>대여일:2019/09/05 반납일:2019/09/09</span>
                            </td>
                            <td>
                                <span class="txt_origin_price">200000</span><br>180000
                                
                            </td>
                            <td>
                                <span>수량</span>
                            </td>
                            
                            <td>
                                <span>180000</span><br>
                                9700
                            </td>
                            

                        </tbody>
                        
                        
                            <tbody style="border-top: 1px solid #000">
                            <td>4</td>
                            <td>
                                <div class="product_img">
                                    <img src="img/drone.png" width="62" height="68">
                                    
                                </div>
                                
                            </td>
                            <td>
                                <span>드론/시리즈명/구매일</span><br>
                                <span>대여일:2019/09/05 반납일:2019/09/09</span>
                            </td>
                            <td>
                                <span class="txt_origin_price">100000</span><br>90000
                                
                            </td>
                            <td>
                                <span>수량</span>
                            </td>
                            
                            <td>
                                <span>90000</span><br>
                                5740
                            </td>

                        </tbody>
             
                            <tbody style="border-top: 1px solid #000">
                            <td>5</td>
                            <td>
                                <div class="product_img">
                                    <img src="img/drone.png" width="62" height="68">
                                    
                                </div>
                                
                            </td>
                            <td>
                                <span>드론/시리즈명/구매일</span><br>
                                <span>대여일:2019/09/05 반납일:2019/09/09</span>
                            </td>
                            <td>
                                <span class="txt_origin_price">100000</span><br>90000
                            </td>
                            <td>
                                <span>수량</span>
                            </td>
                            
                            <td>
                                <span>90000</span><br>
                                5740
                            </td>
                        </tbody>
                    </table>
              
                
                    
                </div>
            </div>
        </div>
<!--    //table-->
       
          <!--    content_footer-->
       <div id='content_footer'>
            <div class="container" style="color: white">
                <span>결제 방식</span><br>
<!--
                <div class="">
                   <span>결제 수단</span>
                    <input type="radio" class="payment" checked="checked" name="payment"><label>카드</label>
                    <input type="radio" class="payment"  name="payment"><label>무통장</label>
                    <input type="radio" class="payment"  name="payment"><label>카카오페이</label>
                </div>
                <div>
                <span>총 주문금액</span>
                </div>
-->
                <ul class="payment_container" >
                    <li><span>결제 수단 <input type="radio" class="payment" checked="checked" name="payment"><label>카드</label>
                    <input type="radio" class="payment"  name="payment"><label>무통장</label>
                    <input type="radio" class="payment"  name="payment"><label>카카오페이</label></span></li>
                    <li id="payment_style">결제 안내
                        <select>
                            <option>은행선택</option>
                        </select>
                        <select>
                            <option>일시불</option>
                        </select>
                    </li>
                    <li>
                        <span>총 금액</span><span>430000원</span>
                    </li>
                    <li><span>주문자 동의</span> <input type="checkbox" checked="checked"><label style="padding: 10px; padding-bottom: 40px;">동의</label><br>
                        <textarea rows="10%" cols="150%" disabled style="background-color: white;" >제1조(목적)

이 약관은 'DIFE(주)'(전자거래 사업자)이 운영하는 DIFE(주) 온라인 쇼핑몰(이하 "DIFE 온라인 쇼핑몰"이라 한다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 사이버몰과 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다. ※ 「PC통신등을 이용하는 전자거래에 대해서도 그 성질에 반하지 않는한 이 약관을 준용합니다」

제2조(정의)

① "DIFE"이란 'DIFE(주)'이 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터등 정보통신설비를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.
② "이용자"란 "DIFE 온라인 쇼핑몰"에 접속하여 이 약관에 따라 "오롬 온라인 쇼핑몰"이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
③ ‘회원’이라 함은 "DIFE 온라인 쇼핑몰"에 개인정보를 제공하여 회원등록을 한 자로서, "오롬 온라인 쇼핑몰"의 정보를 지속적으로 제공받으며, "DIFE 온라인 쇼핑몰"이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
④ ‘비회원’이라 함은 회원에 가입하지 않고 "DIFE 온라인 쇼핑몰"이 제공하는 서비스를 이용하는 자를 말합니다.

제3조(약관등의 명시와 설명 및 개정)

① "DIFE 온라인 쇼핑몰"은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호·모사전송번호·전자우편주소, 사업자등록번호, 통신판매업신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 "오롬 온라인 쇼핑몰"의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
② "오롬 온라인 쇼핑몰"은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회·배송책임·환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
③ "오롬 온라인 쇼핑몰"은 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
④ "오롬 온라인 쇼핑몰"이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일이전부터 적용일자 전일까지 공지합니다.
다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "몰“은 개정전 내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.
⑤ "오롬 온라인 쇼핑몰"이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간내에 "오롬 온라인 쇼핑몰"에 송신하여 "오롬 온라인 쇼핑몰"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.
⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자보호지침 및 관계법령 또는 상관례에 따릅니다.

제4조(서비스의 제공 및 변경)

① "오롬 온라인 쇼핑몰"은 다음과 같은 업무를 수행합니다.
1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
2. 구매계약이 체결된 재화 또는 용역의 배송
3. 기타 "오롬 온라인 쇼핑몰"이 정하는 업무
② "오롬 온라인 쇼핑몰"은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.
③ "오롬 온라인 쇼핑몰"이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.
④ 전항의 경우 "오롬 온라인 쇼핑몰"은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, "오롬 온라인 쇼핑몰"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.

제5조(서비스의 중단)

① "오롬 온라인 쇼핑몰"은 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.
② "오롬 온라인 쇼핑몰"은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, "오롬 온라인 쇼핑몰"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
③ 사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 "오롬 온라인 쇼핑몰"은 제8조에 정한 방법으로 이용자에게 통지하고 당초 "오롬 온라인 쇼핑몰"에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, "오롬 온라인 쇼핑몰"이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 포인트 등을 "오롬 온라인 쇼핑몰"에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.</textarea>
                    </li>
                </ul>
                 <div class="delete-btn-area">
					<a href="javascript:void(0)" id="order" class="a_btn">결제하기</a>
				</div>
           
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