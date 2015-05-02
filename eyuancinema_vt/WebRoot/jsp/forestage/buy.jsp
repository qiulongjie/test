<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*,java.util.*,com.eyuan.domain.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>e缘电影院</title>
			<link href="../../css/ticket.css" rel="stylesheet" type="text/css">
				<link href="../../css/publicpack.css" rel="stylesheet"
					type="text/css" />
				<link rel="stylesheet" type="text/css"
					href="../../css/index_02_table.css" title="default">

					
					<script type="text/javascript" src="../../js/jquery-1.4.2.js"></script>
					<script type="text/javascript" src="../../js/selseat.js"></script>



					<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-4993789-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www/') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>


					<script></script>
					<script id="hp_same_"></script>
					<script id="hp_done_"></script>
					<script></script>
	</head>

	<body>

		<div
			style="width: 100%; margin-left: auto; margin-right: auto; margin-top: 93px;"
			align="center" class="topbj">
			<script language="JavaScript">
function CheckForm()
{
	if(document.FormLogin.AdminName.value=="")
	{
		window.alert("请填写用户名！");
		document.FormLogin.AdminName.focus();
		return false;
	}
	if(document.FormLogin.AdminPWD.value=="")
	{
		window.alert("请填写密码！");
		document.FormLogin.password.focus();
		return false;
	}
}
</script>

			<table>
				<tbody>
					<tr>
						<td align="center">
							<div style="width: 1000px;">
								<div id="apDiv1">
									<img src="../../image/pstopic.jpg" width="262" height="133">
								</div>
								<div>
									<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
										codebase="../../swflash.cab#version=7,0,19,0" width="1000"
										height="253">
										<param name="movie" value="../../flash/banner.swf">
											<param name="quality" value="high">
												<param name="wmode" value="transparent">
													<embed src="../../flash/banner.swf" width="1000"
														height="253" quality="high"
														pluginspage="http://www.macromedia.com/go/getflashplayer"
														type="application/x-shockwave-flash" wmode="transparent">
									</object>
								</div>
								<div id="Tcenter">
									<div id="bigmenu">
										<table border="0" cellpadding="0" cellspacing="0">
											<tbody>
												<tr>
													<td>
														<img src="../../image/top_03.jpg" width="1004" height="94"
															border="0" usemap="#Map">
															<map name="Map" id="Map">
																<area shape="circle" coords="800,60,29"
																	href="eyuancinema.jsp">
																	<area shape="circle" coords="890,63,29"
																		href="eyuancinema.jsp">
																		<area shape="circle" coords="725,60,31"
																			href="eyuancinema.jsp">
																			<area shape="circle" coords="641,59,30"
																				href="eyuancinema.jsp">
																				<area shape="circle" coords="551,60,29"
																					href="activity.jsp">
																					<area shape="circle" coords="471,59,30"
																						href="questions.asp.jsp">
																						<area shape="circle" coords="373,59,30"
																							href="cinemainstruction.jsp">
																							<area shape="circle" coords="285,59,30"
																								href="articleshow.jsp">
																								<area shape="circle" coords="202,61,29"
																									href="newfilms.asp.jsp">
																									<area shape="circle" coords="126,61,30"
																										href="eyuancinema.jsp">
															</map>
													</td>
												</tr>
											</tbody>
										</table>

									</div>
									<div id="login"></div>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>


			<div class="ticket_cont clearfix">
				<!--left -->
				<div id="LeftContentRegion">
					<div class="ticket_left">
						<div class="seat_screen">
							天津工业大学E缘影厅
						</div>


						<div class="p_r" id="seatContainer">

							<table cellspacing="0" cellpadding="0" class="seat_num"
								align="center">
								<tbody>
									<tr>
										<td width="30" class="row_nums">
											1排
										</td>
									</tr>
									<tr>
										<td width="30" class="row_nums">
											2排
										</td>
									</tr>
									<tr>
										<td width="30" class="row_nums">
											3排
										</td>
									</tr>
									<tr>
										<td width="30" class="row_nums">
											4排
										</td>
									</tr>
									<tr>
										<td width="30" class="row_nums">
											5排
										</td>
									</tr>
									<tr>
										<td width="30" class="row_nums">
											6排
										</td>
									</tr>
									<tr>
										<td width="30" class="row_nums">
											7排
										</td>
									</tr>
									<tr>
										<td width="30" class="row_nums">
											8排
										</td>
									</tr>
									<tr>
										<td width="30" class="row_nums">
											9排
										</td>
									</tr>
									<tr>
										<td width="30" class="row_nums">
											10排
										</td>
									</tr>
								</tbody>
							</table>

							<div id="drawSeat" class="seat_selectout">
								<table id="tbSeat" cellspacing="0" cellpadding="0"
									class="seat_views" align="center">
									<tbody>

										<%
				List<ShowSeatRelation> list = (List<ShowSeatRelation>) request
						.getAttribute("ssrList");
			%>
			<%
			int j = 0;
				for (int i = 0; i < 100; ) {
				j++;
			%>

										<tr>
											<td id="tbSeatTD" align="center">
			
												<%
					if (list.get(i++).getSeatStatus() == 0) {
					
			%>
												<i class="seat_ture" id="<%=i %>" rowname="1"
													colname="<%=j %>排1座" status="0" type="0">&nbsp;</i>

												<%}else{ %>
												<i class="seat_false" id="<%=i %>" rowname="1"
													colname="<%=j %>排1座" status="0" type="0">&nbsp;</i>
												<%} %>
												<%
					if (list.get(i++).getSeatStatus() == 0) {
			%>
												<i class="seat_ture" id="<%=i %>" rowname="1"
													colname="<%=j %>排2座" status="0" type="0">&nbsp;</i>

												<%}else{ %>
												<i class="seat_false" id="<%=i %>" rowname="1"
													colname="<%=j %>排2座" status="0" type="0">&nbsp;</i>
												<%} %>
												<%
					if (list.get(i++).getSeatStatus() == 0) {
			%>
												<i class="seat_ture" id="<%=i %>" rowname="1"
													colname="<%=j %>排3座" status="0" type="0">&nbsp;</i>

												<%}else{ %>
												<i class="seat_false" id="<%=i %>" rowname="1"
													colname="<%=j %>排3座" status="0" type="0">&nbsp;</i>
												<%} %>
												<%
					if (list.get(i++).getSeatStatus() == 0) {
			%>
												<i class="seat_ture" id="<%=i %>" rowname="1"
													colname="<%=j %>排4座" status="0" type="0">&nbsp;</i>

												<%}else{ %>
												<i class="seat_false" id="<%=i %>" rowname="1"
													colname="<%=j %>排4座" status="0" type="0">&nbsp;</i>
												<%} %>
												<%
					if (list.get(i++).getSeatStatus() == 0) {
			%>
												<i class="seat_ture" id="<%=i %>" rowname="1"
													colname="<%=j %>排5座" status="0" type="0">&nbsp;</i>

												<%}else{ %>
												<i class="seat_false" id="<%=i %>" rowname="1"
													colname="<%=j %>排5座" status="0" type="0">&nbsp;</i>
												<%} %>
												<%
					if (list.get(i++).getSeatStatus() == 0) {
			%>
												<i class="seat_ture" id="<%=i %>" rowname="1"
													colname="<%=j %>排6座" status="0" type="0">&nbsp;</i>

												<%}else{ %>
												<i class="seat_false" id="<%=i %>" rowname="1"
													colname="<%=j %>排6座" status="0" type="0">&nbsp;</i>
												<%} %>
												<%
					if (list.get(i++).getSeatStatus() == 0) {
			%>
												<i class="seat_ture" id="<%=i %>" rowname="1"
													colname="<%=j %>排7座" status="0" type="0">&nbsp;</i>

												<%}else{ %>
												<i class="seat_false" id="<%=i %>" rowname="1"
													colname="<%=j %>排7座" status="0" type="0">&nbsp;</i>
												<%} %>
												<%
					if (list.get(i++).getSeatStatus() == 0) {
			%>
												<i class="seat_ture" id="<%=i %>" rowname="1"
													colname="<%=j %>排8座" status="0" type="0">&nbsp;</i>

												<%}else{ %>
												<i class="seat_false" id="<%=i %>" rowname="1"
													colname="<%=j %>排8座" status="0" type="0">&nbsp;</i>
												<%} %>
												<%
					if (list.get(i++).getSeatStatus() == 0) {
			%>
												<i class="seat_ture" id="<%=i %>" rowname="1"
													colname="<%=j %>排9座" status="0" type="0">&nbsp;</i>

												<%}else{ %>
												<i class="seat_false" id="<%=i %>" rowname="1"
													colname="<%=j %>排9座" status="0" type="0">&nbsp;</i>
												<%} %>
												<%
					if (list.get(i++).getSeatStatus() == 0) {
			%>
												<i class="seat_ture" id="<%=i %>" rowname="1"
													colname="<%=j %>排10座" status="0" type="0">&nbsp;</i>
													
			<%}else{ %>
												<i class="seat_false" id="<%=i %>" rowname="1"
													colname="<%=j %>排10座" status="0" type="0">&nbsp;</i>
			<%} %>
												<i class="seat_null" id="seat_0_11" rowname="1" colname="0"
													status="-1" type="0">&nbsp;</i>
												<i class="seat_null" id="seat_0_12" rowname="1" colname="0"
													status="-1" type="0">&nbsp;</i>
												<i class="seat_null" id="seat_0_13" rowname="1" colname="0"
													status="-1" type="0">&nbsp;</i>
												<i class="seat_null" id="seat_0_14" rowname="1" colname="0"
													status="-1" type="0">&nbsp;</i>
											</td>
										</tr>
										<%} %>
