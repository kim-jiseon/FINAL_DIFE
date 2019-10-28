<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<link rel="stylesheet" href="css/drone/droneDetail.css">
<!-- 달력 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
$(function() {
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
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
<title>DIFE.com</title>
<!-- �쎒�룿�듃 -->
<link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
<!-- fadeIn -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<!-- 湲곕낯 css 留곹겕 -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/drone/droneDetail.css">
<!-- �떖�젰 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script type="text/javascript">
$(function() {
	/* 留덉슦�뒪 hover �떆 �솗��� �슚怨� */
    var scale = $('.scale');
    var zoom = scale.data('zoom');
    
    $('.img').on('mousemove',magnify).prepend('<div class="magnifier"></div>').children('.magnifier').css({
        "backgroun":"url('"+scale.attr('src')+"')no-repeat","background-size":scale.width()*zoom+"px "+scale.height()*zoom+"px"
    });
    
    var magnifier = $('.magnifier');
    function magnify(e){
        // 留덉슦�뒪 �쐞移섏뿉�꽌 .magnify�쓽 �쐞移섎�� 李④컧�빐 而⑦뀒�씠�꼫�뿉 ����븳 留덉슦�뒪 醫뚰몴瑜� �뼸�뒗�떎.
        var mouseX = e.pageX - $(this).offset().left;
        var mouseY = e.pageY - $(this).offset().top;
        // 而⑦뀒�씠�꼫 諛뽰쑝濡� 留덉슦�뒪媛� 踰쀬뼱�굹硫� �룍蹂닿린瑜� �뾾�븻�떎.
        if(mouseX < $(this).width() && mouseY < $(this).height() && mouseX > 0 && mouseY > 0){
            magnifier.fadeIn(100);
        }
        else{
            magnifier.fadeOut(100);
        }
        
        // �룍蹂닿린媛� 議댁옱�븷 �븣
        if(magnifier.is(":visible")){
            // 留덉슦�뒪 醫뚰몴 �솗����맆 �씠誘몄�� 醫뚰몴瑜� �씪移섏떆�궓�떎.
            var rx = -(mouseX * zoom - magnifier.width() /2 );
            var ry = -(mouseY * zoom - magnifier.height() /2 );

          //�룍蹂닿린瑜� 留덉슦�뒪 �쐞移섏뿉 �뵲�씪 ���吏곸씤�떎.
          //�룍蹂닿린�쓽 width, height �젅諛섏쓣 留덉슦�뒪 醫뚰몴�뿉�꽌 李④컧�빐 留덉슦�뒪��� �룍蹂닿린 �쐞移섎�� �씪移섏떆�궓�떎.
          var px = mouseX - magnifier.width() / 2;
          var py = mouseY - magnifier.height() / 2;

          //�쟻�슜
          magnifier.css({
            left: px,
            top: py,
            backgroundPosition: rx + "px " + ry + "px"
          });
        }
      }
    
    const body = document.querySelector("body");
const modal = document.querySelector(".modal");
const modalButton = document.querySelector(".modal-button");
const closeButton = document.querySelector(".close-button");
const scrollDown = document.querySelector(".scroll-down");
let isOpened = false;

const openModal = () => {
  modal.classList.add("is-open");
  body.style.overflow = "hidden";
};

const closeModal = () => {
  modal.classList.remove("is-open");
  body.style.overflow = "initial";
};

window.addEventListener("scroll", () => {
  if (window.scrollY > window.innerHeight / 3 && !isOpened) {
    isOpened = true;
    scrollDown.style.display = "none";
    openModal();
  }
});

modalButton.addEventListener("click", openModal);
closeButton.addEventListener("click", closeModal);

document.onkeydown = evt => {
  evt = evt || window.event;
  evt.keyCode === 27 ? closeModal() : false;
};


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
                        <a href="#" class="cl-effect-1">�뱶濡�</a>
                        <a href="pilot" class="cl-effect-1">�뙆�씪�읉</a>
                        <a href="#" class="cl-effect-1">吏��뿭 諛� �궇�뵪</a>
                        <a href="#" class="cl-effect-1">怨좉컼吏��썝</a>
                        <a href="#" class="cl-effect-1">而ㅻ�ㅻ땲�떚</a>
                    </span>
                     <span id="category-2" class="animated fadeInUp">
                        <a href="signIn" class="cl-effect-1">LOGIN</a>
                        <a href="#" class="cl-effect-1">MYPAGE</a>
                        <a href="basket" class="cl-effect-1">RESERVATION</a>
                   </span>
                </div>
            </div>
            <div id="header-nav"></div>
        </div>
		
		<!-- �뱶濡� �긽�꽭 �긽�떒 -->
		<div id="contents">
	       <!--�긽�뭹 �긽�꽭寃쎈줈 <section class="index-section">
	           <div class="section-container">
	               <ul class="index-ul">
	                   <li class="index-li-item">
	                       <a href="main.html">硫붿씤</a>
	                   </li>
                        <li class="index-li-item">
                           ::before
	                       <a href="drone.html">�뱶濡�</a>
	                   </li>
	                   <li class="index-li-item">
                           ::before
	                       "留ㅻ퉭2�봽濡�"
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
						<ul style="color: white; font-size: 20px;">
							<li><p>�뱶濡좊챸 : <strong>留ㅻ퉭PRO</strong></p></li>
							<hr>	
							<li><p>媛�寃� : <strong>200,000�썝</strong></p></li>
							<hr>
							<li><p>�떆由ъ쫰紐� : <strong>MAVIC</strong></p></li>
							<li><p>�젣議곗궗紐� : <strong>DJI</strong></p></li>
							<hr>
							<li><p>����뿬�젏 : 
								<span id="opr">
									<select id="operR" name="operR" style="width: 150px; height: 30px;">
										<option value="R0001">�뙆二쇱젏</option>
										<option value="R0002">�옞�떎�젏</option>
										<option value="R0003">�꽌洹��룷�젏</option>
										<option value="R0004">�빐�슫����젏</option>
										<option value="R0005">�몦�궛�젏</option>
										<option value="R0006">媛뺣쫱�젏</option>
										<option value="R0007">遺��궛�젏</option>
										<option value="R0008">���援ъ젏</option>
										<option value="R0009">�슱�궛�젏</option>
										<option value="R0010">�뿬�닔�젏</option>
										<option value="R0011">紐⑺룷�젏</option>
										<option value="R0012">�삤�궛�젏</option>
										<option value="R0013">�냽珥덉젏</option>
										<option value="R0014">�룷�빆�젏</option>
										<option value="R0015">源��룷�젏</option>
									</select>
								</span>
							</p></li>
							<li><p>�닔    �웾 :							 
								<span id="opa">
									<select id="operA" name="operA" style="width: 150px; height: 30px;">
										<option value="amt1">1</option>
										<option value="amt2">2</option>
										<option value="amt3">3</option>
										<option value="amt4">4</option>
										<option value="amt5">5</option>
										<option value="amt0">6媛� �씠�긽(蹂꾨룄 臾몄쓽)</option>
										<!-- 5媛� �씠�긽 �샃�뀡�꽑�깮 �떆 ����뿬�닔�웾 �뵲濡� 湲곗옱 or 臾몄쓽湲� �궓湲곕룄濡� �쑀�룄? -->
									</select>
								</span>
							</p></li>
							<hr>
							
							<!-- 罹섎┛�뜑 -->						
							<!--<div id="form-group1">
                                 <span class="control-label" for="datepicker"><strong style="color: white;">����뿬�씪 : </strong><span class="text-danger">*</span>
                                 <!-- <div class="col-xs-1"> -->
                                     <!-- <input id="datepicker1" type="text" name="mem_birth">
                                 <!-- </div> --> 
                                <!-- </span> 
                            </div> -->
                                 
							<!--<div id="form-group2">
                                 <span class="control-label" for="datepicker"><strong style="color: white;">諛섎궔�씪 : </strong><span class="text-danger">*</span>
                                 <!-- <div class="col-xs-1"> --> 
                                    <!-- <input id="datepicker2" type="text" name="mem_birth">
                                 <!-- </div> --> 
                                <!-- </span> 
                            </div> 
							
                            <!--  
                            <li>							
							<div>
								<span id="calendar" class="search1"><strong>����뿬�씪 : </strong></span>
								<input type="text" id="datepicker1" style="width: 150px; height: 30px;">
	               				<script src="pikaday.js"></script>
	                   			<script>
	                       			var picker = new Pikaday({ field: document.getElementById('datepicker') });
	                       		</script>
	                       	</div>	
                       		</li>
							<li>       							
							<div>
								<span id="calendar" class="search1"><strong>諛섎궔�씪 : </strong></span>
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
								<button type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>二쇰Ц�븯湲�</strong></button>
							</a>
							</li>
							<li>
							<!-- * modal : �떎瑜� �냼�뒪濡� 蹂�寃쏀븷 �삁�젙 -->
							<!-- �옣諛붽뎄�땲 �떞湲� �겢由��떆 紐⑤떖 -->	                                             
	                       <!--    <div class="scroll-down">SCROLL DOWN
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
  <path d="M16 3C8.832031 3 3 8.832031 3 16s5.832031 13 13 13 13-5.832031 13-13S23.167969 3 16 3zm0 2c6.085938 0 11 4.914063 11 11 0 6.085938-4.914062 11-11 11-6.085937 0-11-4.914062-11-11C5 9.914063 9.914063 5 16 5zm-1 4v10.28125l-4-4-1.40625 1.4375L16 23.125l6.40625-6.40625L21 15.28125l-4 4V9z"/> 
</svg></div>
<div class="container"></div>

<div class="modal">
  <div class="modal-container">
    <div class="modal-left">
      <h1 class="modal-title">�옣諛붽뎄�땲 �떞湲� �셿猷� ���:D</h1>
      <p class="modal-desc">�옣諛붽뎄�땲濡� �씠�룞�븯�떆寃좎뒿�땲源�?</p>
      
      <div class="modal-buttons">
        <button class="input-button-1">�삁</button>
        <button class="input-button-2">�븘�땲�삤</button>
      </div>  
    </div>
    <div class="modal-right">
      <img src="https://images.unsplash.com/photo-1512486130939-2c4f79935e4f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=dfd2ec5a01006fd8c4d7592a381d3776&auto=format&fit=crop&w=1000&q=80" alt="�옣諛붽뎄�땲 �떞湲� �꽦怨�">
    </div>
    <button class="icon-button close-button">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
    <path d="M 25 3 C 12.86158 3 3 12.86158 3 25 C 3 37.13842 12.86158 47 25 47 C 37.13842 47 47 37.13842 47 25 C 47 12.86158 37.13842 3 25 3 z M 25 5 C 36.05754 5 45 13.94246 45 25 C 45 36.05754 36.05754 45 25 45 C 13.94246 45 5 36.05754 5 25 C 5 13.94246 13.94246 5 25 5 z M 16.990234 15.990234 A 1.0001 1.0001 0 0 0 16.292969 17.707031 L 23.585938 25 L 16.292969 32.292969 A 1.0001 1.0001 0 1 0 17.707031 33.707031 L 25 26.414062 L 32.292969 33.707031 A 1.0001 1.0001 0 1 0 33.707031 32.292969 L 26.414062 25 L 33.707031 17.707031 A 1.0001 1.0001 0 0 0 32.980469 15.990234 A 1.0001 1.0001 0 0 0 32.292969 16.292969 L 25 23.585938 L 17.707031 16.292969 A 1.0001 1.0001 0 0 0 16.990234 15.990234 z"></path>
</svg>
      </button>
  </div>
  <button class="modal-button">Click here to login</button>
</div> -->
	                       <button id="btnBasket" type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>�옣諛붽뎄�땲 �떞湲�</strong>                               
                            </button>
                            <!-- * modal 異붽�� �삁�젙 -->
                            <script>
                                $("#btnBasket").click(function(){
                                    alert("�옣諛붽뎄�땲�뿉 �떞�븯�뼱�슂!")
                                });   
                            </script>
	                           						 
							                                                                  
	                        </li>
							<li>
							<a href="drone.html">
								<button type="button" class="btn btn-outline-dark btn-sm" style="width: 150px; height: 30px;"><strong>�눥�븨 怨꾩냽�븯湲�</strong></button>
							</a>
							</li>
						</ul>
					</div>		
				</div>
			<hr>
			
			<!-- �뱶濡� �긽�꽭 �젙蹂� -->
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
		                        <dd class="txt" style="font-size: 14px; color: #a4a4a4">�쉶�궗�냼媛�</dd>
		                        <dd class="txt">(二�)鍮꾪듃罹좏봽:DIFE</dd>
		                        <dd class="txt">�꽌�슱�듅蹂꾩떆 留덊룷援� 諛깅쾾濡� 23 援ы봽�씪�옄 3痢�</dd>
		                        <dd class="txt">02-707-1480</dd>
		                        <dd class="txt"><a href="#" style="color: #a4a4a4;">怨좉컼�꽱�꽣</a></dd>
		                        <dd class="txt"><a href="#" style="color: #a4a4a4;">�씠�슜�븞�궡</a></dd>
		                    </dl>
		                </li>
		            </ul>
		            </div>
		        </div>
		    </div>
	    </div>
    </div>
  </body>
>>>>>>> refs/remotes/origin/master
</html>