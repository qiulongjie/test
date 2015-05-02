<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>e缘电影院</title>

<script src="../../AC_RunActiveContent.js" type="text/javascript"></script>
<script src="../../prototype.js" type="text/javascript"></script>
<script src="../../scriptaculous.js-load=effects" type="text/javascript"></script>
<script src="../../lightbox.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="../../css/lightbox.css"
	title="default" />

<link rel="stylesheet" type="text/css"
	href="../../css/index_01_table.css" title="default" />
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
											height="94" border="0" usemap="#Map" /> <map name="Map"
												id="Map">
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
				<div style="width:785px; float:left; margin-top:10px;">
					<div style="padding-left:12px; width:720px;" align="left">
						<img src="../../image/newfilm1.gif" />
					</div>

					<div style="padding:0px 40px 30px 40px;line-height:18px;"
						align="left" class="activityfont">

						<div style="width:700px; margin-bottom:10px; margin-left:5px;">

							<s:iterator value="pageUtil.list">

								<table width="540" border="0" cellspacing="0" cellpadding="0"
									style="margin:20px 0px 10px 40px;">
									<tr>
										<td width="126" height="178"><a
											href="filminstruction.jsp" target="_blank"><img
												src="<s:property value="movieImageUrl"/>" width="126"
												height="178" border="0" />
										</a></td>
										<td align="left" valign="top"
											style="padding-left:20px; padding-top:10px;">
											<ul class="newfilmsul1">
												<li><a href="showMovieInfoList_movieInfoForestage?movieId=<s:property value="movieId"/>" target="_blank"><strong><s:property
																value="movieName" />
													</strong>
												</a>
												</li>
												<li>导演：<s:property value="movieDirector" /></li>
												<li>主演：<s:property value="movieRole" /></li>
												<li>地区：<s:property value="movieArea" />
												</li>
												<li>类型：<s:property value="movieType" /></li>
												<li>剧情：</li>
												<li><p>
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<s:property value="movieDesc" />
												</li>
											</ul></td>
									</tr>
								</table>
								<table width="700" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="10" background="../../newfilm.gif"></td>
									</tr>
								</table>

							</s:iterator>

						</div>


						<table width="640" height="40" border="0" align="right"
							cellpadding="0" cellspacing="0">
							<tr>

								<td align="right" valign="middle" style="padding-right:10px;">

									<s:if test="%{pageUtil.allRow >= 1}">
										<tr>
											<td colspan="15">共<span><s:property
														value="pageUtil.allRow" />
											</span>条记录 共<span"><s:property value="pageUtil.totalPage" />
											</span>页 当前第<span"><s:property value="pageUtil.currentPage" />
											</span>页 <s:if test="%{pageUtil.currentPage == 1}">第一页 上一页</s:if> <s:else>
													<a href="showMovieInfoList_pageList?pageNow=1">第一页</a>
													<a href="showMovieInfoList_pageListForestage?pageNow=<s:property value="%{pageUtil.currentPage-1}"/>">上一页</a>
												</s:else> <s:if test="%{pageUtil.currentPage != pageUtil.totalPage}">
													<a
														href="showMovieInfoList_pageListForestage?pageNow=<s:property value="%{pageUtil.currentPage+1}"/>">下一页</a>
													<a
														href="showMovieInfoList_pageListForestage?pageNow=<s:property value="pageUtil.totalPage"/>">最后一页</a>
												</s:if> <s:else>下一页 最后一页</s:else></td>
										</tr>

									</s:if> <s:else>
										<tr>
											<td colspan="15"><center>暂时没有记录</center>
											</td>
										</tr>
									</s:else></td>

							</tr>
						</table>




						<!-- <table width="540" border="0" cellspacing="0" cellpadding="0" style="margin:20px 0px 10px 40px;">
						  <tr>
							<td width="126" height="178">
							
							<a href="filminstruction.jsp"  target="_blank"><img src="../../image/201212541280377.jpg"  width="126" height="178" border="0"/></a>
							</td>
							<td align="left" valign="top" style="padding-left:20px; padding-top:10px;">
							<ul class="newfilmsul1">
							<li><a href="filminstruction.jsp"  target="_blank"><strong>《血滴子》</strong></a></li>
							<li>导演：刘伟强 </li>
							<li>主演： 黄晓明 / 阮经天 / 李宇春 / 余文乐 / 井柏然 / 王羽 / 金士杰 / 周一围 / 蒲巴甲 / 高天 / 文章 / 刘伟强 / 王珞丹 </li>
							<li>地区： </li>
							<li>类型：动作 / 武侠 / 古装 </li>
							<li>剧情：</li>
							<li><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;血滴子以革为囊，内藏快刀数把，控以机关，用时趁人不备，囊罩其头，拨动机关，...</li>
							</ul>
							</td>
						  </tr>
						</table>
						<table width="700" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td height="10" background="../../newfilm.gif" ></td>
                          </tr>
                        </table>
						
						<table width="540" border="0" cellspacing="0" cellpadding="0" style="margin:20px 0px 10px 40px;">
						  <tr>
							<td width="126" height="178">
							
							<a href="filminstruction.jsp"  target="_blank"><img src="../../image/201212540737073.jpg"  width="126" height="178" border="0"/></a>
							</td>
							<td align="left" valign="top" style="padding-left:20px; padding-top:10px;">
							<ul class="newfilmsul1">
							<li><a href="filminstruction.jsp"  target="_blank"><strong>《人再囧途之泰囧》</strong></a></li>
							<li>导演：徐峥 </li>
							<li>主演：徐峥 / 王宝强 / 黄渤 / 陶虹 / 谢楠 </li>
							<li>地区： </li>
							<li>类型：喜剧 </li>
							<li>剧情：</li>
							<li><p><span property="v:summary"><span property="v:summary">&nbsp;&nbsp;&nbsp;&nbsp;&nb...</li>
							</ul>
							</td>
						  </tr>
						</table>
						<table width="700" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td height="10" background="../../newfilm.gif" ></td>
                          </tr>
                        </table>
						
						<!-- <table width="640" height="40" border="0" align="right" cellpadding="0" cellspacing="0">
						  <tr><td align="right" valign="middle" style="padding-right:10px;">第1页/共278页(834条记录) &nbsp;&nbsp;&nbsp;<<&nbsp;<a href="../../newfilms.asp-.htm" >首页</a>&nbsp;&nbsp;<&nbsp;<a href="../../newfilms.asp-page=0.htm" >上一页</a>&nbsp;&nbsp;<a href="../../newfilms.asp-page=2.htm" >下一页</a>&nbsp;>&nbsp;&nbsp;<a href="../../newfilms.asp-page=278.htm" >尾页</a>&nbsp;>></td>
						</tr></table> -->

					</div>
				</div>
				<div style="width:215px; float:left; margin-top:25px;">
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
									<p>e缘爱你</p>
								</td>
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