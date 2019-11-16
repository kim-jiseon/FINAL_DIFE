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
    <link rel="stylesheet" href="css/locWea/location.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/layout.css">
    <link rel="stylesheet" href="css/mypage/mypage.css">
    <link rel="stylesheet" href="css/mypage/mypage_orders.css">
    
    <!-- 제이쿼리 플러그인 -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <script type="text/javascript">
    $(function(){
    	//로그인 로그아웃 전환
    	var mem_id = "${mem_id}";
    	alert(mem_id);
    	if(mem_id != '' && mem_id != null){
    		//var login = $("#category-2").find("a:first").html();
    		//var logout = $("<a></a>").attr("href","logout").addClass("cl-effect-1").html("LOGOUT");
    		//$("#category-2").append(logout);
    		$("#sign").attr("href","logout").html("LOGOUT");
    	}
    	if(mem_id == '' || mem_id == null){
    		//var login = $("<a></a>").attr("href","signIn").addClass("cl-effect-1").html("LOGIN");
    		//$("#category-2").append(login);
    		$("#sign").attr("href","signIn").html("LOGIN");
    	}
    	/* 날자를 리스트 보여주기위해 포맷하기위한 function */
    	function date_to_str(format)
		{
		    var year = format.getFullYear();
		    var month = format.getMonth() + 1;
		    if(month<10) month = '0' + month;
		    var date = format.getDate();
		    if(date<10) date = '0' + date;
		    return year + "." + month + "." + date;
		}
    	
    	
    	
		
		
    	
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
                <jsp:include page="mypage.jsp"></jsp:include>
                <div id="mypage-bottom" class="mypage-grid-nav">
                    <div id="mypage-bottom-left">
                        <nav>
                            <ul>
                                <li class="mypage-category"><a href="mypage_orders">주문내역<i class="fas fa-angle-right" id="icon"></i></a></li>
                                <li class="mypage-category"><a href="#">글관리<i class="fas fa-angle-right" id="icon"></i></a></li>
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
                            <a href="ordersDetail"><div class="mypage-orders-title">영월군 금방아민박 캠프장<i class="fas fa-angle-right" id="icon"></i></div></a><hr>
                            <div class="mypage-orders-info">
                                <ul>
                                <div class="thumbnail">
      <img id="org_img_424" src="https://www.enjoydrone.com/data/file/place/2009634417_VOw0Ly7q_42f54cb3e20c902d61cecf731aa0829bf8e16df4.jpg">
    </div>
                                    <li>강원 영월군 무릉도원면 무릉법흥로 516</li>
                                    <li>TIP : 야영도 즐길수 있으며, 바로 옆에 있는 계곡이 놀기 좋은 장소</li>     
                                    <div class="info_box">
         <div class="link_li">
            <a href="https://map.kakao.com/?map_type=TYPE_MAP&q=%EA%B0%95%EC%9B%90+%EC%98%81%EC%9B%94%EA%B5%B0+%EB%AC%B4%EB%A6%89%EB%8F%84%EC%9B%90%EB%A9%B4+%EB%AC%B4%EB%A6%89%EB%B2%95%ED%9D%A5%EB%A1%9C+516" 
            target="_blank" class=dark_bg>지도보기</a>
            <a href="https://map.kakao.com/?map_type=TYPE_MAP&q=%EA%B0%95%EC%9B%90+%EC%98%81%EC%9B%94%EA%B5%B0+%EB%AC%B4%EB%A6%89%EB%8F%84%EC%9B%90%EB%A9%B4+%EB%AC%B4%EB%A6%89%EB%B2%95%ED%9D%A5%EB%A1%9C+516&eName=%EA%B0%95%EC%9B%90+%EC%98%81%EC%9B%94%EA%B5%B0+%EB%AC%B4%EB%A6%89%EB%8F%84%EC%9B%90%EB%A9%B4+%EB%AC%B4%EB%A6%89%EB%B2%95%ED%9D%A5%EB%A1%9C+516" 
            target="_blank" class=dark_bg>길찾기</a> 
            </div>     
         </div>                               
                                </ul>
                            </div>
                        </div>    
                        <div class="mypage-orders-list">
                            <a href="ordersDetail"><div class="mypage-orders-title">[2019.10.14] MAVIC-PRO 외 1건<i class="fas fa-angle-right" id="icon"></i></div></a><hr>
                            <div class="mypage-orders-info">
                                <ul>
                                    <li>주문번호&nbsp;&nbsp;&nbsp; 1569888755958</li>
                                    <li>결제금액&nbsp;&nbsp;&nbsp; 55,000 원</li>
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
         <jsp:include page="footer.jsp"></jsp:include>
        <!-- //footer -->
    </div>
</body>
</html>