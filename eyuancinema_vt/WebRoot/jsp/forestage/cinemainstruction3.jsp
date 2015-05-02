<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>e缘电影院</title>
<script src="../../js/AC_RunActiveContent.js"  type="text/javascript"></script>
<script src="../../js/prototype.js"  type="text/javascript"></script>
<script src="../../js/scriptaculous.js-load=effects"  type="text/javascript"></script>
<script src="../../jslightbox.js"  type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="../../css/lightbox.css"  title="default" />

<link rel="stylesheet" type="text/css" href="../../css/index_01_table.css"  title="default" />
<script type="text/javascript">

function addLoadEvent(func){
	var oldonload = window.onload;
	if (typeof window.onload != 'function') {
		window.onload = func;
	} else {
		window.onload = function(){
			oldonload();
			func();
		}
	}
}

function moveElement(elementID,final_x,final_y,interval) {
  if (!document.getElementById) return false;
  if (!document.getElementById(elementID)) return false;
  var elem = document.getElementById(elementID);
  if (elem.movement) {
    clearTimeout(elem.movement);
  }
  if (!elem.style.left) {
    elem.style.left = "0px";
  }
  if (!elem.style.top) {
    elem.style.top = "0px";
  }
  var xpos = parseInt(elem.style.left);
  var ypos = parseInt(elem.style.top);
  if (xpos == final_x && ypos == final_y) {
		return true;
  }
  if (xpos < final_x) {
    var dist = Math.ceil((final_x - xpos)/10);
    xpos = xpos + dist;
  }
  if (xpos > final_x) {
    var dist = Math.ceil((xpos - final_x)/10);
    xpos = xpos - dist;
  }
  if (ypos < final_y) {
    var dist = Math.ceil((final_y - ypos)/10);
    ypos = ypos + dist;
  }
  if (ypos > final_y) {
    var dist = Math.ceil((ypos - final_y)/10);
    ypos = ypos - dist;
  }
  elem.style.left = xpos + "px";
  elem.style.top = ypos + "px";
  var repeat = "moveElement('"+elementID+"',"+final_x+","+final_y+","+interval+")";
  elem.movement = setTimeout(repeat,interval);
}

function classNormal(iFocusBtnID,iFocusTxID){
	var iFocusBtns= $(iFocusBtnID).getElementsByTagName('li');
	var iFocusTxs = $(iFocusTxID).getElementsByTagName('li');
	for(var i=0; i<iFocusBtns.length; i++) {
		iFocusBtns[i].className='normal';
		iFocusTxs[i].className='normal';
	}
}

function classCurrent(iFocusBtnID,iFocusTxID,n){
	var iFocusBtns= $(iFocusBtnID).getElementsByTagName('li');
	var iFocusTxs = $(iFocusTxID).getElementsByTagName('li');
	iFocusBtns[n].className='current';
	iFocusTxs[n].className='current';
}

function iFocusChange() {
	if(!$('ifocus')) return false;
	$('ifocus').onmouseover = function(){atuokey = true};
	$('ifocus').onmouseout = function(){atuokey = false};
	var iFocusBtns = $('ifocus_btn').getElementsByTagName('li');
	var listLength = iFocusBtns.length;
	iFocusBtns[0].onmouseover = function() {
		moveElement('ifocus_piclist',0,0,5);
		classNormal('ifocus_btn','ifocus_tx');
		classCurrent('ifocus_btn','ifocus_tx',0);
	}
	if (listLength>=2) {
		iFocusBtns[1].onmouseover = function() {
			moveElement('ifocus_piclist',0,-325,5);
			classNormal('ifocus_btn','ifocus_tx');
			classCurrent('ifocus_btn','ifocus_tx',1);
		}
	}
	if (listLength>=3) {
		iFocusBtns[2].onmouseover = function() {
			moveElement('ifocus_piclist',0,-650,5);
			classNormal('ifocus_btn','ifocus_tx');
			classCurrent('ifocus_btn','ifocus_tx',2);
		}
	}
	if (listLength>=4) {
		iFocusBtns[3].onmouseover = function() {
			moveElement('ifocus_piclist',0,-975,5);
			classNormal('ifocus_btn','ifocus_tx');
			classCurrent('ifocus_btn','ifocus_tx',3);
		}
	}
	if (listLength>=5) {
		iFocusBtns[4].onmouseover = function() {
			moveElement('ifocus_piclist',0,-1300,5);
			classNormal('ifocus_btn','ifocus_tx');
			classCurrent('ifocus_btn','ifocus_tx',4);
		}
	}
}

