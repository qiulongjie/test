<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>e缘电影院</title>

<link rel="stylesheet" type="text/css"
	href="../../css/index_01_table.css" title="default" />
<script src="../../js/AC_RunActiveContent.js" type="text/javascript"></script>
<script src="../../js/prototype.js" type="text/javascript"></script>
<script src="../../js/scriptaculous.js-load=effects"
	type="text/javascript"></script>
<script src="../../js/lightbox.js" type="text/javascript"></script>

<script src="../../js/homeshowpic1.js" type="text/javascript"></script>
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


</head>

<body>

	<div
		style="width:100%;margin-left:auto;margin-right:auto;margin-top:93px;"
		align="center" class="topbj">
		<script language="JavaScript">function CheckForm()
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
		<div class="divbig"
			style="width:1000px;margin-left:auto;margin-right:auto;"
			align="center">
			<div style="margin-top:3px; padding-left:75px;">

				<table width="920" border="0" cellspacing="0" cellpadding="0">
					<form id="FormLogin" name="FormLogin" method="post"
						action="http://www.sddyy.cn/login.asp?sort=login&cl="
						onSubmit="return CheckForm()">
						<tr>
							<td width="70" height="25" align="right" valign="bottom"
								class="loginfont"><strong>用户名：</strong>
							</td>
							<td width="118" align="left" valign="bottom"><div
									class="topinput" align="center">
									<input name="AdminName" type="text" class="topinput-1"
										id="AdminName" />
								</div>
							</td>
							<td width="50" align="right" valign="bottom" class="loginfont"><strong>密码：</strong>
							</td>
							<td width="128" align="left" valign="bottom"><div
									class="topinput" align="center">
									<input name="password" type="password" class="topinput-1"
										id="password" />
								</div>
							</td>
							<td valign="bottom" align="left" width="60"><input
								type="image" name="imageField" src="../../image/top_09.gif" />
							</td>
							<td valign="bottom" align="left"><a href="register.jsp"><img
									src="../../image/top_10.gif" alt="注册" border="0" />
							</a>
							</td>
						</tr>
					</form>
				</table>

			</div>
			<table width="1000" border="0" cellpadding="0" cellspacing="0"
				class="centerbj">
				<tr>
					<td align="center"><table width="855" border="0"
							align="center" cellpadding="0" cellspacing="0"
							style="margin-top:50px;">
							<tr>
								<td width="390" valign="top">
									<table width="200" border="0" cellpadding="0" cellspacing="0"
										style="margin-bottom:10px;">
										<tr>
											<td style="padding-left:8px;"><img
												src="../../image/newfilm1.gif" alt="新片介绍" />
											</td>
										</tr>
									</table>

									<div id="ifocus1">

										<table>
											<tr>
												<td valign="top" class="homebj"><div id="ifocus_pic1">
														<div id="ifocus_piclist1" style="left:0; top:0;">
															<ul style="margin:0px; padding:0px;">

																<li><a href="filminstruction.jsp" target="_blank"><img
																		src="../../image/201212541557309.jpg" alt="一代宗师"
																		width="266" height="303" border="0" />
																</a>
																</li>

																<li><a href="../../filmdetail.asp-fid=1373.htm"
																	target="_blank"><img
																		src="../../
							image/201212541280377.jpg"
																		alt="血滴子" width="266" height="303" border="0" />
																</a>
																</li>

																<li><a href="../../filmdetail.asp-fid=1372.htm"
																	target="_blank"><img
																		src="../../
							image/201212540737073.jpg"
																		alt="人再囧途之泰囧" width="266" height="303" border="0" />
																</a>
																</li>

																<li><a href="../../filmdetail.asp-fid=1371.htm"
																	target="_blank"><img
																		src="../../
							image/201212540292293.jpg"
																		alt="一九四二" width="266" height="303" border="0" />
																</a>
																</li>

																<li><a href="../../filmdetail.asp-fid=1369.htm"
																	target="_blank"><img
																		src="../../
							image/201212539878577.jpg"
																		alt="十二生肖" width="266" height="303" border="0" />
																</a>
																</li>

															</ul>
														</div>
														<div id="ifocus_btn1" align="right" class="ifocus_opdiv1">
															<ul style="list-style-type:none;">

																<li
																	style='width:margin:7px 0px 5px 0px; padding-top:7px;'
																	class='current'>1</li>

																<li
																	style='width:margin:4px 0px 5px 0px; padding-top:3px;'>2</li>

																<li style='margin:7px 0px 5px 0px;' class='normal'>3</li>

																<li style='width:margin:1px 0px 5px 0px;'>4</li>

																<li style='margin:7px 0px 5px 0px;' class='normal'>5</li>

															</ul>
														</div>
													</div>
												</td>
												<td style="padding:10px 0px 8px 5px;" valign="top"><div
														id="ifocus_tx1">
														<ul>

															<li class='current'>

																<table width="150" border="0" cellpadding="0"
																	cellspacing="0">
																	<tr>
																		<td align="left" class="newfilmul" height="310"
																			valign="top"><strong>《一代宗师》</strong> <br><font
																				style="line-height:18px;">
																					一代宗师》是王家卫导演筹备期长达8年之久的首部功夫巨片，由梁朝伟、章子怡、宋慧乔、张震、赵本山等巨星加盟，讲述的是由梁朝伟饰演的一代武学宗师&ldquo;叶问&rdquo;先生的传奇一生。
																					除梁朝伟扮演叶问之外，韩国影星宋慧乔出演叶问之妻，章子怡扮演的角色则是一位八卦掌高手；据悉，这个版本的叶问...</font>
																		</td>
																	</tr>
																</table></li>

															<li class='normal'>

																<table width="150" border="0" cellpadding="0"
																	cellspacing="0">
																	<tr>
																		<td align="left" class="newfilmul" height="310"
																			valign="top"><strong>《血滴子》</strong> <br><font
																				style="line-height:18px;">
																					&ldquo;血滴子以革为囊，内藏快刀数把，控以机关，用时趁人不备，囊罩其头，拨动机关，首级立取，是为冷兵器时期战斗工具之极致，创於清雍正时期，专为清除异己之秘密武器&hellip;&hellip;&rdquo;
																					时值清初盛世，乾隆继承皇位。京城中有一个叫人闻风而丧胆的组织&ldquo;血滴子&...</font>
																		</td>
																	</tr>
																</table></li>

															<li class='normal'>

																<table width="150" border="0" cellpadding="0"
																	cellspacing="0">
																	<tr>
																		<td align="left" class="newfilmul" height="310"
																			valign="top"><strong>《人再囧途之泰囧》</strong> <br><font
																				style="line-height:18px;">继《人在囧途》之后，徐峥、王宝强这对难兄难弟又&ldquo;再&rdquo;上囧途，踏上了泰国之旅，黄渤的加盟让倒霉二人组升级为&ldquo;囧神组合&rdquo;，12月12日，《泰囧》将开启贺岁档，上演一段爆笑的泰国传奇，继续悲催。</font>
																		</td>
																	</tr>
																</table></li>

															<li class='normal'>

																<table width="150" border="0" cellpadding="0"
																	cellspacing="0">
																	<tr>
																		<td align="left" class="newfilmul" height="310"
																			valign="top"><strong>《一九四二》</strong> <br><font
																				style="line-height:18px;">
																					1942年，抗日战争与第二次世界大战正处于白热化阶段。燎原之火，生灵涂炭，天灾人祸，哀鸿遍野。当军事家和政治家的目光聚焦在一城一郭的征伐劫掠之时，几乎鲜少有人注意到古老的中原河南正爆发一场惨绝人寰的大旱灾。影片的主角老东家（张国立
																					饰），狡猾、市侩，典型的封建地主，可即便如此也无法对抗这史无前例的...</font>
																		</td>
																	</tr>
																</table></li>

															<li class='normal'>

																<table width="150" border="0" cellpadding="0"
																	cellspacing="0">
																	<tr>
																		<td align="left" class="newfilmul" height="310"
																			valign="top"><strong>《十二生肖》</strong> <br><font
																				style="line-height:18px;"> 杰克（成龙
																					饰）为领取国际文物贩子劳伦斯开出的巨额奖金，四处寻找&ldquo;圆明园&rdquo;十二生肖中失散的最后四个兽首。在寻宝过程中，他爱上了中国文物专家关教授的女儿Coco。被关教授父女的爱国情怀所感动，一向惜金如命的杰克在最后关头放弃了金钱，转而帮助Coco全力挽救国宝，最终将寻回的兽...</font>
																		</td>
																	</tr>
																</table></li>

														</ul>
													</div>
												</td>
											</tr>
										</table>

									</div></td>
								<td height='383'>&nbsp;</td>
								<td width="402" valign="top">
									<table width="100%" border="0" cellspacing="0" cellpadding="0"
										style="padding-top:5px; margin-top:15px;">
										<tr>
											<td height="35" align="left" valign="middle">
												<table width="100%" border="0" cellpadding="0"
													cellspacing="0">
													<tr>
														<td><img src="../../image/booking.gif" alt="订票咨询" />
														</td>
													</tr>
												</table></td>
											<td width="14"></td>
											<td align="left" valign="middle" class="bookingbj1"
												onMouseMove="this.className='bookingbj1'"
												onMouseDown="this.className='bookingbj1'"
												onMouseOut="this.className='bookingbj1'"><a
												href="../../mapn.asp.htm">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
											</td>
										</tr>
										<tr>
											<td height="35" align="left" valign="middle"
												class="bookingbj" onMouseDown="this.className='bookingbj1'"
												onMouseMove="this.className='bookingbj1'"
												onMouseOut="this.className='bookingbj'"><a
												href="newfilms.asp.jsp" target="_blank">在线订票</a>
											</td>
											<td width="14"></td>
											<td align="left" valign="middle" class="bookingbj"
												onMouseDown="this.className='bookingbj1'"
												onMouseMove="this.className='bookingbj1'"
												onMouseOut="this.className='bookingbj'"><a
												href="questions.asp.jsp">疑难解答</a>
											</td>
										</tr>
										<tr>
											<td height="30" align="left" valign="middle"
												class="bookingbj" onMouseDown="this.className='bookingbj1'"
												onMouseMove="this.className='bookingbj1'"
												onMouseOut="this.className='bookingbj'"><a
												href="traffic.jsp">影院交通指南</a>
											</td>
											<td></td>
											<td align="left" valign="middle" class="bookingbj"
												onMouseDown="this.className='bookingbj1'"
												onMouseMove="this.className='bookingbj1'"
												onMouseOut="this.className='bookingbj'"><a
												href="buytickets.jsp">影院购票指南</a>
											</td>
										</tr>
									</table>

									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td height="35" align="left" valign="top"
												style='padding-top:20px; padding-bottom:15px;'><img
												src="../../image/survey.gif" alt="影迷调查" />
											</td>
										</tr>
									</table>
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td height="50">
												<table style="margin-left:10px; margin-top:10px;">
													<form action="eyuancinema.jsp" method="post" id="vote_1"
														target="_blank">
														<tr>
															<td align=left height=25><span class="text">&nbsp;您愿意参加哪类影院的活动？</span>
															</td>
														</tr>
														<tr>
															<td align="right"><table width="201" border="0"
																	cellspacing="0" cellpadding="0">

																	<tr>
																		<td width="28" height="30" align="left"><input
																			type="checkbox" name="vote" value="0" />
																		</td>
																		<td height="30" align="left" valign="bottom">观影及卖品优惠</td>
																	</tr>

																	<tr>
																		<td width="28" height="30" align="left"><input
																			type="checkbox" name="vote" value="1" />
																		</td>
																		<td height="30" align="left" valign="bottom">影片主创见面会等电影主题活动</td>
																	</tr>

																	<tr>
																		<td width="28" height="30" align="left"><input
																			type="checkbox" name="vote" value="2" />
																		</td>
																		<td height="30" align="left" valign="bottom">各类抽奖等互动活动</td>
																	</tr>

																	<tr>
																		<td width="28" height="30" align="left"><input
																			type="checkbox" name="vote" value="3" />
																		</td>
																		<td height="30" align="left" valign="bottom">经典老片回顾展</td>
																	</tr>

																	<tr>
																		<td width="28" height="30" align="left"><input
																			type="checkbox" name="vote" value="4" />
																		</td>
																		<td height="30" align="left" valign="bottom">由导演等专业人士参加的电影观摩交流会</td>
																	</tr>

																</table>
															</td>
														</tr>
														<tr>
															<td height="50" align="right"><input name="votetype"
																id="votetype" type="hidden" value="-1" /><input
																name="voteid" id="voteid" type="hidden" value="1" /> <input
																type="image" src="../../image/message_04.jpg"
																onClick="alert('投票成功');">
															</td>
														</tr>
													</form>
												</table></td>
										</tr>
									</table></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<table width="1000" border="0" cellpadding="0" cellspacing="0"
				style="margin-top:10px; margin-bottom:23px;" class="centerbj">
				<tr>
					<td align="center"><img src="../../image/separator01.gif" />
					</td>
				</tr>
			</table>

			<script language="javascript">
