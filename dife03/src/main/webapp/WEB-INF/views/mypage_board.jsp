<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<link rel="stylesheet" href="css/mypage/mypage_board.css">
<!-- 제이쿼리 플러그인 -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script type="text/javascript">
	$(function() {
		//로그인 로그아웃 전환
		var mem_id = "${mem_id}";
		alert(mem_id);
		if (mem_id != '' && mem_id != null) {
			//var login = $("#category-2").find("a:first").html();
			$("#sign").attr("href", "logout").html("LOGOUT");
		}
		if (mem_id == '' || mem_id == null) {
			$("#sign").attr("href", "signIn").html("LOGIN");
		}

		//탭전환
		$('dt').click(function() {
			$('dd').addClass('hidden');
			$(this).next().removeClass('hidden');
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
                <jsp:include page="mypage.jsp"></jsp:include>
                <div id="mypage-bottom" class="mypage-grid-nav">
                    <div id="mypage-bottom-left">
                        <nav>
                            <ul>
                                <li class="mypage-category"><a href="mypage_orders">주문내역<i class="fas fa-angle-right" id="icon"></i></a></li>
                                <li class="mypage-category"><a href="mypage_board">내글 관리<i class="fas fa-angle-right" id="icon"></i></a></li>
                                <li class="mypage-category"><a href="mypage_emoney">적립금 및 쿠폰<i class="fas fa-angle-right" id="icon"></i></a></li>
                                <li class="mypage-category"><a href="#">개인정보수정<i class="fas fa-angle-right" id="icon"></i></a></li>
                            </ul>
                        </nav>
                    </div>
                    <div id="mypage-bottom-right">
                    	<div style="font-size: 25px; font-weight: 600; text-align: left; padding: 10px;">내 글 관리</div>
                      <dl id="mypage-tab">
                       <dt id="my-pilot">파일럿 상담</dt>
                           <dd>
                               <table id="my-pilot-table">
                                   <thead>
                                       <tr>
                                           <td>번호</td>
                                           <td>신청일</td>
                                           <td width=45%>신청목록</td>
                                           <td>파일럿</td>
                                           <td width=20%>예약일</td>
                                       </tr>
                                   </thead>
                                   <tbody>
                                   <c:forEach var="vo" items="${list }">
                                       <tr>
                                           <td>${vo.con_no }</td>
                                           <td><fmt:formatDate value="${vo.con_regDate }" pattern="yyyy/MM/dd"/></td>
                                           <td><a href="#">${vo.pil_title }</a></td>
                                           <td>${vo.mem_name }</td>
                                           <td><fmt:formatDate value="${vo.con_start }" pattern="yyyy/MM/dd"/> - <fmt:formatDate value="${vo.con_end }" pattern="yyyy/MM/dd"/></td>
                                       </tr>
                                    </c:forEach>
                                   </tbody>
                               </table>
                           </dd>

                       <dt id="my-board">게시글 관리</dt>
                           <dd class="hidden">
                              두번째 탭메뉴 내용은 여기
                           </dd>
                        </dl>
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