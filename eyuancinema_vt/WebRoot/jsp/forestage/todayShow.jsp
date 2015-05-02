<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'todayShow.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

<!-- <link rel="stylesheet" type="text/css"
	href="../../css/index_01_table.css" title="default" />
<style type="text/css">
<!--
body,td,th {
	font-size: 14px;
}

</style> -->
  </head>
  
  <body bgcolor="#DEB887">
    <div align="left">
								<p>
									<table style="width: 100%; border-collapse: collapse"
										cellspacing="0" cellpadding="0" width="100%" border="0">
										<tbody>
											<tr style="height: 13.5pt; mso-height-source: userset"
												height="18">
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 40pt; border-bottom: #ece9d8; background-color: transparent"
													width="96"><strong>影片</strong>
												</td>
												
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 30pt; border-bottom: #ece9d8; background-color: transparent"
													width="81"><strong>时间</strong>
												</td>
											<!-- 	<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 30pt; border-bottom: #ece9d8; background-color: transparent"
													width="81"><strong>影片时长</strong>
												</td> -->
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 30pt; border-bottom: #ece9d8; background-color: transparent"
													width="81"><strong>票价（元）</strong>
												</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 30pt; border-bottom: #ece9d8; background-color: transparent"
													width="81"><strong>片长（分）</strong>
												</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 40pt; border-bottom: #ece9d8; background-color: transparent"
													width="81"><strong>购票</strong>
												</td>
												<!-- <td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 30pt; border-bottom: #ece9d8; background-color: transparent"
													width="85">&nbsp;</td> -->
											</tr>
											
											<s:iterator value="showList" >
											
										<!-- 	<tr style="height: 13.5pt; mso-height-source: userset"
												height="18">
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 25pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 25pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 25pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 25pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 25pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 25pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 25pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 25pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td>
											</tr> -->
											<tr style="height: 13.5pt; mso-height-source: userset"
												height="18">
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 30pt; border-bottom: #ece9d8; background-color: transparent">
													<font size="" color=""><s:property value="MovieInfo.movieName"/></font>
													</td>
												<!-- <td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 25pt; border-bottom: #ece9d8; background-color: transparent">
													<s:property value="showDate"/></td> -->
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 30pt; border-bottom: #ece9d8; background-color: transparent">
													<s:property value="showTime"/></td>
												<!-- <td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 25pt; border-bottom: #ece9d8; background-color: transparent">
													17:18</td> -->
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 30pt; border-bottom: #ece9d8; background-color: transparent">
													<s:property value="showPrice"/></td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 30pt; border-bottom: #ece9d8; background-color: transparent">
													<s:property value="MovieInfo.movieTime"/></td>
												<td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 30pt; border-bottom: #ece9d8; background-color: transparent">
											
													<a href="movieShowInfo_buyTicketForSeat?showId=<s:property value="showId"/>" target="_blank">在线购票</a>
												</td>
												<!-- <td class="xl79" dir="ltr"
													style="border-right: #ece9d8; border-top: #ece9d8; border-left: #ece9d8; width: 25pt; border-bottom: #ece9d8; background-color: transparent">&nbsp;</td> -->
											</tr>
											
											</s:iterator>
											
										</tbody>
									</table>
								</p>
							</div>
  </body>
</html>
