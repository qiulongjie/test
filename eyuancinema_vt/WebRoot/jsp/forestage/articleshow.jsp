<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
	<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>e缘电影院</title>
<script src="../../AC_RunActiveContent.js" type="text/javascript"></script>
<script src="../../prototype.js" type="text/javascript"></script>
<script src="../../scriptaculous.js-load=effects" type="text/javascript"></script>
<script src="../../lightbox.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="../../lightbox.css"
	title="default" />

<link rel="stylesheet" type="text/css"
	href="../../css/index_01_table.css" title="default" />
<style type="text/css">
<!--
body,td,th {
	font-size: 14px;
}
-->
</style>
</head>

<body>
	<div
		style="width:100%;margin-left:auto;margin-right:auto;margin-top:93px;"
		align="center" class="topbj">
		<script language="JavaScript">
		<!--
			function CheckForm() {
				if (document.FormLogin.AdminName.value == "") {
					window.alert("请填写用户名！");
					document.FormLogin.AdminName.focus();
					return false;
				}
				if (document.FormLogin.AdminPWD.value == "") {
					window.alert("请填写密码！");
					document.FormLogin.password.focus();
					return false;
				}
			}
		//-->
		</script>

		<table>
			<tr>
				<td align="center">
					<div style="width:1000px;">
						<div id="apDiv1">
							<img src="../../image/pstopic.jpg" width="262" height="133">
						</div>
						<div>
							<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
								codebase="../../swflash.cab#version=7,0,19,0" width="1000"
								height="253">
								<param name="movie" value="../../flash/banner.swf" />
								<param name="quality" value="high" />
								<param name="wmode" value="transparent" />
								<embed src="../../flash/banner.swf" width="1000" height="253"
									quality="high"
									pluginspage="http://www.macromedia.com/go/getflashplayer"
									type="application/x-shockwave-flash" wmode="transparent"></embed>
							</object>
						</div>
						<div id="Tcenter">
							<div id="bigmenu">
								<table border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td><img src="../../image/top_03.jpg" width="1004"
											height="94" border="0" usemap="#Map" />
										<map name="Map" id="Map">
												<area shape="circle" coords="800,60,29"
													href="eyuancinema.jsp" />
												<area shape="circle" coords="890,63,29"
													href="eyuancinema.jsp" />
												<area shape="circle" coords="725,60,31"
													href="eyuancinema.jsp" />
												<area shape="circle" coords="641,59,30"
													href="eyuancinema.jsp" />
												<area shape="circle" coords="551,60,29" href="activity.jsp" />
												<area shape="circle" coords="471,59,30"
													href="questions.asp.jsp" />
												<area shape="circle" coords="373,59,30"
													href="cinemainstruction.jsp" />
												<area shape="circle" coords="285,59,30"
													href="movieShowInfo_movieShowAllForestage" />
												<area shape="circle" coords="202,61,29"
													href="showMovieInfoList_pageListForestage" />
												<area shape="circle" coords="126,61,30"
													href="eyuancinema.jsp" />
											</map>
										</td>
									</tr>
								</table>

							</div>
							<div id="login"></div>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<div class="divbig"
		style="width:1000px;margin-left:auto;margin-right:auto;"
		align="center">
		<div id="center" style="width:1000px; float:left;">

			<div id="cc" style="width:1000px; float:left;">
				<div style="width:775px; float:left; margin-top:10px; ">

					<div style="padding-left:12px; width:720px;" align="left">

						<img src="../../image/activity.gif" />

					</div>
					<div style="padding:0px 20px 30px 80px;line-height:18px;"
						align="left" class="activityfont">
						<div style="width:660px; ">


							<div align="center" style="height:35px;" class="showtitle">本日影讯</div>
							<div align="center" style="height:25px;">发布时间：近日</div>
							<div align="left">
								<p>
									<table style="width: 600pt; border-collapse: collapse"
										cellspacing="0" cellpadding="0" width="700" border="0">
										<tbody>
											<tr style="height: 13.5pt; mso-height-source: userset"
												height="18">
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent"
													width="96"><strong>电影名称</strong>
												</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent"
													width="66"><strong>放映日期</strong>
												</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent"
													width="81"><strong>放映时间</strong>
												</td>
											<!-- 	<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent"
													width="81"><strong>影片时长</strong>
												</td> -->
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent"
													width="81"><strong>票价（元）</strong>
												</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent"
													width="81"><strong>片长（分）</strong>
												</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent"
													width="81"><strong>购票</strong>
												</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent"
													width="85">&nbsp;</td>
											</tr>
											
											<s:iterator value="showList" >
											
											<tr style="height: 13.5pt; mso-height-source: userset"
												height="18">
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
												<!-- <td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td> -->
											</tr>
											<tr style="height: 13.5pt; mso-height-source: userset"
												height="18">
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">
													<s:property value="MovieInfo.movieName"/>
													</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">
													<s:property value="showDate"/></td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">
													<s:property value="showTime"/></td>
												<!-- <td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">
													17:18</td> -->
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">
													<s:property value="showPrice"/></td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">
													<s:property value="MovieInfo.movieTime"/></td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">
											
													<a href="movieShowInfo_buyTicketForSeat?showId=<s:property value="showId"/>">在线购票</a>
												</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 35pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
											</tr>
											
											</s:iterator>
											
										</tbody>
									</table>
								</p>
							</div>
						</div>
					</div>

				</div>
				<div style="width:215px; float:left; margin-top:30px;">
					<div style="vertical-align:top; margin:0px; padding:0px;">
						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							style="margin:0px; padding:0px;">
							<tr>
								<td height="27" align="left" valign="middle" class="bookingbj2"
									onmousemove="this.className='bookingbj3'"
									onmousedown="this.className='bookingbj3'"
									onmouseout="this.className='bookingbj2'">&nbsp;</td>
							</tr>
							<tr>
								<td height="27" align="left" valign="middle" class="bookingbj2"
									onmousemove="this.className='bookingbj3'"
									onmousedown="this.className='bookingbj3'"
									onmouseout="this.className='bookingbj2'"><a
									href="questions.asp.jsp">疑难解答</a>
								</td>
							</tr>
							<tr>
								<td height="27" align="left" valign="middle" class="bookingbj2"
									onmousemove="this.className='bookingbj3'"
									onmousedown="this.className='bookingbj3'"
									onmouseout="this.className='bookingbj2'"><a
									href="traffic.jsp">影院交通指南</a>
								</td>
							</tr>
							<tr>
								<td height="27" align="left" valign="middle" class="bookingbj2"
									onmousemove="this.className='bookingbj3'"
									onmousedown="this.className='bookingbj3'"
									onmouseout="this.className='bookingbj2'"><a
									href="buytickets.jsp">影院购票指南</a>
								</td>
							</tr>
						</table>
					</div>
					<div style="padding-left:5px; padding-top:8px;">
						<img src="../../image/instruction_2.jpg" />
					</div>

					<div style="padding-left:15px; padding-top:40px;">
						<div style="height:30px; vertical-align:top; padding-left:8px;"
							align="left">
							<img src="../../image/newarticle.gif" alt="最新活动" />
						</div>
						<div>
							<table width="92%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td align="left" valign="top" style="padding:0px; margin:0px;"><script
											src="../../SH_smallcode.asp-typ=news" charset="utf-8"></script>
									</td>
									<td width="8"><img src="../../image/linesep.gif">
									</td>
								</tr>
							</table>
						</div>
					</div>

				</div>
			</div>

		</div>
		<div style="margin:0 auto; width:1000px;clear:both;" align="center">
			<table width="1000" border="0" cellspacing="0" cellpadding="0"
				align="center">
				<tr>
					<td width="1000" align="center" class="centerbj"><table
							width="1000" border="0" align="center" cellpadding="0"
							cellspacing="0"
							style="padding-top:30px; padding-bottom:15px; margin:30px 0px 15px;">
							<tr>
								<td align="center"><img src="../../image/separator01.gif" />
								</td>
							</tr>
						</table>
						<table width="845" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td align="left"><img src="../../image/friend.gif"
									alt="友情链接" />
									<p>首都电影网</p>
									<p>中国电影网</p>
									<p>e缘爱你</p></td>
							</tr>
						</table>
						<table width="845" border="0" cellspacing="0" cellpadding="0"
							style="margin-top:15px;">
						  <tr>
								<td width="195" height="75" align="center"><table
										width="195" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="178" align="center"><img
												src="../../image/pstopic.jpg" width="195" />
											</td>
											<td width="17" align="right"><img
												src="../../rightline.jpg" width="2" height="43" />
											</td>
										</tr>
									</table>
								</td>
								<td width="650" align="left"><ul class="bottomul">
										<li>欢迎来到e缘电影院官网</li>
                                        <li>活动最终解释权归e缘电影院所有</li>
                                        <li></li>
									</ul>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>