setInterval('autoiFocus()',5000);
var atuokey = false;
function autoiFocus() {
	if(!$('ifocus')) return false;
	if(atuokey) return false;
	var focusBtnList = $('ifocus_btn').getElementsByTagName('li');
	var listLength = focusBtnList.length;
	for(var i=0; i<listLength; i++) {
		if (focusBtnList[i].className == 'current') var currentNum = i;
	}
	if (currentNum==0&&listLength!=1 ){
		moveElement('ifocus_piclist',0,-325,5);
		classNormal('ifocus_btn','ifocus_tx');
		classCurrent('ifocus_btn','ifocus_tx',1);
	}
	if (currentNum==1&&listLength!=2 ){
		moveElement('ifocus_piclist',0,-650,5);
		classNormal('ifocus_btn','ifocus_tx');
		classCurrent('ifocus_btn','ifocus_tx',2);
	}
	if (currentNum==2&&listLength!=3 ){
		moveElement('ifocus_piclist',0,-975,5);
		classNormal('ifocus_btn','ifocus_tx');
		classCurrent('ifocus_btn','ifocus_tx',3);
	}
	if (currentNum==3&&listLength!=4){
		moveElement('ifocus_piclist',0,-1300,5);
		classNormal('ifocus_btn','ifocus_tx');
		classCurrent('ifocus_btn','ifocus_tx',4);
	}
	if (currentNum==4 ){
		moveElement('ifocus_piclist',0,0,5);
		classNormal('ifocus_btn','ifocus_tx');
		classCurrent('ifocus_btn','ifocus_tx',0);
	}
	if (currentNum==1&&listLength==2 ){
		moveElement('ifocus_piclist',0,0,5);
		classNormal('ifocus_btn','ifocus_tx');
		classCurrent('ifocus_btn','ifocus_tx',0);
	}
	if (currentNum==2&&listLength==3 ){
		moveElement('ifocus_piclist',0,0,5);
		classNormal('ifocus_btn','ifocus_tx');
		classCurrent('ifocus_btn','ifocus_tx',0);
	}
}
addLoadEvent(iFocusChange);
</script>
</head>

<body>
<div style="width:100%;margin-left:auto;margin-right:auto;margin-top:93px;" align="center" class="topbj"><script language="JavaScript">
<!--
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
//-->
</script>
 
 <table><tr><td align="center">
<div style="width:1000px;">
	 <div id="apDiv1"><img src="../../image/pstopic.jpg" width="262" height="133"></div>
		<div>
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="../../swflash.cab#version=7,0,19,0"  width="1000" height="253">
					    <param name="movie" value="../../flash/banner.swf"  />
					  <param name="quality" value="high" />
					  <param name="wmode" value="transparent" />
					  <embed src="../../flash/banner.swf"  width="1000" height="253" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
		  </object>
		</div>
        <div id="Tcenter">
		<div id="bigmenu">
        <table border="0" cellpadding="0" cellspacing="0">			  <tr>
          <td><img src="../../image/top_03.jpg"  width="1004" height="94" border="0" usemap="#Map" /><map name="Map" id="Map"><area shape="circle" coords="800,60,29" href="eyuancinema.jsp" /><area shape="circle" coords="890,63,29" href="eyuancinema.jsp"  /><area shape="circle" coords="725,60,31" href="eyuancinema.jsp" /><area shape="circle" coords="641,59,30" href="eyuancinema.jsp"  /><area shape="circle" coords="551,60,29" href="activity.jsp"  /><area shape="circle" coords="471,59,30" href="questions.asp.jsp" /><area shape="circle" coords="373,59,30" href="cinemainstruction.jsp"  /><area shape="circle" coords="285,59,30" href="articleshow.jsp" /><area shape="circle" coords="202,61,29" href="newfilms.asp.jsp"  /><area shape="circle" coords="126,61,30" href="eyuancinema.jsp" /></map></td></tr></table>
        
        </div>
		<div id="login"></div>
	</div>
