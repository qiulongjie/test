// JavaScript Document
$(document).ready(function(){
	
	
						   
	     
		 
	$(".seat_ture").mouseover(function(e){
		
		var data=this.getAttribute("colname");
		
		var dhtml=$("<div class='seat_row_info'>"+data+"</div>").css({
			 //position:'absolute',
			
			
			 top:(e.pageY-40)+'px',
			 left:(e.pageX-60)+'px'
								   
											   
											   
											   
											   });
		dhtml.appendTo('body').fadeIn();
		
        $(this).unbind('mouseout').mouseout(function(){
        $(this).attr('colname',data);
        dhtml.fadeOut(0,function(){$(this).remove()});
        })
	
							 
	})
	
	$(".seat_ture").click(function(){
		
		//$(this).addClass("seat_selected");
		$(this).toggleClass("seat_selected");
		
		
	})
	
	var isMobile=/^0?1[358]\d{9}$/;
	
	$("#submitSeat").click(function(){
		
		var list = $(".seat_selected");
		var array = new Array();
		var arr = new Array();
		
		for(var i=0;i<list.length;i++){
			array.push(list[i].getAttribute("id"));
			arr.push(list[i].getAttribute("colname"));
		}
		
		
		
		var phone=$("#phoneText").val();
		
		//alert(phone);
		
		if(!isMobile.test(phone)){
			alert("请输入正确的手机号！");
		}else{
			if(array.length==0){
				alert("您还没有选择座位！");
			}else{
				var str="/eyuancinema_vt/jsp/forestage/buyTicket_toPay?id="+array+"&phone="+phone;
				var temp=new String;
				var content=new String;
				content="<table style='width:100%;height:40px;magin-top:20px;'>" +
				"<tr><td><p style='line-height:30px;'></p></td></tr>" +
				"<tr><td><p style='line-height:30px;'></p></td></tr>" +
				"<tr><td><p style='line-height:30px;'></p></td></tr>" +
				"<tr><td><p style='line-height:30px;'></p></td></tr>" +
				"<tr><td><p style='line-height:30px;'></p></td></tr>" +
						"<tr><td><p style='text-align:center;font-size:22px;'>您已选择如下座位</p></td></tr>" +
						"<tr><td><p style='line-height:30px;'></p></td></tr>" +
						"<tr><td><p style='line-height:30px;'></p></td></tr>" +
						"<tr><td><p style='line-height:30px;'></p></td></tr>" +
						"<tr><td><span style='font-size:15px;text-align:center;'>"+arr.join(",")+"</span></td></tr>" +
								"<tr><td><p style='line-height:30px;'></p></td></tr>" +
								"<tr><td><p style='line-height:30px;'></p></td></tr>" +
								"<tr><td><p style='line-height:30px;'></p></td></tr>" +
								"<tr><td><p style='text-align:center;font-size:13px;'>点击支付，将为您锁定座位并前往支付页面，请在15分钟内支付！</p></td></tr>" +
								"<tr><td><p style='text-align:center;font-size:13px;'>点击取消，返回重新选择座位</p></td></tr>" +
								"<tr><td><p style='line-height:30px;'></p></td></tr>" +
								"<tr><td><p style='line-height:30px;'></p></td></tr>" +
								"<tr><td><p style='text-align:center;font-size:25px;'><a href="+str+">支付</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascrip:void(0)' id='qu'>取消</a></p></td></tr>" +
										"</table>";
				//$("#content").text(arr.join(","));
				temp="<div id='wind' style='display:none;position:absolute;width:400px;height:200px;z-index:200;background:#fff;'>" +
						content+"</div>";
				$("body").append(temp);
				
				var screenwidth, screenheight, mytop, getPosLeft, getPosTop
			    screenwidth = $(window).width();
			    screenheight = $(window).height();
			    //获取滚动条距顶部的偏移
			    mytop = $(document).scrollTop();
			    //计算弹出层的left
			    getPosLeft = screenwidth / 2 - 200;
			    //计算弹出层的top
			    getPosTop = screenheight / 2 - 150;
			    //css定位弹出层
			    $("#wind").css({ "left": getPosLeft, "top": getPosTop });
			    //当浏览器窗口大小改变时
			    $(window).resize(function () {
			        screenwidth = $(window).width();
			        screenheight = $(window).height();
			        mytop = $(document).scrollTop();
			        getPosLeft = screenwidth / 2 - 200;
			        getPosTop = screenheight / 2 - 150;
			        $("#wind").css({ "left": getPosLeft, "top": getPosTop + mytop });
			    });
			    //当拉动滚动条时，弹出层跟着移动
			    $(window).scroll(function () {
			        screenwidth = $(window).width();
			        screenheight = $(window).height();
			        mytop = $(document).scrollTop();
			        getPosLeft = screenwidth / 2 - 200;
			        getPosTop = screenheight / 2 - 150;
			        $("#wind").css({ "left": getPosLeft, "top": getPosTop + mytop });
			    });
			    
				    
					$("#wind").fadeIn("fast");			
					var docheight=$(document).height();
					$("body").append("<div id='grey' style='background:#000;display:block;z-index:100;width:100%;position:absolute;top:0;left:0;'></div>");
					$("#grey").css({"opacity":"0.5","height":docheight});
					
					$("#qu").click(function(){
						$("#wind").hide();
						$("#grey").remove();
						//$(".seat_selected").replaceClass("seat_ture");
						//$(".seat_selected").toggleClass("seat_ture");
						
						return false;
					});
				
				
			}
		}
			
		
		
		
		//var data='id='+array;
		
		
		
	
	   
		
		
	})
					   
});

