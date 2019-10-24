<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
<title>DIFE.com</title>
<!-- 웹폰트 -->
<link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
<!-- fadeIn -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<!-- 기본 링크 -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/drone/drone_dt.css">
<!-- 달력 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
$(function() {
    $("#datepicker1").datepicker();
    $("#datepicker2").datepicker();
});

$(function() {
    $("#datepicker1").datepicker();
    $("#datepicker2").datepicker();
});


</script>
</head>
<body>
<div id="wrap">
		<div id="header">
			<div id="header-top" class="header-top">
				<div class="header-right">
					<a href="#">로그인</a>
					<a href="#">마이페이지</a>
					<a href="basket.html">장바구니</a>
				</div>
				<div class="header-left">
					<div class="title"><a href="main.html"><img src="img/DIFE_logo2.png" alt=""></a></div>
					<div class="category">
						<a href="listDrone.html">드론</a>
						<a href="pilot01.html">파일럿</a>
						<a href="#">지역 및 날씨</a>
						<a href="#">고객지원</a>
						<a href="board.html">커뮤니티</a>
					</div>
				</div>
			</div>
			
			<div id="header-nav">
				<div class="container">header-nav</div>
			</div>
		</div>
		
		<!-- 드론 상세 상단 -->
		<div id="contents">
	       <!--상품 상세경로 <section class="index-section">
	           <div class="section-container">
	               <ul class="index-ul">
	                   <li class="index-li-item">
	                       <a href="main.html">메인</a>
	                   </li>
                        <li class="index-li-item">
                           ::before
	                       <a href="drone.html">드론</a>
	                   </li>
	                   <li class="index-li-item">
                           ::before
	                       "매빅2프로"
	                   </li>
	               </ul>
	           </div>
	       </section>-->
			<div class="content1">
				<div class="grid">
					<div id="block1">
						<ul>
							<li>
								<li id="border">
									<img src="img/drone/D0001.png" width="450" height="490">
								</li>
                            </li>
                        </ul>
					</div>
					
					<div id="block2">
						<ul style="color: white; font-size: 14px;">
							<li><p>드론명 : <strong>매빅PRO</strong></p></li>
							<hr>	
							<li><p>가격 : <strong>200,000원</strong></p></li>
							<hr>
							<li><p>시리즈명 : <strong>MAVIC</strong></p></li>
							<li><p>제조사명 : <strong>DJI</strong></p></li>
							<hr>
							<li><p>대여점 : 
								<span id="opr">
									<select id="operR" name="operR" style="width: 150px; height: 30px;">
										<option value="R0001">파주점</option>
										<option value="R0002">잠실점</option>
										<option value="R0003">서귀포점</option>
										<option value="R0004">해운대점</option>
										<option value="R0005">둔산점</option>
										<option value="R0006">강릉점</option>
										<option value="R0007">부산점</option>
										<option value="R0008">대구점</option>
										<option value="R0009">울산점</option>
										<option value="R0010">여수점</option>
										<option value="R0011">목포점</option>
										<option value="R0012">오산점</option>
										<option value="R0013">속초점</option>
										<option value="R0014">포항점</option>
										<option value="R0015">김포점</option>
									</select>
								</span>
							</p></li>
							<li><p>수    량 :							 
								<span id="opa">
									<select id="operA" name="operA" style="width: 150px; height: 30px;">
										<option value="amt1">1</option>
										<option value="amt2">2</option>
										<option value="amt3">3</option>
										<option value="amt4">4</option>
										<option value="amt5">5</option>
										<option value="amt0">6개 이상(별도 문의)</option>
										<!-- 5개 이상 옵션선택 시 대여수량 따로 기재 or 문의글 남기도록 유도? -->
									</select>
								</span>
							</p></li>
							<hr>
							
							<!-- 캘린더 -->						
							<div id="form-group1">
                                 <span class="control-label" for="datepicker"><strong style="color: white;">대여일 : </strong><span class="text-danger">*</span>
                                 <!-- <div class="col-xs-1"> --> 
                                     <input id="datepicker1" type="text" name="mem_birth">
                                 <!-- </div> --> 
                                </span> 
                            </div>
                                 
							<div id="form-group2">
                                 <span class="control-label" for="datepicker"><strong style="color: white;">반납일 : </strong><span class="text-danger">*</span>
                                 <!-- <div class="col-xs-1"> --> 
                                     <input id="datepicker2" type="text" name="mem_birth">
                                 <!-- </div> --> 
                                </span> 
                            </div>
							
                            <!--  
                            <li>							
							<div>
								<span id="calendar" class="search1"><strong>대여일 : </strong></span>
								<input type="text" id="datepicker1" style="width: 150px; height: 30px;">
	               				<script src="pikaday.js"></script>
	                   			<script>
	                       			var picker = new Pikaday({ field: document.getElementById('datepicker') });
	                       		</script>
	                       	</div>	
                       		</li>
							<li>       							
							<div>
								<span id="calendar" class="search1"><strong>반납일 : </strong></span>
								<input type="text" id="datepicker2" style="width: 150px; height: 30px;">
	               				<script src="pikaday.js"></script>
	                   			<script>
	                       			var picker = new Pikaday({ field: document.getElementById('datepicker') });
	                       		</script>
	                       	</div>
                       		</li>
                       		-->
                       		 
							<li>
							<hr>
							<li>
							<li>						
							<a href="payment.html">
								<button type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>주문하기</strong></button>
							</a>
							</li>
							<li>
							<!-- 장바구니 담기 클릭시 모달 -->	                                             
	                            <!-- Trigger/Open The Modal -->
	                            
							    <button id="myBtn" type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>장바구니 담기</strong></button>						 
							    <!-- The Modal -->
							    <div id="myModal" class="modal">						 
							      <!-- Modal content -->
							      <div class="modal-content">
							        <span class="close">&times;</span>                                                               
							        <p>장바구니 담기 성공 :-)</p>
							      </div>						 
							    </div>
							    <script>
								    // Get the modal
							        var modal = document.getElementById('myModal');
							 
							        // Get the button that opens the modal
							        var btn = document.getElementById("myBtn");
							 
							        // Get the <span> element that closes the modal
							        var span = document.getElementsByClassName("close")[0];                                          
							 
							        // When the user clicks on the button, open the modal 
							        btn.onclick = function() {
							            modal.style.display = "block";
							        }
							 
							        // When the user clicks on <span> (x), close the modal
							        span.onclick = function() {
							            modal.style.display = "none";
							        }
							 
							        // When the user clicks anywhere outside of the modal, close it
							        window.onclick = function(event) {
							            if (event.target == modal) {
							                modal.style.display = "none";
							            }
							        }
							    </script>                                                                               
	                        </li>
							<li>
							<a href="drone.html">
								<button type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>쇼핑 계속하기</strong></button>
							</a>
							</li>
						</ul>
					</div>		
				</div>
			<hr>
			
			<!-- 드론 상세 정보 -->
			<div class="content2">
				<div class="block">
					<img src="img/drone/dro_dt.png">
				</div>
			</div>
		
			<div id="footer">
		        <div id="footer-nav">
		            <div class="container">footer-nav</div>
		        </div>
		        <div id="footer-info">
		            <div class="container">
		            <ul class="info">
		                <li>
		                    <dl>
		                        <dd class="txt" style="font-size: 14px; color: #a4a4a4">회사소개</dd>
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
    </div>
    </body>
</html>