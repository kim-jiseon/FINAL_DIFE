<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
<title>DIFE.com</title>
<!-- 웹폰트 -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<!-- fadeIn -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<!-- 기본 링크 -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/pilot/pilot.css">
<!-- 제이쿼리 플러그인 -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script type="text/javascript">
$(function(){
	//로그인 로그아웃 전환
		var mem_id = "${mem_id}";
		//alert(mem_id);
		if (mem_id != '' && mem_id != null) {
			$("#sign").attr("href", "logout").html("LOGOUT");
		}
		if (mem_id == '' || mem_id == null) {
			$("#sign").attr("href", "signIn").html("LOGIN");
		}

		//지역 검색
		var arr = [ '선택', '서울', '인천', '경기', '세종', '강원', '대구', '대전', '광주', '울산', '부산', '제주' ];
		$.each(arr, function(idx, loc) {
			var search_loc = $("<option></option>").attr({
				"value" : arr[idx],
				"idx" : idx
			}).html(arr[idx]);
			$("#pil-location").append(search_loc);
		})

		//검색 고정
		$("#pil-category").val($("#hidden-category").val());
		$("#pil-location").val($("#hidden-location").val());
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
                        <a href="main"><img src="img/logo/DIFE_logo3.png" id="logo"></a>
                        <a href="drone" class="cl-effect-1">드론</a>
                        <a href="pilot" class="cl-effect-1">파일럿</a>
                        <a href="#" class="cl-effect-1">지역 및 날씨</a>
                        <a href="#" class="cl-effect-1">고객지원</a>
                        <a href="board" class="cl-effect-1">커뮤니티</a>
                    </span>
                     <span id="category-2" class="animated fadeInUp">
                        <a id="sign" class="cl-effect-1"></a>
                        <a href="mypage_orders" class="cl-effect-1">MYPAGE</a>
                        <a href="basket" class="cl-effect-1">RESERVATION</a>
                   </span>
                </div>
            </div>
            <div id="header-nav">
            <form action="pilot" id="pilot-nav">
               <span id="pil-search">
              	 <span>카테고리</span>
                    <select name="category" id="pil-category">
                    	<option value="2">선택</option>
                        <option value="1">촬영</option>
                        <option value="0">교육</option>
                    </select>
                    <!-- 제이쿼리 사용 -->
                    <span>지역</span>
                    <select name="location" id="pil-location">
                    </select>
                    <button id="pil-search-btn">검색</button>
                </span>
                
                </form>
            </div>
        </div>
        <!-- //header -->

        <!-- contents -->
        <div id="contents">
            <div class="container">
                <div class="pilot-container">
             	<c:forEach var="p" items="${list }">
	             	<ul class="pil-list">
	                    <li>
	                            <dd><img class="pil-list-img" src="img/pilot/${p.pil_photo }" ></dd>
	                            <dd class="pil-list-title"><a href="pilotDetail?info=${p.list_no }" id="pil-list-title">${p.pil_title }</a></dd>
	                            <dd class="pil-list-info" id="pil-name">강사명:&nbsp; ${p.mem_name }</dd>
	                            <dd class="pil-list-info" id="pil-loc">지역:&nbsp; ${p.pil_locInfo }</dd>
	                            <dd class="pil-list-info" id="pil-info">강의 정보:&nbsp; ${p.pil_info }</dd>
	                            <dd class="pil-list-info" id="pil-star">별점:&nbsp; ${p.pil_star }.0</dd>
	                    </li>
	                </ul>
             	</c:forEach>
                 </div>
                 
                 <!-- 페이징처리 -->
                 <div id="pilot-paging">
                     <span class="inner_paging">
              			${page }
                     </span>
                 </div>
                 <!-- //페이징처 -->
            </div>
        </div>
        <!-- //contents -->

        <!-- footer -->
         <jsp:include page="footer.jsp"></jsp:include>
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
<input type="hidden" value="${category }" id="hidden-category">
<input type="hidden" value="${location }" id="hidden-location">
</body>
</html>