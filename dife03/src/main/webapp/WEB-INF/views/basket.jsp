<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <!--JSTL 사용  -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
    <!-- 기본 css -->
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/layout.css">
    <link rel="stylesheet" href="css/orders/basket.css">
    <!-- 제이쿼리 플러그인 -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <script type="text/javascript">
    $(function(){
    	
    	//로그인 로그아웃 전환
    	var mem_id = "${mem_id}";
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
    	
    	var bas_no;
    	var btn_del;
    	 var chk;
    	 //insert를 위한 변수준비
    	 var final_sum = 0;
    	 var sum= 0;
    	 var all_amount= 0;
    	 var mem_point= 1;
    	 var reserve_fund=0;
    	 
    	/* 날자를 포맷하기위한 function */
    	function date_to_str(format)
		{
		    var year = format.getFullYear();
		    var month = format.getMonth() + 1;
		    if(month<10) month = '0' + month;
		    var date = format.getDate();
		    if(date<10) date = '0' + date;
		    return year + "-" + month + "-" + date;
		}
    		/*체크박스 변환 */
    	 	$(".chk_all").change(function(){
    	 		 chk = $(this).is(":checked");//.attr('checked');
    	         if(chk) {$("input:checkbox[name=cart_no]").prop('checked', true);
    	         sum=final_sum;
    	      
    	         $("#sum_price").text("주문금액: "+sum+"원");
    	         }
    	         else {$("input:checkbox[name=cart_no]").prop('checked',false);
    	         sum=0;
    	       
    	         $("#sum_price").text("주문금액: 0원");
    	         }	
    	 	});
    		/* 각 상품 체크박스 변환 checked*/ 
    		
    		$(".cart_no").click(function(){
    			price=$(this).attr("price");
				amount=$(this).attr("amount");
    			
    		})
    	
    	/*list를 처리하는 function*/
        	function getList(){    
     		$.ajax({url:"/basketList.do",async : false,dataType:"json",success:function(data){
     			$("#table_content").empty();
     			
	    		$.each(data,function(idx,item){
	    			
	    			var rental = new Date(item.bas_rental);
	    			var re_date = new Date(item.bas_return);
	    			if(idx == 1)
	    				{
	    					
	    					mem_point = Number(item.mem_point);
	    				}
	    			console.log(item.pos_no);
	    			tr=$("<tr></tr>");
	    			
	    			var td1=$("<td></td>").html(item.bas_no);
	    			var td2=$("<td></td>");
	    			var input=$("<input type='checkbox' name='cart_no' checked='checked' class='cart_no' data-cartNum="+item.bas_no+">").attr({"pos_no":item.pos_no,"mem_no":item.mem_no,"ren_date":rental,"ret_date":re_date,"point":item.point,"amount":item.bas_amount,"price":item.bas_price});
	    			$(td2).append(input);
	    			$(input).click(function(){
	    					  $(".chk_all").prop("checked", false);	
	    	     	});
	    			var td3;
	    			var td4;
	    			var td5;
	    			var td6;
	    			var td7;
	    			var td8;
	    			var product_img;
	    			var p1;
	    			var p2;
	    			var p3;
	    			var p4;
	    			var p5;
	    			var p6;
	    			
	    			rental = date_to_str(rental);
	    			re_date=date_to_str(re_date);
	    			/* sum 할인률 및 하단 정보 관련 처리 */
	    			sum +=Number(item.bas_price);
	    			all_amount += Number(item.bas_amount);
	    			reserve_fund += Number(item.point);
	    			/*  */
	    		
	    			
	    			if(item.dro_name !== null)
	    				{
	    					td3=$("<td></td>");
	    					product_img=$("<img/>").attr({"src":"img/"+item.dro_photo,"width":"62","height":"68"});
	    					$(td3).append(product_img);
	    					p1=$("<p></p>").html(item.dro_name+"/"+item.dro_series);
	    					p2=$("<p></p>").html("대여일:"+rental+"  "+"반납일:"+re_date);
	    					td4=$("<td></td>");
	    					$(td4).append(p1,p2);
	    					td5=$("<td></td>");
	    					p3 = $("<p></p>").html(item.bas_price);
	    					$(td5).append(p3);
	    					p4= $("<p></p>").html(item.bas_amount);
	    					td6=$("<td></td>");
	    					$(td6).append(p4);
	    					td7=$("<td></td>");
	    					p5=$("<p></p>").html(item.bas_price);
	    					p6=$("<p></p>").html(item.point);
	    					$(td7).append(p5,p6);
	    					td8 = $("<td></td>");
	    					btn_del= $("<button style='padding: 5px; border-radius: 5px;' class='btn_del'>삭제</button>");
	    					$(td8).append(btn_del);	
	    					hidden1 = $("<input type='hidden' name='pos_no'>")
	    					
	    				}
	    			else
	    				{
	    				td3=$("<td></td>");
    					product_img=$("<img/>").attr({"src":"img/"+item.dro_photo,"width":"62","height":"68"});
    					$(td3).append(product_img);
    					p1=$("<p></p>").html(item.dro_name+"/"+item.dro_series);
    					
    					p2=$("<p></p>").html("대여일:"+rental+"  "+"반납일:"+re_date);
    					td4=$("<td></td>");
    					$(td4).append(p1,p2);
    					td5=$("<td></td>");
    					p3 = $("<p></p>").html(item.bas_price);
    					$(td5).append(p3);
    					p4= $("<p></p>").html(item.bas_amount);
    					td6=$("<td></td>");
    					$(td6).append(p4);
    					td7=$("<td></td>");
    					p5=$("<p></p>").html(item.bas_price);
    					p6=$("<p></p>").html(item.point);
    					$(td7).append(p5,p6);
    					td8 = $("<td></td>");
    					btn_del= $("<button style='padding: 5px; border-radius: 5px;' class='btn_del'>삭제</button>");
    					$(td8).append(btn_del);
	    				}
	    			$(tr).append(td1,td2,td3,td4,td5,td6,td7,td8);
	    			$("#table_content").append(tr);
	    			}); 
	    		/* foreach종료 */
	    		/*가격처리*/
    			$("#sum_price").text("주문금액: "+sum+"원");
    			final_sum=sum;
    	
    			/*  */
    			
    			/* check node 처리 */
    			
    			$("input[name='cart_no']").click(function(){
    				
    				$(this).each(function(){
    					 price_node=Number($(this).attr("price"));
    					if($(this).is(":checked"))
    						{
    							sum = sum +price_node;
    						}
    					else{
    						sum =sum - price_node;
    					}
    					
    					 $("#sum_price").text("주문금액: "+sum+"원"); 
    					
    					
    				});
    				
    			});
    			/*  */
    			
    			/*insert orders,ordersdetail 처리*/
    	    	$("#order").click(function(){
    	    		var jumun = new Array();
					
				
    		  		$("input[name='cart_no']:checked").each(function(){
    					price=Number($(this).attr("price"));
    					amount=Number($(this).attr("amount"));
    		  			pos_no = $(this).attr("pos_no");
    		  			point = Number($(this).attr("point"));
    					mem_no = $(this).attr("mem_no");
    					ren_date = $(this).attr("ren_date");
    					ret_date = $(this).attr("ret_date");
    					
    					 console.log(sum);
       				  	 console.log(all_amount);
       				  	 console.log(reserve_fund);
       				 	 console.log(mem_point);
       				 	all_amount += amount;
       				 	final_sum += price;
    		  			jumunlist={"pos_no":pos_no,"det_rental":ren_date,"det_return":ret_date,"det_amount":amount,"det_price":price};	
    		  			jumun.push(jumunlist);
    				});
    		  		obj ={"jumun":jumun,"ord_price":sum,"ord_amount":all_amount,"mem_no":mem_no}
    		  		console.log(obj)
    		  		
    		  		if(jumun.length == 0)
		  			{
		  				alert("물품을 선택해주세요.");
		  			}
    		  		else{
    		  			 $.ajax({url:"/jumunInsert.do",type:"post",data:{"JumunVo":obj},success:function(data){
    		  				 alert("ajax통신");
    		  			/* if(data === 1)
    		  				{
    		  				location.href="basket";
    		  				} */
    		  		}}) 
    		  		}
    		  		console.log(jumun);
    		  	
    		  		
    		  	
    	    	});
    	    	/* orders insert,ordersdetial insert end */

	    	}})
    	/*ajax 종료  */
	  	
    	
    	    }    
        /*list를 처리하는 function getList end  */
 		getList();   
    	/* 수량처리에 대한 스크립트,제이쿼리문 및 전역변수 */
    	var arr = $("table").find("p_amount")
		$(".amountAdd").click(function(){
			alert("Aok"+amount)
		});
    	$(".amountMinus").click(function(){
    		alert("Mok"+amount)
    	});
    	/*수량 처리 end  */
    	
    	/*장바구니 삭제버튼 클릭시.*/
    
	    		 $(".btn_del").click(function(){ 
	    				var btn_del = $(this);
	    				//btn_del.parent() : btn_del의 부모는 <td>이다.
	    				// btn_del.parent().parent() : <td>의 부모이므로 <tr>이다.
	    				var tr = btn_del.parent().parent();
	    				var td = tr.children();
	    				bas_no = td.eq(0).text();
	    				price = td.eq(4).text();
	    				amount=td.eq(3).text();
	    				var check = confirm("정말로 삭제하시겠습니까?");
		 	    		if(check == true)
		 	    			{			
		 	    			
			    				$.ajax({url:"/deleteBasket.do",dataType:"json",data:{"bas_no":bas_no},success:function(data){
			    					if(data == "1")
			    						{
			    						tr.remove();
			    						all_amount -= amount;
			    						sum -= price;
			    						$("#sum_price").text("주문금액:"+sum+"원");
			    						}
			    				}})
		 	    			}
	    				
	    				
	    			}); 
   
	    			/*checkbox delete처리 end */
    			/* checkbox list*/
    			$("#del_chk").click(function(){
					 	var confirm_val = confirm("정말 삭제하시겠습니까?");
						
						if(confirm_val) {
							var checkArr = new Array();

				  		$("input[name='cart_no']:checked").each(function(){
				  			
				    		checkArr.push($(this).attr("data-cartNum"));
						});
				  	
				  		$.ajax({url:"/deleteListBasket.do",type:"post",data:{"checkList":checkArr},success:function(data){
				  			if(data === 1)
				  				{
				  				location.href="basket";  
				  				}
				  		}})
					}
    			});

    			/*  */
    			/* 초기 page 변수값 설정 */
    			$("#sum_price").text("주문금액: "+final_sum+"원");
    			/*  */
    		
    			
        	/**/
	    			 
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
                        <a href="drone" class="cl-effect-1">드론</a>
                        <a href="pilot" class="cl-effect-1">파일럿</a>
                        <a href="#" class="cl-effect-1">지역 및 날씨</a>
                        <a href="#" class="cl-effect-1">고객지원</a>
                        <a href="#" class="cl-effect-1">커뮤니티</a>
                    </span>
                     	<span id="category-2" class="animated fadeInUp">
                        <a id="sign" class="cl-effect-1"></a>
                        <a href="mypage_orders" class="cl-effect-1">MYPAGE</a>
                        <a href="basket.do" class="cl-effect-1">RESERVATION</a>
                   </span>
                </div>
            </div>
            <div id="header-nav"></div>
        </div>
        <!-- //header -->
        <!-- //contents -->
        <div id="contents">
        <!-- 세션 영역        -->
        <div id="content-session">
            <div class="container">
                 <div class="container-top">장바구니</div>
                <div class='main-session'>
                   <p style="font-size: 20px; font-weight: 700;">상품 목록</p><br>
                <!--테이블 영역      -->
                        <table id='cart_table'>
                             <colgroup>
                                 <col>
                                 <col>
                                 <col>
                                 <col width="35%">
                                 <col width="20%">
                                 <col>
                                 <col>
                                 <col>
                             </colgroup>
			<thead>
                            <th>번호</th>
                            <th style="cursor: pointer"><input type="checkbox" class="chk_all" checked='checked'></th>
                            <th></th>
                            <th>상품명</th>
                            <th>판매가</th>
                            <th>수량</th>
                            <th>주문금액&nbsp;(적립금)</th>
                            <th>주문관리</th>
                        </thead>
                        <tbody id="table_content">
                      		</tbody>
                    </table>
                    <div class="delete-btn-area">
                    <span id="sum_price"></span>
					<a href="javascript:void(0)" id="del_chk" class="a_btn">선택삭제</a>
					<a href="javascript:void(0)" id="order" class="a_btn">주문하기</a>
				</div>
                        </div>
                </div>
            </div>
        
<!--    //table-->
          <!--    content_footer-->
       <div id='content_footer'>
            <div class="container" style="color: white">
              <!--  <div class="total_product">
                <span class="info">쿠폰 사용 여부</span> <input type="checkbox" style="border:10px; padding: 5px; margin: 5px;"><span class="info">쿠폰 선택</span>
                <select style="margin: 5px; width: 500px;"></select><br>
                
               </div> -->
                <div class="total_product">
               
                    <!-- <span class="info">적립금</span><span class="info"> 원</span>
                    
                </div>
                 <div class="total_product">
                     <span class="info">보유 적립금 사용</span><span><input type="checkbox"></span><span class="info"><input type="text" value="7000" style="text-align: center;width:80px;"> 원</span><span class="info">사용가능한 적립금</span><span class="info">8900원</span>
                </div>
                <div class="total_product">
                    <span class="info">할인금액</span><span class="info">50,000원</span>
                </div>
                 <div class="total_product" style="border-bottom: 0;">
                    <span class="info">최종 결제금액</span><span class="info" id="fin_price"></span>
                </div> -->
           </div>
       </div>
       </div>
       </div>
    <!-- //contents -->
       
        <!-- footer -->
        <div id="footer">
            <div id="footer-nav"></div>
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