var glb_dCinema = 0;
function showlist(pm_dfd, pm_dcinema) {
	if (pm_dcinema != undefined)
		glb_dCinema = pm_dcinema;
	var tdcl = 0;
	var toElem = document.getElementById("if_plan");
	//alert(toElem.src);
	toElem.src = "movieShowInfo_todayShow";
}
</script>
			<table width="1000" border="0" cellpadding="0" cellspacing="0"
				class="centerbj">
				<tr>
					<td align="center"><table width="850" height="295" border="0"
							cellpadding="0" cellspacing="0">
							<tr>
								<td width="440"><table width="100%" border="0"
										cellspacing="0" cellpadding="0">
										<tr>
											<td height="42" align="left" valign="top"
												style="padding-left:8px;"><img
												src="../../image/filmshow.gif" alt="本周影讯" />
											</td>
											<td height="42" align="left" valign="bottom"
												style="padding-left:8px;">&nbsp;</td>
										</tr>

									</table>

									<table width="100%" height="23" border="0" cellpadding="0"
										cellspacing="0">
										<tr>
											<td id="td0" align="center" valign="middle" class='filmshow2'
												onMouseMove="this.className='filmshow2'"
												onmouseout="this.className='filmshow1'" width="65">
												<!--<a href="listplan.asp?fd=0" target="if_plan">1月6日</a>-->
												<a href="movieShowInfo_todayShow" target="if_plan">今天</a></td>
											<td id="td1" align="center" valign="middle" class='filmshow1'
												onMouseMove="this.className='filmshow2'"
												onmouseout="this.className='filmshow1'" width="65">
												<!--<a href="listplan.asp?fd=1" target="if_plan">1月7日</a>-->
												<a href="movieShowInfo_tomarrowShow" target="if_plan">明天</a></td>
											<td id="td2" align="center" valign="middle" class='filmshow1'
												onMouseMove="this.className='filmshow2'"
												onmouseout="this.className='filmshow1'" width="65">
												<!--<a href="listplan.asp?fd=2" target="if_plan">1月8日</a>-->
												<a href="movieShowInfo_afterShow" target="if_plan">后天</a></td>
			

										</tr>
									</table>
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td height="228" valign="top"
												style="padding-top:10px; padding-left:5px;">
												<iframe name="if_plan" id="if_plan" src="" width="100%"
													height="218" class="scrollcss" frameborder="0"></iframe> 
													<script language="javascript">
                                                         showlist(0, 0);
                                                    </script></td>
										</tr>
									</table></td>
								<td width="20">&nbsp;</td>
								<!-- <td width="194" valign="top"><table width="100%" border="0"
										cellspacing="0" cellpadding="0">
										<tr>
											<td height="42" align="left" valign="top"><a
												href="activity.jsp" target="_blank"><img
													src="../../image/newarticle.gif" alt="最新活动" border="0" />
											</a>
											</td>
										</tr>
									</table>
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td align="left" valign="top"
												style="padding:0px; margin:0px;" width="175"><script
													src="../../SH_smallcode.asp-typ=news" charset="utf-8"></script>
											</td>
											<td width="9"><img src="../../image/linesep.gif">
											</td>
										</tr>
									</table>
								</td> -->
								<td width="22">&nbsp;</td>
								<!-- <td width="185" valign="top"><table width="100%" border="0"
										cellspacing="0" cellpadding="0">
										<tr>
											<td height="42" align="left" valign="top"><a
												href="../../yhxx.asp.htm" target="_blank"><img
													src="../../image/offers.gif" alt="优惠信息" border="0" />
											</a>
											</td>
										</tr>
									</table>
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td align="left" valign="top" height="110"><script
													src="../../SH_smallcode.asp-typ=yhxx" charset="utf-8"></script>
											</td>
											<td width="8"><img src="../../image/linesep1.gif">
											</td>
										</tr>
									</table>
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td height="35" align="left" valign="center"><a
												href="../../yncy.asp.htm" target="_blank"><img
													src="../../image/invite.gif" alt="邀您参与" border="0" />
											</a>
											</td>
										</tr>
									</table> -->
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td align="left" valign="top" height="100"><script
													src="../../SH_smallcode.asp-typ=invite" charset="utf-8"></script>
											</td>
											<td width="8"><img src="../../image/linesep1.gif">
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<table width="1000" border="0" cellpadding="0" cellspacing="0"
				style="margin:30px 0px 22px 0px;" class="centerbj">
				<tr>
					<td align="center"><img src="../../image/separator01.gif" />
					</td>
				</tr>
			</table>

			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td align="center"><table width="1000" border="0"
							cellpadding="0" cellspacing="0" class="centerbj">
							<tr>
								<td align="center">&nbsp;</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td align="center"><table width="1000" border="0"
							cellpadding="0" cellspacing="0" class="centerbj">
							<tr>
								<td align="center"><table width="845" border="0"
										align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td align="left" style="padding-left:8px;"><a
												href="../../filmcomment.asp.htm" target="_blank"><img
													src="../../image/filmcomment.gif" alt="精彩影评" border="0" />
											</a>
											</td>
										</tr>
										<tr>
											<td height="18" align="right" valign="top">点击你喜欢的影片，观看精彩影评！</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td align="center"><table width="1000" border="0"
							cellpadding="0" cellspacing="0" class="centerbj">
							<tr>
								<td align="center"><table width="850" border="0"
										cellspacing="0" cellpadding="0">
										<tr>
											<td width="7" height="109"><img
												src="../../table_left1.jpg" width="7" height="119" />
											</td>
											<td><table width="100%" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td height="7" background="../../table_top1.jpg"></td>
													</tr>
													<tr>
														<td height="105" align="center">
															<div id=demo style="overflow:hidden;width:836;">
																<table cellspacing="0" cellpadding="0" align="center"
																	border="0">
																	<tr>
																		<td id="demo1" valign="top">
																			<table width="100%" height="100" border="0"
																				cellpadding="2" cellspacing="0">
																				<tr>

																					<td height="105" width="78" align="center"
																						style="padding:0px 0px 0px 3px;"><img
																						src="../../image/201131452952753.jpg" width="78"
																						height="105" border="0" /></a>
																					</td>

																					<td height="105" width="78" align="center"
																						style="padding:0px 0px 0px 3px;"><img
																						src="../../image/201131452982721.jpg" width="78"
																						height="105" border="0" /></a>
																					</td>

																					<td height="105" width="78" align="center"
																						style="padding:0px 0px 0px 3px;"><img
																						src="../../image/201121038958249.jpg" width="78"
																						height="105" border="0" /></a>
																					</td>

																					<td height="105" width="78" align="center"
																						style="padding:0px 0px 0px 3px;"><img
																						src="../../image/201113147140033.jpg" width="78"
																						height="105" border="0" /></a>
																					</td>

																					<td height="105" width="78" align="center"
																						style="padding:0px 0px 0px 3px;"><img
																						src="../../image/201112855523133.jpg" width="78"
																						height="105" border="0" /></a>
																					</td>


																				</tr>
																			</table></td>
																		<td id="demo2" valign="top" style=display:none;></td>
																	</tr>
																</table>
															</div> <script>
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
												</table>
											</td>
											<td width="8"></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td><table width="100%" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td width="1000" align="center" class="centerbj"><table
										width="1000" border="0" align="center" cellpadding="0"
										cellspacing="0"
										style="padding-top:30px; padding-bottom:15px; margin:30px 0px 15px;">
										<tr>
											<td align="center"><img
												src="../../image/separator01.gif" />
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
						</table></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>