</tbody>
								</table>

							</div>
						</div>
						<div class="p20 tc">
							<span class="inblock mlr15"><i class="seat_ture v_m mr3"></i>可选座位</span>
							<span class="inblock mlr15"> <i
								class="seat_selectedll v_m mr3"></i>已选座位</span>
							<span class="inblock mlr15"><i class="seat_false v_m mr3">
							</i>不可选座位</span>
						</div>
						<p class="c_a5 mt30 tc">
							本场座位图及票务信息由 天津工业大学 E缘影厅 提供
						</p>
					</div>
				</div>
				<!-- left end -->

				<!-- right -->
				<div class="ticket_right" style="background: none;">
					<dl class="new_ticket_pic fix">
						<dt>
							<img width="60" alt="${m.movieName }" src="${m.movieImageUrl }">
						</dt>
						<dd>
							<h2 class="px16">
								${m.movieName }
							</h2>
							<p class="mt9">
								片长：${m.movieTime } 分钟
							</p>
							<p class="mt9">
								类型：${m.movieType }
							</p>
						</dd>
					</dl>
					<!--新的 开始-->
					<div>
						<p class="mt12">
							影院：
							<strong class="c_000 px14 ml10" style="padding-left: 2px;">E缘影厅</strong>
						</p>
						<p class="mt12">
							版本：
							<strong class="c_000 px14 ml10">${m.movieDatatype
								}&nbsp;</strong>
						</p>
						<div style="z-index: 3;" class="mt12 clearfix p_r">
							<span class="fl">场次：<strong class="c_000 px14 ml10">${ms.showDate
									}&nbsp;&nbsp;${ms.showTime }</strong> </span>
							<div style="width: 60px; margin-top: -2px; *margin-top: -3px;"
								class="fl ml15 p_r" id="btnShowMore" data-selector="m">
								<!--<em class="cur_p">更换<span id="MoreShowtimeICON"
									class="ticket_changenone">▼</span>
								-->
								<!--ticket_changenone -->
								</em>
							</div>
						</div>
						<div class="ticket_changelist mt9" id="MoreShowtimeRegion"
							style="display: none;">
							<div>
								<p class="mb3">
									<a href="http://piao.mtime.com/onlineticket/showtime/25612653/">17:10</a>
									|
									<a href="http://piao.mtime.com/onlineticket/showtime/25612654/">20:05</a>
									|
									<a href="http://piao.mtime.com/onlineticket/showtime/25612666/">22:05</a>
								</p>
							</div>
						</div>
						<div class="clearfix mt12">
							<span class="fl">座位：</span>
							<div class="fl seat_numbox seat_numbox_false ml10"
								id="SelectedSeatRegion"></div>
						</div>
						<p class="mt12">
							票价：
							<strong class="c_000 px14 ml10">${ms.showPrice }/张</strong><span
								class="ml6 px12 c_7f7"></span>
						</p>
						<p class="mt12">
							票数：
							<strong class="c_000 px14 ml10" id="SelectSeatCount">0</strong>
						</p>
						<p class="mt12">
							总计：
							<strong class="px24 ml10 c_orange" id="SelectSeatPrice">￥0</strong>
						</p>
						<p class="line_solid mt20">&nbsp;
							
						</p>
						<p class="mt20">
							接收兑换码手机号：
						</p>
						<div class="mt12">
							<div class="p_r newtxt">
								<input id="phoneText" type="text" class="ticket_txt c_a5"
									 >
									 
								<input type="hidden"  id="showId" value="${ms.showId }"/>
									<p id="phoneTextError" class="px12 c_red pt3"
										style="position: absolute; top: 9px; right: 62px; display: none;"></p>
							</div>
							<div class="mt12">
								
								<p class="mt9">
									<input id="submitSeat" type="button" value="下一步"
										class="btn_orange6 new_btn_orange">
										<span id="reSelectCount" style="display: none;"></span>
								</p>
							</div>
						</div>
					</div>
					<!--新的 结束-->
				</div>
				<!-- right end-->

			</div>





			<script language="javascript">
