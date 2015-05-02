<%@ page contentType="text/html; charset=utf-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>选座位</title>

 <link href="../../css/sel.css" rel="stylesheet" type="text/css">
 <script type="text/javascript" src="../../js/jquery-1.4.2.js"></script>
 <script type="text/javascript" src="../../js/selseat.js"></script>


 
</head>

<body>
<div class="p_r" id="seatContainer">
	<table cellspacing="0" cellpadding="0" class="seat_num" align="center">  
		<tbody>
			<tr><td width="30" class="row_nums">1排</td></tr>
			<tr><td width="30" class="row_nums">2排</td></tr>
			<tr><td width="30" class="row_nums">3排</td></tr>
			<tr><td width="30" class="row_nums">4排</td></tr>
			<tr><td width="30" class="row_nums">5排</td></tr>
			<tr><td width="30" class="row_nums">6排</td></tr>
			<tr><td width="30" class="row_nums">7排</td></tr>
			<tr><td width="30" class="row_nums">8排</td></tr>
			<tr><td width="30" class="row_nums">9排</td></tr>
			<tr><td width="30" class="row_nums">10排</td></tr>
		</tbody>
	</table> 
	
	<div id="drawSeat" class="seat_selectout">
		<table id="tbSeat" cellspacing="0" cellpadding="0" class="seat_views" align="center">  
			<tbody>
			<tr>
				<td id="tbSeatTD" align="center">
					<i class="seat_null" id="seat_0_0" rowname="1" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_0_1" rowname="1" colname="1排10座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_0_2" rowname="1" colname="1排9座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_0_3" rowname="1" colname="1排8座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_0_4" rowname="1" colname="1排7座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_0_5" rowname="1" colname="1排6座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_0_6" rowname="1" colname="1排5座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_0_7" rowname="1" colname="1排4座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_0_8" rowname="1" colname="1排3座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_0_9" rowname="1" colname="1排2座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_0_10" rowname="1" colname="1排1座" status="0" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_0_11" rowname="1" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_0_12" rowname="1" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_0_13" rowname="1" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_0_14" rowname="1" colname="0" status="-1" type="0">&nbsp;</i>
				</td>
			</tr>
			<tr>
				<td id="tbSeatTD" align="center">
					<i class="seat_null" id="seat_1_0" rowname="2" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_1_1" rowname="2" colname="2排10座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_1_2" rowname="2" colname="2排9座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_1_3" rowname="2" colname="2排8座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_1_4" rowname="2" colname="2排7座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_1_5" rowname="2" colname="2排6座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_1_6" rowname="2" colname="2排5座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_1_7" rowname="2" colname="2排4座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_1_8" rowname="2" colname="2排3座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_1_9" rowname="2" colname="2排2座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_1_10" rowname="2" colname="2排1座" status="0" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_1_11" rowname="2" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_1_12" rowname="2" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_1_13" rowname="2" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_1_14" rowname="2" colname="0" status="-1" type="0">&nbsp;</i>
				</td>
		 	</tr>
			<tr>
				<td id="tbSeatTD" align="center">
					<i class="seat_null" id="seat_2_0" rowname="3" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_2_1" rowname="3" colname="3排10座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_2_2" rowname="3" colname="3排9座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_2_3" rowname="3" colname="3排8座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_2_4" rowname="3" colname="3排7座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_2_5" rowname="3" colname="3排6座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_2_6" rowname="3" colname="3排5座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_2_7" rowname="3" colname="3排4座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_2_8" rowname="3" colname="3排3座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_2_9" rowname="3" colname="3排2座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_2_10" rowname="3" colname="3排1座" status="0" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_2_11" rowname="3" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_2_12" rowname="3" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_2_13" rowname="3" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_2_14" rowname="3" colname="0" status="-1" type="0">&nbsp;</i>
				</td>
			</tr>
			<tr>
				<td id="tbSeatTD" align="center">
					<i class="seat_null" id="seat_3_0" rowname="4" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_3_1" rowname="4" colname="4排10座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_3_2" rowname="4" colname="4排9座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_3_3" rowname="4" colname="4排8座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_3_4" rowname="4" colname="4排7座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_3_5" rowname="4" colname="4排6座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_3_6" rowname="4" colname="4排5座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_3_7" rowname="4" colname="4排4座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_3_8" rowname="4" colname="4排3座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_3_9" rowname="4" colname="4排2座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_3_10" rowname="4" colname="4排1座" status="0" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_3_11" rowname="4" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_3_12" rowname="4" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_3_13" rowname="4" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_3_14" rowname="4" colname="0" status="-1" type="0">&nbsp;</i>
				</td>
			</tr>
			<tr>
				<td id="tbSeatTD" align="center">
					<i class="seat_null" id="seat_5_0" rowname="5" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_5_1" rowname="5" colname="5排10座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_5_2" rowname="5" colname="5排9座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_5_3" rowname="5" colname="5排8座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_5_4" rowname="5" colname="5排7座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_5_5" rowname="5" colname="5排6座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_5_6" rowname="5" colname="5排5座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_5_7" rowname="5" colname="5排4座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_5_8" rowname="5" colname="5排3座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_5_9" rowname="5" colname="5排2座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_5_10" rowname="5" colname="5排1座" status="0" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_5_11" rowname="5" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_5_12" rowname="5" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_5_13" rowname="5" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_5_14" rowname="5" colname="0" status="-1" type="0">&nbsp;</i>
				</td>
			</tr>
			<tr>
				<td id="tbSeatTD" align="center">
					<i class="seat_null" id="seat_6_0" rowname="6" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_6_1" rowname="6" colname="6排10座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_6_2" rowname="6" colname="6排9座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_6_3" rowname="6" colname="6排8座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_6_4" rowname="6" colname="6排7座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_6_5" rowname="6" colname="6排6座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_6_6" rowname="6" colname="6排5座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_6_7" rowname="6" colname="6排4座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_6_8" rowname="6" colname="6排3座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_6_9" rowname="6" colname="6排2座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_6_10" rowname="6" colname="6排1座" status="0" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_6_11" rowname="6" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_6_12" rowname="6" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_6_13" rowname="6" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_6_14" rowname="6" colname="0" status="-1" type="0">&nbsp;</i>
				</td>
			</tr>
			<tr>
				<td id="tbSeatTD" align="center">
					<i class="seat_null" id="seat_7_0" rowname="7" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_7_1" rowname="7" colname="7排10座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_7_2" rowname="7" colname="7排9座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_7_3" rowname="7" colname="7排8座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_7_4" rowname="7" colname="7排7座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_7_5" rowname="7" colname="7排6座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_7_6" rowname="7" colname="7排5座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_7_7" rowname="7" colname="7排4座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_7_8" rowname="7" colname="7排3座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_7_9" rowname="7" colname="7排2座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_7_10" rowname="7" colname="7排1座" status="0" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_7_11" rowname="7" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_7_12" rowname="7" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_7_13" rowname="7" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_7_14" rowname="7" colname="0" status="-1" type="0">&nbsp;</i>
				</td>
			</tr>
			<tr>
				<td id="tbSeatTD" align="center">
					<i class="seat_null" id="seat_8_0" rowname="8" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_8_1" rowname="8" colname="8排10座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_8_2" rowname="8" colname="8排9座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_8_3" rowname="8" colname="8排8座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_8_4" rowname="8" colname="8排7座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_8_5" rowname="8" colname="8排6座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_8_6" rowname="8" colname="8排5座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_8_7" rowname="8" colname="8排4座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_8_8" rowname="8" colname="8排3座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_8_9" rowname="8" colname="8排2座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_8_10" rowname="8" colname="8排1座" status="0" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_8_11" rowname="8" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_8_12" rowname="8" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_8_13" rowname="8" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_8_14" rowname="8" colname="0" status="-1" type="0">&nbsp;</i>
				</td>
			</tr>
			<tr>
				<td id="tbSeatTD" align="center">
					<i class="seat_null" id="seat_9_0" rowname="9" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_9_1" rowname="9" colname="9排10座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_9_2" rowname="9" colname="9排9座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_9_3" rowname="9" colname="9排8座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_9_4" rowname="9" colname="9排7座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_9_5" rowname="9" colname="9排6座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_9_6" rowname="9" colname="9排5座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_9_7" rowname="9" colname="9排4座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_9_8" rowname="9" colname="9排3座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_9_9" rowname="9" colname="9排2座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_9_10" rowname="9" colname="9排1座" status="0" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_9_11" rowname="9" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_9_12" rowname="9" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_9_13" rowname="9" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_9_14" rowname="9" colname="0" status="-1" type="0">&nbsp;</i>
				</td>
			</tr>
			<tr>
				<td id="tbSeatTD" align="center">
					<i class="seat_null" id="seat_10_0" rowname="10" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_10_1" rowname="10" colname="10排10座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_10_2" rowname="10" colname="10排9座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_10_3" rowname="10" colname="10排8座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_10_4" rowname="10" colname="10排7座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_10_5" rowname="10" colname="10排6座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_10_6" rowname="10" colname="10排5座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_10_7" rowname="10" colname="10排4座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_10_8" rowname="10" colname="10排3座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_10_9" rowname="10" colname="10排2座" status="0" type="0">&nbsp;</i>
					<i class="seat_ture" id="seat_10_10" rowname="10" colname="10排1座" status="0" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_10_11" rowname="10" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_10_12" rowname="10" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_10_13" rowname="10" colname="0" status="-1" type="0">&nbsp;</i>
					<i class="seat_null" id="seat_10_14" rowname="10" colname="0" status="-1" type="0">&nbsp;</i>
				</td>
			</tr>
			
			</tbody>
		</table>
	</div>
	

































</div>




</body>
</html>