</div></td></tr></table></div>
<div class="divbig" style="width:1000px;margin-left:auto;margin-right:auto;" align="center">
<div id="center" style="width:1000px;">
	
	<div id="cc" style="width:1000px; float:left;">
		<div style="width:170px; float:left;">
			<div style="padding-left:12px;"><img src="../../image/instruction_1.gif" /></div>
			<div style="margin-left:20px;" align="center">
				<ul id="insul">
				<li class='libj'><a href="cinemainstruction.jsp" >【关于艺影】</a></li>
                <li class='libj'><a href="cinemainstruction1.jsp" > 【logo释意】</a></li>
                
                <li class='libj'><a href="cinemainstruction2.jsp" >【图片长廊】</a></li>
                <li class='libj'><a href="../../instruction.asp-id=7.htm" >【校内方位】</a></li>
                <li class='libj'><a href="../../instruction.asp-id=10.htm" >【经典活动】</a></li>
				</ul>
			</div>
		</div>
		<div style="width:613px; float:left; padding-top:25px;" align="center">
			<div style="width:615px; height:348" align="center">
			
			  <div id="ifocus">
				
				<div id="ifocus_btn">
						<ul>
						
							<li class="current"><img src="../../image/201113055311937.jpg" alt="" /></li>
						
							<li class="normal"><img src="../../image/201113055246205.jpg"  alt="" /></li>
						
							<li class="normal"><img src="../../image/201113055060877.jpg"  alt="" /></li>
						
							<li class="normal"><img src="../../image/201113054982033.jpg"  alt="" /></li>
						
							<li class="normal"><img src="../../image/201113054907765.jpg"  alt="" /></li>
						
						</ul>
				  </div>
				  <div id="ifocus_pic">
					  <div id="ifocus_piclist" style="left:0; top:0;">
						  <ul>
							
							  <li><img src="../../image/201113055311937.jpg" alt="首都电影院"/></li>
							
							  <li><img src="../../image/201113055246205.jpg"  alt="首都电影院"/></li>
							
							  <li><img src="../../image/201113055060877.jpg"  alt="首都电影院"/></li>
							
							  <li><img src="../../image/201113054982033.jpg"  alt="首都电影院"/></li>
							
							  <li><img src="../../image/201113054907765.jpg"  alt="首都电影院"/></li>
							
						  </ul>
					  </div>
					  <div id="ifocus_opdiv"></div>
					  <div id="ifocus_tx">
						  <ul>
							
						<li class="current">艺缘影厅咖啡吧 </li>
						   
							<li class="normal">艺缘影厅，等待观看电影的时候，舒适，旁有贩卖机。</li>
						   
							<li class="normal">超大影厅，世界顶级的电影放映设备、舒适的座椅、宏阔的观影气氛与集体参与感能够满足任何电影发烧友最挑剔的选择</li>
						   
							<li class="normal">VIP影厅，带给您的最尊贵的服务</li>
						   
							<li class="normal">3D眼镜消毒柜，安全放心</li>
						   
						  </ul>
					  </div>
						
				  </div>
				
				</div>
							
			</div>
			<div align="left" style="padding-top:30px; line-height:19px;" class="fontcolor1">
			<p><img height="700" width="528" alt="" src="../../image/0712(1).jpg"  /></p>
<p>&nbsp;</p>
<p>&nbsp;</p> 
			</div>
		</div>
		<div style="width:215px; float:left; padding-top:25px;">
		  <div style="vertical-align:top; margin:0px; padding:0px;">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:0px; padding:0px;">
    <tr>
      <td height="27" align="left" valign="middle" class="bookingbj2" onmousemove="this.className='bookingbj3'" onmousedown="this.className='bookingbj3'" onmouseout="this.className='bookingbj2'"></td>
    </tr>
    <tr>
      <td height="27" align="left" valign="middle" class="bookingbj2" onmousemove="this.className='bookingbj3'" onmousedown="this.className='bookingbj3'" onmouseout="this.className='bookingbj2'"><a href="questions.asp.jsp" ><font color="#000000">疑难解答</font></a></td>
    </tr>
    <tr>
      <td height="27" align="left" valign="middle" class="bookingbj2" onmousemove="this.className='bookingbj3'" onmousedown="this.className='bookingbj3'" onmouseout="this.className='bookingbj2'"><a href="traffic.jsp" ><font color="#000000">影院交通指南</font></a></td>
    </tr>
    <tr>
      <td height="27" align="left" valign="middle" class="bookingbj2" onmousemove="this.className='bookingbj3'" onmousedown="this.className='bookingbj3'" onmouseout="this.className='bookingbj2'"><a href="buytickets.jsp" ><font color="#000000">影院购票指南</font></a></td>
    </tr>
  </table>
</div>
<div style="padding-left:5px; padding-top:8px;"><img src="../../image/instruction_2.jpg"  /></div>

<div style="padding-left:15px; padding-top:40px;">
  <div style="height:30px; vertical-align:top; padding-left:8px;" align="left"><img src="../../image/newarticle.gif" alt="最新活动"/></div>
  <div>
    <table width="92%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="left" valign="top" style="padding:0px; margin:0px;"><script src="../../SH_smallcode.asp-typ=news"  charset="utf-8"></script></td>
        <td width="8"><img src="../../image/linesep.gif"  ></td>
      </tr>
    </table>
  </div>
</div>

	  </div>
	</div>
	
</div>
<div style="margin:0 auto; width:1000px;clear:both;" align="center"><table width="1000" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="1000" align="center" class="centerbj"><table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" style="padding-top:30px; padding-bottom:15px; margin:30px 0px 15px;">
      <tr>
        <td align="center"><img src="../../image/separator01.gif"  /></td>
      </tr>
    </table>
      <table width="845" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td align="left"><img src="../../image/friend.gif"  alt="友情链接" />
            <p>首都电影网 </p>
            <p>中国电影网 </p>
            <p>e缘爱你</p></td>
        </tr>
      </table>
      <table width="845" border="0" cellspacing="0" cellpadding="0" style="margin-top:15px;">
        <tr>
          <td width="195" height="75" align="center"><table width="195" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="178" align="center"><img src="../../image/pstopic.jpg" width="195" /></td>
                <td width="17" align="right"><img src="../../image/rightline.jpg"  width="2" height="43" /></td>
              </tr>
          </table></td>
         <td width="650" align="left"><ul class="bottomul">
              <li>欢迎来到e缘电影院官网</li>
              <li>活动最终解释权归e缘电影院所有</li>
              <li></li></ul></td>
        </tr>
      </table></td>
  </tr>
</table>
</div>
</div>
</body>
</html>