var glb_dCinema = 0;
function showlist(pm_dfd, pm_dcinema) {
	if (pm_dcinema != undefined)
		glb_dCinema = pm_dcinema;
	var tdcl = 0;
	var toElem = document.getElementById("if_plan");
	//alert(toElem.src);
	toElem.src = "listplan.asp?cl=" + tdcl + "&fd=" + pm_dfd + "&cinema=" + glb_dCinema;
}
</script>




			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tbody>
					<tr>
						<td height="35" align="center">&nbsp;
							
						</td>
					</tr>
				</tbody>
			</table>
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tbody>
					<tr>
						<td align="center">
							<table width="1000" border="0" cellpadding="0" cellspacing="0"
								class="centerbj">
								<tbody>
									<tr>
										<td align="center">
											<table width="845" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tbody>
													<tr>
														<td align="left" style="padding-left: 8px;">
															<a href="../../filmcomment.asp.htm" target="_blank"><img
																	src="../../image/filmcomment.gif" alt="精彩影评" border="0">
															</a>
														</td>
													</tr>
													<tr>
														<td height="18" align="right" valign="top">
															点击你喜欢的影片，观看精彩影评！
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tbody>
					<tr>
						<td align="center">
							<table width="1000" border="0" cellpadding="0" cellspacing="0"
								class="centerbj">
								<tbody>
									<tr>
										<td align="center">
											<table width="850" border="0" cellspacing="0" cellpadding="0">
												<tbody>
													<tr>
														<td width="7" height="109">
															<img src="../../table_left1.jpg" width="7" height="119">
														</td>
														<td>
															<table width="100%" border="0" cellspacing="0"
																cellpadding="0">
																<tbody>
																	<tr>
																		<td height="7" background="../../table_top1.jpg"></td>
																	</tr>
																	<tr>
																		<td height="105" align="center">
																			<div id="demo" style="overflow: hidden; width: 836;">
																				<table cellspacing="0" cellpadding="0"
																					align="center" border="0">
																					<tbody>
																						<tr>
																							<td id="demo1" valign="top">
																								<table width="100%" height="100" border="0"
																									cellpadding="2" cellspacing="0">
																									<tbody>
																										<tr>

																											<td height="105" width="78" align="center"
																												style="padding: 0px 0px 0px 3px;">
																												<a href="../../fcomdetail.asp-id=856.htm"
																													target="_blank"><img
																														src="../../image/201131452952753.jpg"
																														width="78" height="105" border="0">
																												</a>
																											</td>

																											<td height="105" width="78" align="center"
																												style="padding: 0px 0px 0px 3px;">
																												<a href="../../fcomdetail.asp-id=850.htm"
																													target="_blank"><img
																														src="../../image/201131452982721.jpg"
																														width="78" height="105" border="0">
																												</a>
																											</td>

																											<td height="105" width="78" align="center"
																												style="padding: 0px 0px 0px 3px;">
																												<a href="../../fcomdetail.asp-id=823.htm"
																													target="_blank"><img
																														src="../../image/201121038958249.jpg"
																														width="78" height="105" border="0">
																												</a>
																											</td>

																											<td height="105" width="78" align="center"
																												style="padding: 0px 0px 0px 3px;">
																												<a href="../../fcomdetail.asp-id=821.htm"
																													target="_blank"><img
																														src="../../image/201113147140033.jpg"
																														width="78" height="105" border="0">
																												</a>
																											</td>

																											<td height="105" width="78" align="center"
																												style="padding: 0px 0px 0px 3px;">
																												<a href="../../fcomdetail.asp-id=820.htm"
																													target="_blank"><img
																														src="../../image/201112855523133.jpg"
																														width="78" height="105" border="0">
																												</a>
																											</td>


																										</tr>
																									</tbody>
																								</table>
																							</td>
																							<td id="demo2" valign="top"
																								style="display: none;">
																								<table width="100%" height="100" border="0"
																									cellpadding="2" cellspacing="0">
																									<tbody>
																										<tr>

																											<td height="105" width="78" align="center"
																												style="padding: 0px 0px 0px 3px;">
																												<a href="../../fcomdetail.asp-id=856.htm"
																													target="_blank"><img
																														src="../../image/201131452952753.jpg"
																														width="78" height="105" border="0">
																												</a>
																											</td>

																											<td height="105" width="78" align="center"
																												style="padding: 0px 0px 0px 3px;">
																												<a href="../../fcomdetail.asp-id=850.htm"
																													target="_blank"><img
																														src="../../image/201131452982721.jpg"
																														width="78" height="105" border="0">
																												</a>
																											</td>

																											<td height="105" width="78" align="center"
																												style="padding: 0px 0px 0px 3px;">
																												<a href="../../fcomdetail.asp-id=823.htm"
																													target="_blank"><img
																														src="../../image/201121038958249.jpg"
																														width="78" height="105" border="0">
																												</a>
																											</td>

																											<td height="105" width="78" align="center"
																												style="padding: 0px 0px 0px 3px;">
																												<a href="../../fcomdetail.asp-id=821.htm"
																													target="_blank"><img
																														src="../../image/201113147140033.jpg"
																														width="78" height="105" border="0">
																												</a>
																											</td>

																											<td height="105" width="78" align="center"
																												style="padding: 0px 0px 0px 3px;">
																												<a href="../../fcomdetail.asp-id=820.htm"
																													target="_blank"><img
																														src="../../image/201112855523133.jpg"
																														width="78" height="105" border="0">
																												</a>
																											</td>


																										</tr>
																									</tbody>
																								</table>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																			<script>
