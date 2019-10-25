<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
<title>layout</title>
<!-- 웹폰트 -->
<!-- 
<link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
-->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<!-- fadeIn -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<!-- 기본 css -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/drone/droneDetail.css">
<!-- 달력 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
$(function() {
	/* 이미지 확대 */
    var scale = $('.scale');
    var zoom = scale.data('zoom');
    
    $('.img').on('mousemove',magnify).prepend('<div class="magnifier"></div>').children('.magnifier').css({
        "backgroun":"url('"+scale.attr('src')+"')no-repeat","background-size":scale.width()*zoom+"px "+scale.height()*zoom+"px"
    });
    
    var magnifier = $('.magnifier');
    function magnify(e){
        // 마우스 위치에서 .magnify의 위치를 차감해 컨테이너에 대한 마우스 좌표를 얻는다.
        var mouseX = e.pageX - $(this).offset().left;
        var mouseY = e.pageY - $(this).offset().top;
        // 컨테이너 밖으로 마우스가 벗어나면 돋보기를 없앤다.
        if(mouseX < $(this).width() && mouseY < $(this).height() && mouseX > 0 && mouseY > 0){
            magnifier.fadeIn(100);
        }
        else{
            magnifier.fadeOut(100);
        }
        
        // 돋보기가 존재할 때
        if(magnifier.is(":visible")){
            // 마우스 좌표 확대될 이미지 좌표를 일치시킨다.
            var rx = -(mouseX * zoom - magnifier.width() /2 );
            var ry = -(mouseY * zoom - magnifier.height() /2 );

          //돋보기를 마우스 위치에 따라 움직인다.
          //돋보기의 width, height 절반을 마우스 좌표에서 차감해 마우스와 돋보기 위치를 일치시킨다.
          var px = mouseX - magnifier.width() / 2;
          var py = mouseY - magnifier.height() / 2;

          //적용
          magnifier.css({
            left: px,
            top: py,
            backgroundPosition: rx + "px " + ry + "px"
          });
        }
      }
    };
});
</script>
</head>
<body>
<div id="wrap" class="animated fadeIn">
		<div id="header">
			<div id="header-top" class="header-top">
				<div class="header-right">
					<a href="#">LOGIN</a>
					<a href="#">MYPAGE</a>
					<a href="basket.html">RESERVATION</a>
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
				<div class="container"></div>
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
								<li id="border" class="img">
									<img class="scale" src="img/drone/D0001.png" width="450" height="490">
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
							<!--<div id="form-group1">
                                 <span class="control-label" for="datepicker"><strong style="color: white;">대여일 : </strong><span class="text-danger">*</span>
                                 <!-- <div class="col-xs-1"> -->
                                     <!-- <input id="datepicker1" type="text" name="mem_birth">
                                 <!-- </div> --> 
                                <!-- </span> 
                            </div> -->
                                 
							<!--<div id="form-group2">
                                 <span class="control-label" for="datepicker"><strong style="color: white;">반납일 : </strong><span class="text-danger">*</span>
                                 <!-- <div class="col-xs-1"> --> 
                                    <!-- <input id="datepicker2" type="text" name="mem_birth">
                                 <!-- </div> --> 
                                <!-- </span> 
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
							<a href="payment.html">
								<button type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>주문하기</strong></button>
							</a>
							</li>
							<li>
							<!-- 장바구니 담기 클릭시 모달 -->	                                             
	                            <!-- Trigger/Open The Modal -->
	                            
							    <button id="myBtn" type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>장바구니 담기</strong></button>						 
							                                                                  
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
		            <div class="container"></div>
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