<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	var itemsPerPage = 8;
	
	// 페이징 처리 : 페이지버튼 추가
	$.get("GetTotalDroneCount",function(data){
		var totalItem = Number(data);
		var totalPage = Math.ceil(totalItem/itemsPerPage);
		
		for(var i=1; i<=totalPage; i++){
			var addPage = $("<li/>").html(i).attr("dataPage",i);
			$("#btnPaging").append(addPage);
			$(addPage).click(function(){
				var nowPage = $(this).attr("dataPage");
				getItems(nowPage,itemsPerPage);
			});
		}	
	});
	
	// 페이징 처리 : 드론 초기화면 전체 목록 select
	function getItems(nowPage, itemsPerPage){
		$("#content2").empty();
		
		$.getJSON("GetDroneList",{nowPage:nowPage,perPage:itemsPerPage},function(data){
			$.each(data,function(idx,item){
				var div = $("<div></div>").addClass("item");
				var fname = $("<img/>").attr({"src":"img/drone/"+item.dro_photo,width:"100",height:"250"});
				var name = $("<p></p>").html(item.dro_name);
				var sName = $("<p></p>").html(item.dro_series);
				var price = $("<p></p>").html(item.pos_price);
				
				$(div).append(fname,name,sName,price);
				$("#content2").append(div);
			});
		});
		$("#content2").show();
	}	
	getItems(1,itemsPerPage);
	
})
</script>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<div class="header-light">
				<a href="signIn.html">로그인 <i class="fas fa-user"></i></a>
       			<a href="payment.html">마이페이지 <i class="fas fa-clipboard-list"></i></a>
       			<a href="basket.html">장바구니 <i class="fas fa-shopping-basket"></i></a>
			</div>
			<div class="header-left">
				<div class="title"><a href="main.html"><img src="img/logo/logo_white.png" alt="디프로고"></a></div>
				<div class="category">
					<a href="drone.jsp">드론</a>
					<a href="pilot01.html">파일럿</a>
					<a href="#">지역 및 날씨</a>
					<a href="#">고객지원</a>
					<a href="board.html">커뮤니티</a>
				</div>
			</div>
		</div>
		
		<!-- 상세검색 -->
		<div id="header-nav">
			<div class="container" style="color: #242424; width: 1100px;">
				<!-- 대여일 -->
				<span id="calendar" class="search1">대여일</span>
					<input><!-- 수업내용 참고해서 사용하기 pikaday.js -->
				<!-- 시리즈명 -->
				<span id="ops" class="search1">시리즈명</span>
					<select id="operS" name="operS" style="width: 150px; height: 30px; border-radius: 3px; font-size: 14px;">
						<option value="dro_series_null">선택안함</option>
						<option value="dro_series_mav">매빅</option>
						<option value="dro_series_bb">비밥</option>
						<option value="dro_series_sp">스파크</option>
						<option value="dro_series_ins">인스파이어</option>
						<option value="dro_series_pt">팬텀</option>
					</select>
				<!-- 가격 -->
				<span id="opp" class="search1">가격</span>
					<select id="operP" name="operP" style="width: 150px; height: 30px; border-radius: 3px; font-size: 14px;">
						<option value="pos_price_null">선택안함</option>
						<option value="pos_price_low">50만 원 미만</option>
						<option value="pos_price_mid">50만 원 ~ 100만 원</option>
						<option value="pos_price_high">100만 원 이상</option>
					</select>
				<button class="btnSch" style="width: 60px; height: 30px; border-radius: 5px; background-color: #231F20; color: white">검색</button>
			</div>
		</div>
		
		<!-- 상세검색결과 목록 -->
		<div id="content2"></div>
		<!-- 페이징 처리 -->
		<div id="btnPaging"></div>
		
		<div id="footer">
	        <div id="footer-nav">
	            <div class="container"></div>
	        </div>
	        <div id="footer-info">
	            <div class="container">
	            <ul class="info">
	                <li>
	                    <dl>
	                        <dd class="txt" style="font-size: 14px; color: black">회사소개</dd>
	                        <dd class="txt">(주)비트캠프:DIFE</dd>
	                        <dd class="txt">서울특별시 마포구 백범로 23 구프라자 3층</dd>
	                        <dd class="txt">02-707-1480</dd>
	                        <dd class="txt"><a href="#" style="color: #a4a4a4;">고객센터</a></dd>
	                        <dd class="txt"><a href="#" style="color: #a4a4a4;">이용안내</a></dd>
	                    </dl>
	                </li>
	            </ul>
	            </div>
	        </div>
	    </div>
	</div>
</body>
</html>