var speed=30
document.getElementById("demo2").innerHTML=document.getElementById("demo1").innerHTML
document.getElementById("demo").scrollLeft=document.getElementById("demo").scrollWidth
function Marquee() {
	if(document.getElementById("demo").scrollLeft<=0)
		document.getElementById("demo").scrollLeft+=document.getElementById("demo2").offsetWidth
	else{
		document.getElementById("demo").scrollLeft--
	}
}
var MyMar=setInterval(Marquee,speed)
demo.onmouseover=function() {clearInterval(MyMar)}
demo.onmouseout=function() {MyMar=setInterval(Marquee,speed)}
  </script>
																		</td>
																	</tr>
																	<tr>
																		<td height="7" background="../../table_bottom.jpg"></td>
																	</tr>
																</tbody>
															</table>
														</td>
														<td width="8">
															<img src="../../table_right1.jpg" ="http:=""
																www.sddyy.cn="" images="" 01="" table_right1.jpg"=""
																width="7" height="119">
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tbody>
					<tr>
						<td>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										<td width="1000" align="center" class="centerbj">
											<table width="1000" border="0" align="center" cellpadding="0"
												cellspacing="0"
												style="padding-top: 30px; padding-bottom: 15px; margin: 30px 0px 15px;">
												<tbody>
													<tr>
														<td align="center">
															<img src="../../image/separator01.gif">
														</td>
													</tr>
												</tbody>
											</table>
											<table width="845" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tbody>
													<tr>
														<td align="left">
															<img src="../../image/friend.gif" alt="友情链接">
																<p>
																	首都电影网
																</p>
																<p>
																	中国电影网
																</p>
																<p>
																	e缘爱你
																</p>
														</td>
													</tr>
												</tbody>
											</table>


											<table width="845" border="0" cellspacing="0" cellpadding="0"
												style="margin-top: 15px;">
												<tbody>
													<tr>
														<td width="195" height="75" align="center">
															<table width="195" border="0" cellspacing="0"
																cellpadding="0">
																<tbody>
																	<tr>
																		<td width="178" align="center">
																			<img src="../../image/pstopic.jpg" width="195">
																		</td>
																		<td width="17" align="right">
																			<img src="../../rightline.jpg" width="2" height="43">
																		</td>
																	</tr>
																</tbody>
															</table>
														</td>
														<td width="650" align="left">
															<ul class="bottomul">
																<li>欢迎来到e缘电影院官网</li>
																<li>活动最终解释权归e缘电影院所有</li>
															</ul>
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		</div>

		<div id="overlay" style="display: none;"></div>
		<div id="lightbox" style="display: none;">
			<div id="outerImageContainer">
				<div id="imageContainer">
					<img id="lightboxImage">
						<div id="hoverNav">
							<a id="prevLink" href="#"></a><a id="nextLink" href="#"></a>
						</div>
						<div id="loading">
							<a id="loadingLink" href="#"><img src="../images/loading.gif">
							</a>
						</div>
				</div>
			</div>
			<div id="imageDataContainer" class="clearfix">
				<div id="imageData">
					<div id="imageDetails">
						<span id="caption"></span><span id="numberDisplay"></span>
					</div>
					<div id="bottomNav">
						<a id="bottomNavClose" href="#"><img
								src="../images/closelabel.gif">
						</a>
					</div>
				</div>
			</div>
		</div>
		</div>
	</body>
</html>