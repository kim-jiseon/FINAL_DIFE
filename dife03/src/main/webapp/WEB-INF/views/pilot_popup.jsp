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
<!-- 링크 -->
<link href="css/reset.css" rel="stylesheet">
<link href="css/pilot/pilot_popup.css" rel="stylesheet">
<!-- 제이쿼리 플러그인 -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script type="text/javascript">
$(function(){
	for (var i = 1; i <= 10; i++) {
		var option = $("<option></option>").attr("value",i).html(i);
		$("#num").append(option);
	}

})
</script>
</head>
<body>
<form id="res-form" action="/pilot_reservation" method="post">
	<h3 id="res-title">예약 상담</h3>
	<table id="res-table">
        <colgroup>
            <col width="15%">
            <col>
        </colgroup>
	    <tr id="res-date">
	        <td>날짜</td>
	        <td>${startDate } - ${endDate }</td>
	    </tr>
	    <tr>
	        <td>시간</td>
	        <td>
	            <input type="checkbox" name="res-time" class="res-time" value="9-12시">9-12시&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="res-time" class="res-time" value="12-3시">12-3시&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="res-time" class="res-time" value="3-6시">3-6시&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="res-time" class="res-time" value="6-9시">6-9시
                <span class="res-info">*중복으로 선택 가능합니다.</span>
	        </td>
	    </tr>
	    <tr>
	        <td>인원</td>
	        <td>
	            <select id="num" name="num">
	            <!-- 
	                <option value="1">1</option>
	                <option value="2">2</option>
	                <option value="3">3</option>
	                <option value="4">4</option>
	                <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                     -->
	            </select>
	            &nbsp;&nbsp;명
	            <span class="res-info">*10이상 단체는 상담창에 입력해주세요.</span>
	        </td>
	    </tr>
	    <tr>
	        <td>상담내용</td>
	        <td><textarea rows="10%" cols="65%" id="res-textarea" name="res-textarea"></textarea></td>
	    </tr>
	</table>
	<button id="res-submit" type="submit">상담 신청하기</button>
</form>
</body>
</html>