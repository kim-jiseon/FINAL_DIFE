<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

>>>>>>> refs/remotes/origin/master
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, , minimum-scale=1, maximum-scale=1">
<title>DIFE.com</title>
<<<<<<< HEAD
<!-- ����Ʈ -->
=======
<!-- 웹폰트 -->
<!-- 
>>>>>>> refs/remotes/origin/master
<link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=RixGo+L:400" />
 -->
<!-- fadeIn -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<<<<<<< HEAD
<!-- �⺻ ��ũ -->
=======
    <!-- 기본 링크 -->
>>>>>>> refs/remotes/origin/master
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/drone/drone.css">
<<<<<<< HEAD
<!-- �޷� -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="css/datepicker/datepicker.min.css" rel="stylesheet" type="text/css">
<script src="js/datepicker/datepicker.js"></script>
<!-- Include language -->
<script src="js/datepicker/i18n/datepicker-ko.js"></script>
<!-- ī�װ� �˻� ������ -->
<link rel="stylesheet" href="css/drone/drone.css">
=======
    <!-- 제이쿼리 플러그인 -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <!-- datepicker -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link href="css/datepicker/datepicker.min.css" rel="stylesheet" type="text/css">
    <script src="js/datepicker/datepicker.js"></script>
<!-- Include language -->
<script src="js/datepicker/i18n/datepicker-ko.js"></script>
<!-- ī�װ� �˻� ������ -->
>>>>>>> refs/remotes/origin/master
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  
<script type="text/javascript">
$(function() {
	var itemsPerPage = 8;
          
<<<<<<< HEAD
             /* Demo purposes only */
  $(".hover").mouseleave(
    function () {
      $(this).removeClass("hover");
    }
  );
=======
    /* ī�װ�(�ø����) ���콺 hover */
    $(".hover").mouseleave(function () {
        $(this).removeClass("hover");
    });
    
    /* ī�װ�(�ø����,����) Ŭ�� �� �������� */
    var searchSp = document.getElementById("search1");
    var listSp = document.getElementById("sub-menu");
    
    listSp.style.display = "none";
    searchSp.addEventListener("click",(event){
        if(listSp.style.display == "none"){
            listSp.style.display = "block";
        }
        else{
            listSp.style.display = "none";
        }
    });
>>>>>>> refs/remotes/origin/master
           
/* 
<<<<<<< HEAD
            // ����¡ ó�� : ��������ư �߰�
=======
            // ����¡ ó�� : ��������ư �߰�
>>>>>>> refs/remotes/origin/master
            $.get("GetTotalDroneCount", function(data) {
                var totalItem = Number(data);
                var totalPage = Math.ceil(totalItem / itemsPerPage);
                for (var i = 1; i <= totalPage; i++) {
                    var addPage = $("<li/>").html(i).attr("dataPage", i);
                    $("#btnPaging").append(addPage);
                    $(addPage).click(function() {
                        var nowPage = $(this).attr("dataPage");
                        getItems(nowPage, itemsPerPage);
                    });
                }
            });
<<<<<<< HEAD
            // ����¡ ó�� : ��� �ʱ�ȭ�� ��ü ��� select
=======
            // ����¡ ó�� : ��� �ʱ�ȭ�� ��ü ��� select
>>>>>>> refs/remotes/origin/master
            function getItems(nowPage, itemsPerPage) {
                $("#content2").empty();
                $.getJSON("GetDroneList", {
                    nowPage: nowPage,
                    perPage: itemsPerPage
                }, function(data) {
                    $.each(data, function(idx, item) {
                        var div = $("<div></div>").addClass("item");
                        var fname = $("<img/>").attr({
                            "src": "img/drone/" + item.dro_photo,
                            width: "100",
                            height: "250"
                        });
                        var name = $("<p></p>").html(item.dro_name);
                        var sName = $("<p></p>").html(item.dro_series);
                        var price = $("<p></p>").html(item.pos_price);
                        $(div).append(fname, name, sName, price);
                        $("#content2").append(div);
                    });
                });
                $("#content2").show();
            }
            getItems(1, itemsPerPage);
<<<<<<< HEAD
            // selectRentalDate �޼��� �����
            // �뿩�� Ķ����
=======
            // selectRentalDate �޼��� �����
            // �뿩�� Ķ����
>>>>>>> refs/remotes/origin/master
            $("#datepicker").dialog({
            	buttons:{
            		submit:function(){
            			var data = $("#header-nav").serialize();
            			$.ajax({url:"selectRentalDate",type:"POST",data:data,success:function(r){
            				alert(r);
            			}});
            		},
            		reset:function(){
<<<<<<< HEAD
            			alert("��� ����");
=======
            			alert("��� ����");
>>>>>>> refs/remotes/origin/master
            		},
            		cancle:function(){
<<<<<<< HEAD
            			alert("���");
=======
            			alert("���");
>>>>>>> refs/remotes/origin/master
            		},
            	},
            	modal:false
        });
        $("#calendar").datepicker();*/
        
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
<<<<<<< HEAD
                        <a href="layout.html"><img src="img/logo/logo_white.png" id="logo"></a>
                        <a href="#" class="cl-effect-1">���</a>
                        <a href="#" class="cl-effect-1">���Ϸ�</a>
                        <a href="#" class="cl-effect-1">���� �� ����</a>
                        <a href="#" class="cl-effect-1">������</a>
                        <a href="#" class="cl-effect-1">Ŀ�´�Ƽ</a>
                    </span>
                     <span id="category-2" class="animated fadeInUp">
                        <a href="#" class="cl-effect-1">LOGIN</a>
                        <a href="#" class="cl-effect-1">MYPAGE</a>
                        <a href="#" class="cl-effect-1">RESERVATION</a>
=======
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
                        <a href="basket" class="cl-effect-1">RESERVATION</a>
>>>>>>> refs/remotes/origin/master
                   </span>
                </div>
            </div>
<<<<<<< HEAD
        </div>
        <!-- //header -->
        
        <!-- �󼼰˻� -->
=======
        
>>>>>>> refs/remotes/origin/master
        <div id="header-nav">
<<<<<<< HEAD
            <div class="container" style="color: #242424; width: 1100px;">
                <ul class="search">
                    <div class="block">
                        <div id="calendar">
                            �뿩�� �� �ݳ���&nbsp;&nbsp;
                                <input type="text" data-range="true"
                                            data-multiple-dates-separator=" - " data-language="ko"
                                            class="datepicker-here" style="width:180px; height: 25px;"/>
                        </div>
                    </div>
             
						<!-- <input type="text" id="datepicker" style="width: 150px; height: 27px; border-radius: 5px; margin-top: auto; margin-bottom: auto;" placeholder="�뿩���� �����ϼ��� :D">
=======
                <ul class="search">
                    <div class="block">
                        <div id="calendar">
                           대여일<i class="fa fa-calendar-check-o" aria-hidden="true"></i>&nbsp;&nbsp;
                                <input type="text" data-range="true"
                                            data-multiple-dates-separator=" - " data-language="ko"
                                            class="datepicker-here" style="width:180px; height: 25px;"/>
                        </div>
                    </div>
             
						<!-- <input type="text" id="datepicker" style="width: 150px; height: 27px; border-radius: 5px; margin-top: auto; margin-bottom: auto;" placeholder="�뿩���� �����ϼ��� :D">
>>>>>>> refs/remotes/origin/master
               				<script src="pikaday.js"></script>
                   			<script>
                       			var picker = new Pikaday({ field: document.getElementById('datepicker') });
                       	</script> -->
                       	
<<<<<<< HEAD
                    <li class="search1">�ø����<i class="fa fa-plane" aria-hidden="true"></i>
=======
                    <li class="search1">시리즈명<i class="fa fa-plane" aria-hidden="true"></i>
>>>>>>> refs/remotes/origin/master
                        <div class="sub-menu-1">
<<<<<<< HEAD
                            <ul>
                                <li class="hover-dro">�ź�<i class="fa fa-angle-right" aria-hidden="true"></i>
=======
                            <ul id="sub-menu">
                                <li class="hover-dro">매빅<i class="fa fa-angle-right" aria-hidden="true"></i>
>>>>>>> refs/remotes/origin/master
                                    <div class="sub-menu-2">
                                        <ul>
                                            <li>MAVIC 2 PRO</li>
                                            <li>MAVIC PRO</li>
                                            <li>MAVIC 2 ENTERPRISE UNIVERSAL</li>
                                            <li>MAVIC 2 ENTERPRISE DUAL</li>
                                            <li>MAVIC AIR</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="hover-dro">���<i class="fa fa-angle-right" aria-hidden="true"></i>
                                    <div class="sub-menu-2">
                                        <ul>
                                            <li>BEBOP 2 SINGLE</li>
                                            <li>BEBOP 2+SKY CONTROLLER</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="hover-dro">����ũ<i class="fa fa-angle-right" aria-hidden="true"></i>
                                    <div class="sub-menu-2">
                                        <ul>
                                            <li>MINI SPARK</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="hover-dro">�ν����̾�<i class="fa fa-angle-right" aria-hidden="true"></i>
                                    <div class="sub-menu-2">
                                        <ul>
                                            <li>INSPIRE 1V2 1��</li>
                                            <li>INSPIRE 1V2 2��</li>
                                            <li>INSPIRE 1 PRO 1��</li>
                                            <li>INSPIRE 1 PRO 2��</li>
                                            <li>INSPIRE 2 ZENMUSE X5S 1��</li>
                                            <li>INSPIRE 2 ZENMUSE X5S 2��</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="hover-dro">����<i class="fa fa-angle-right" aria-hidden="true"></i>
                                    <div class="sub-menu-2">
                                        <ul>
                                            <li>PHANTOM 4</li>
                                            <li>PHANTOM 4 PRO</li>
                                            <li>PHANTOM 3 ADVANCED</li>
                                            <li>PHANTOM 3 PROFESSIONAL</li>
                                        </ul>
                                    </div>
                                </li>                                             
                            </ul>
                        </div>
                    </li>
                    <li class="search1">����<i class="fa fa-tags" aria-hidden="true"></i>
                        <div class="sub-menu-1">
                            <ul id="sub-menu">
<<<<<<< HEAD
                                <li class="hover-dro">~ 10����</li>
                                <li class="hover-dro">10 ~ 20����</li>
                                <li class="hover-dro">20���� ~</li>
=======
                                <li class="hover-dro">~ 10만원</li>
                                <li class="hover-dro">10 ~ 20만원</li>
                                <li class="hover-dro">20만원 ~</li>
>>>>>>> refs/remotes/origin/master
                            </ul>
                        </div>
                    </li>                  
<<<<<<< HEAD
                    <button id="btnSch">�˻�<i class="fa fa-search" aria-hidden="true"></i></button>             
=======
                    <button id="btnSch">검색<i class="fa fa-search" aria-hidden="true"></i></button>             
>>>>>>> refs/remotes/origin/master
                </ul>
        </div>
<<<<<<< HEAD
        
        <!-- �󼼰˻���� ��� -->
        <div id="contents" class="container">
		    
				<div id="drone-grid">
					<!-- 1��° �ܶ� -->
=======
        </div>
          <!-- //header -->
        <!-- contents -->
        <div id="contents">
        	<div class="container">
				<div id="drone-grid">
					<!-- 1번째 단락 -->
>>>>>>> refs/remotes/origin/master
	                <div class="block">
                        <figure class="block">
                            <img src="img/drone/D0001.png" alt="�ź�2����"/>
                              <figcaption>
                              <p>1��ġ ���� ž�� / �� ���� ��ֹ� ȸ�� ���� ž�� / APAS 2.0 ž��<span> / 100,000<i class="fas fa-won-sign"></i></span></p>
                              <!-- <p>DJI</p><br>
                              <p>270,000��</p> -->
                                <div class="heading">
                                  <h2><span>MAVIC</span> 2 PRO</h2>
                                </div>
                              </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>		              
	                </div>
	                <div class="block">
                        <figure class="block">
                            <img src="img/drone/D0002.png" alt="�ź�����" />
                                <figcaption>
                                  <p>���ݴ�� �ְ��� ������ �ڶ��ϴ� �Թ��� or �߱��ڿ� ���<span> / 200,000<i class="fas fa-won-sign"></i></span></p>
                                  <!-- <p>DJI</p><br>
                                  <p>270,000��</p> -->
                                    <div class="heading">
                                      <h2><span>MAVIC</span> PRO</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>       
	                </div>
	              <div class="block">
                        <figure class="block">
                            <img src="img/drone/D0003.png" alt="����4" />
                                <figcaption>
                                    <p>4K�Կ� / ��ֹ� �ڵ� ȸ�� ��� / ���ڸ���Ʈ�� ���� ��� ž��<span> / 100,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000��</p> -->
                                    <div class="heading">
                                        <h2><span>PHANTOM</span> 4</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>            
	                </div>
	                <div class="block">
                        <figure class="block">
                            <img src="img/drone/D0004.png" alt="����4����" />
                                <figcaption>
                                    <p>1��ġ 20 �ް��ȼ� Exmor R CMOS ������ ž���� ���ο� DJI ���� ī�޶� / ����� ����ð� / ���� ����Ʈ�� ��ɵ�<span> / 150,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000��</p> -->
                                    <div class="heading">
                                        <h2><span>PHANTOM</span> 4 PRO</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>              
	                </div>
	          
	                <!-- 2��° �ܶ� -->
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0005.png" alt="����3���꽺��" />
                                <figcaption>
                                    <p>FULL-HD �Կ��� �����ϸ� ���� ���κ����� ������ �ǳ������� ���� ���������� DJI ����3 ���꽺��<span> / 250,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000��</p> -->
                                    <div class="heading">
                                        <h2><span>PHANTOM</span> 3 ADVANCED</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>           
	                </div>                
	                <div class="block">	                
	                   <figure class="block">
                            <img src="img/drone/D0006.png" alt="����3������ų�" />
                                <figcaption>
                                    <p>4K ī�޶�, �ǽð� HD����, �Ϻ��� ���� ����, �ʺ��ڵ��� ���� ������ ���� ���� ���, ���� �����Ŵ� �ý���<span> / 300,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000��</p> -->
                                    <div class="heading">
                                        <h2><span>PHANTOM</span> 3 PROFESSIONAL</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>               
	                </div>	                
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0007.png" alt="�̴Ͻ���ũ" />
                                <figcaption>
                                    <p>���� or �̴� ���̽� ���, 2�� ���� ž��! 2KM ���� ����, DJI ��� ȣȯ ����(���͸��� ������ �߰��� FLY MORE COMBO ��Ʈ)<span> / 100,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000��</p> -->
                                    <div class="heading">
                                        <h2><span>SPARK</span> MINI</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>             
	                </div>	                
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0008.png" alt="�ź�2������������ ���Ϲ���" />
                                <figcaption>
                                    <p>�߰� ��⸦ ��������ִ� Ȯ�� ��Ʈ�� �Բ� �پ��� �߿� ������ ȿ������ ����������!<span> / 150,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000��</p> -->
                                    <div class="heading">
                                        <h2><span>MAVIC</span> 2 ENTERPRISE UNIVERSAL</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>            
	                </div>
	                
	                <!-- 3��° �ܶ� -->
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0009.png" alt="�ź�2������������ ���" />
                                <figcaption>
                                    <p>FLIR ��ȭ�� ī�޶� ��ĵ� ����� �ź�2 ������������<span> / 200,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000��</p> -->
                                    <div class="heading">
                                        <h2><span>MAVIC</span> 2 ENTERPRISE DUAL</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>          
	                </div>                
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0010.png" alt="�ź�AIR"/>
                                <figcaption>
                                    <p>���̽� ���������� �޴뼺 UP! ���� ������ ���õ� ���������� ���Ӱ� ��õ� DJI�� �ֽ� ���<span> / 250,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000��</p> -->
                                    <div class="heading">
                                        <h2><span>MAVIC</span> AIR</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>            
	                </div>	                
	                <div class="block">
	                    <figure class="block">
                            <img src="img/drone/D0011.png" alt="�ν����̾�1V2 1��"/>
                                <figcaption>
                                    <p>4K(UHD) ȭ���� ����, 1200�� ȭ��, ��鸲�� ����ִ� ���� ������ ���� �װ��Կ� ���<span> / 130,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000��</p> -->
                                    <div class="heading">
                                        <h2><span>INSPIRE</span> 1V2 1��</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>            
	                </div>	                
	                <div class="block">
	                   <figure class="block">
                            <img src="img/drone/D0012.png" alt="�ν����̾�1V2 2��"/>
                                <figcaption>
                                    <p>4K(UHD) ȭ���� ����, 1200�� ȭ��, ��鸲�� ����ִ� ���� ������ ���� �װ��Կ� 2�� ���� ��Ű��, ����� �����Կ��� 1�� ����<span> / 160,000<i class="fas fa-won-sign"></i></span></p>
                                      <!-- <p>DJI</p><br>
                                      <p>270,000��</p> -->
                                    <div class="heading">
                                        <h2><span>INSPIRE</span> 1V2 2��</h2>
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>           
	                </div>
	                
<<<<<<< HEAD
	                <!-- 4��° �ܶ� -->
=======
	                <!-- 4��° �ܶ� -->
>>>>>>> refs/remotes/origin/master
	                <!--<div class="block">
	                    <figure class="block">
<<<<<<< HEAD
                            <img src="img/drone/D0013.png" alt="�ν����̾�1PRO 1��"/>
=======
                            <img src="img/drone/D0013.png" alt="�ν����̾�1PRO 1��"/>
>>>>>>> refs/remotes/origin/master
                                <figcaption>
<<<<<<< HEAD
                                    <p>�ν����̾� 1 ���� �������. PIX4D 15�� �����̿�� ����!<span> / 100,000<i class="fas fa-won-sign"></i></span></p>
=======
                                    <p>�ν����̾� 1 ���� �������. PIX4D 15�� �����̿�� ����!<span> / 100,000<i class="fas fa-won-sign"></i></span></p>
>>>>>>> refs/remotes/origin/master
                                      <!-- <p>DJI</p><br>
<<<<<<< HEAD
                                      <p>270,000��</p> -->
=======
                                      <p>270,000��</p> -->
>>>>>>> refs/remotes/origin/master
                                   <!-- <div class="heading">
<<<<<<< HEAD
                                        <h2><span>INSPIRE</span> 1PRO 1��</h2>
=======
                                        <h2><span>INSPIRE</span> 1PRO 1��</h2>
>>>>>>> refs/remotes/origin/master
                                    </div>
                                </figcaption>
                            <a href="drone_dt.html"></a>
                        </figure>           
	                </div> -->
<<<<<<< HEAD
	               
	            
			</div>
		</div>
=======
				</div>
>>>>>>> refs/remotes/origin/master
		
<<<<<<< HEAD
		<!-- ����¡ ó�� -->
		<div class="btnPaging">
=======
		
				<!-- 페이징 -->
					<div class="btnPaging">
>>>>>>> refs/remotes/origin/master
                        <ul class="pagination" style="font-size: 17px;">
                            <li>
                                <a href="#"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                                <a href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#">4</a>
                                <a href="#">5</a>
                                <a href="#"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </li>
                        </ul>
                    </div>
<<<<<<< HEAD

        <div id="footer">
             <!-- �巡�� �� �����ϱ� -->
            <div id="compareChatDrone"></div>

            <div id="footer-nav">
                <div class="container"></div>
=======
>>>>>>> refs/remotes/origin/master
            </div>
<<<<<<< HEAD
            <div id="footer-info">
                <div class="container">
                    <ul class="info">
                        <li>
                            <dl>
                                <dd class="txt" style="font-size: 14px; color: #a4a4a4;">ȸ��Ұ�</dd>
                                <dd class="txt">(��)��Ʈķ��:DIFE</dd>
                                <dd class="txt">����Ư���� ������ ����� 23 �������� 3��</dd>
                                <dd class="txt">02-707-1480</dd>
                                <dd class="txt"><a href="#" style="color: #a4a4a4;">������</a></dd>
                                <dd class="txt"><a href="#" style="color: #a4a4a4;">�̿�ȳ�</a></dd>
                            </dl>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</body></html>
=======
            <!-- //container -->
		</div>
		<!-- //contents -->
		<!-- footer -->
		<div id="footer">
			<div id="footer-nav">
				<!-- 드론 비교하는 건 footer-nav에서 만들면 될거 같습니다!! css도 footer-nav 높이 설정하셔서 하시면 될거 같아요. -->
				<div id="compareChatDrone"></div>
			</div>
			<div id="footer-info">
				(주)비트캠프:DIFE
				<div id="footer_info1">
					<p>서울특별시 마포구 백범로 23 구프라자 3층</p>
					<p>02-707-1480</p>
					<p>
						<a href="#">고객센터</a>
					</p>
					<p>
						<a href="#">이용안내</a>
					</p>
				</div>
			</div>
		</div>
		<!-- //footer -->
	</div>
</body>
</html>
>>>>>>> refs/remotes/origin/master
