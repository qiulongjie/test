<%@ page language="java" import="java.util.*,com.eyuan.domain.*"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>查看座位信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link href="../../css/ticket.css" rel="stylesheet" type="text/css">
				<link href="../../css/publicpack.css" rel="stylesheet"
					type="text/css" />
				

					
					<script type="text/javascript" src="../../js/jquery-1.4.2.js"></script>
					<script type="text/javascript" src="../../js/selseat01.js"></script>

</head>
<body>

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
							
						</div>
						<p class="mt12">
							票价：
							<strong class="c_000 px14 ml10">${ms.showPrice }/张</strong><span
								class="ml6 px12 c_7f7"></span>
						</p>
					
					</div>
					<!--新的 结束-->
				</div>
				<!-- right end-->

			</div>

	

</body>
</html>
