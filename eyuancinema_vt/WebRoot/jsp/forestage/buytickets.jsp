<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>e缘电影院</title>

<link rel="stylesheet" type="text/css" href="../../css/lightbox.css"  title="default" />

<link rel="stylesheet" type="text/css" href="../../css/index_01_table.css"  title="default" />
</head>

<body>
<script language="JavaScript" type="text/javascript">
var Step = 1;
var goreg = true;

function accaction(){

	if(document.reg.UserName.value=="")
	{
		window.alert("请填写用户名！");
		document.reg.UserName.focus();
		return false;
	}
	if(document.reg.password.value=="")
	{
		window.alert("请填写用户密码！");
		document.reg.password.focus();
		return false;
	}
	if(document.reg.RePassWord.value=="")
	{
		window.alert("请填写确认密码！");
		document.reg.RePassWord.focus();
		return false;
	}
	if(document.reg.password.value!=document.reg.RePassWord.value)
	{
		window.alert("两次密码输入不一致，请重新输入！");
		document.reg.password.focus();
		document.reg.RePassWord.value="";
		return false;
	}
	if(document.reg.Email.value=="")
	{
		window.alert("请填写邮箱地址！");
		document.reg.Email.focus();
		return false;
	}
	if(document.reg.Email.value!="")
	{
		var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
		if(!myreg.test(document.reg.Email.value))
		  {
		  alert('请输入有效的E_mail！');
		  document.reg.Email.focus();
		  return false;
		  }
	}
	if(document.reg.Mobile.value=="")
	{
		window.alert("请填写手机号码！");
		document.reg.Mobile.focus();
		return false;
	}
}
</script> 
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
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="file:///C|/Documents and Settings/isoft/桌面/首都电影院网页/sddyy/swflash.cab#version=7,0,19,0"  width="1000" height="253">
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
<div id="center" style="width:1000px; float:left;">
	
	<div id="cc" style="width:1000px; float:left;">
	<div style="width:150px; float:left; margin-top:10px;">
		<div style="padding-left:12px; width:150px; margin-bottom:10px;"><img src="../../image/members_01.gif"  /></div>
		<div style="margin-left:15px;" align="center">
			<ul id="memul">
			<li class='libj'><a href="register.jsp" >【会员注册】</a></li>
			<li class='libj'><a href="file:///C|/Documents and Settings/isoft/桌面/首都电影院网页/sddyy/members.asp-articleid=15.htm" >【会员制度】</a></li><li class='libj'><a href="buytickets.jsp" >【购票须知】</a></li>
			</ul>
		</div>
	</div>
	<div style="width:620px; float:left; margin-top:72px;" align="center">
	
			<div style="width:575px; padding:8px 10px 10px 20px;" align="left">
			<p>1、会员网上申请步骤</p>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 进入e缘网站&mdash;&mdash;注册会员或点击会员专区进行注册</p>
<p>&nbsp;</p>
<p>&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;</p>
<p>&nbsp;</p>
<p>2、忘记会员名的话应该怎么办？</p>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 购票系统（E缘电影院网站）的登录名与E缘网站登录名相同</p>
<p>&nbsp;</p>
<p>&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&nbsp;</p>
<p>&nbsp;</p>
<p>3、如何进行网上购票？</p>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;选中电影后点击网上购票，根据提示回复手机号码并在网上银行进行支付即可</p>
<p>&nbsp;</p>
<p>&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;</p>
<p>&nbsp;</p>
<p>4、为什么无法网上购票？</p>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;海泰网太垃圾了，亲用电信吧（这不算广告吧~）</p>
<p>&nbsp;</p>
<p>&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&nbsp;</p>
<p>&nbsp;</p>
<p>6、遇到不能解决的问题应如何咨询？</p>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请您拨打110 转119 或114 转120 询问客服</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
        </div>
		
	</div>

	<div style="width:215px; float:left; margin-top:30px;">
		  <div style="vertical-align:top; margin:0px; padding:0px;">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:0px; padding:0px;">
    <tr>
      <td height="27" align="left" valign="middle" class="bookingbj2" onmousemove="this.className='bookingbj3'" onmousedown="this.className='bookingbj3'" onmouseout="this.className='bookingbj2'">&nbsp;</td>
    </tr>
    <tr>
      <td height="27" align="left" valign="middle" class="bookingbj2" onmousemove="this.className='bookingbj3'" onmousedown="this.className='bookingbj3'" onmouseout="this.className='bookingbj2'"><a href="questions.asp.jsp" >疑难解答</a></td>
    </tr>
    <tr>
      <td height="27" align="left" valign="middle" class="bookingbj2" onmousemove="this.className='bookingbj3'" onmousedown="this.className='bookingbj3'" onmouseout="this.className='bookingbj2'"><a href="traffic.jsp" >影院交通指南</a></td>
    </tr>
    <tr>
      <td height="27" align="left" valign="middle" class="bookingbj2" onmousemove="this.className='bookingbj3'" onmousedown="this.className='bookingbj3'" onmouseout="this.className='bookingbj2'"><a href="buytickets.jsp" >影院购票指南</a></td>
    </tr>
  </table>
</div>
<div style="padding-left:5px; padding-top:8px;"><img src="../../image/instruction_2.jpg"  /></div>

<div style="padding-left:15px; padding-top:40px;">
  <div style="height:30px; vertical-align:top; padding-left:8px;" align="left"><img src="../../image/newarticle.gif" alt="最新活动"/></div>
  <div>
    <table width="92%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="left" valign="top" style="padding:0px; margin:0px;"><script src="file:///C|/Documents and Settings/isoft/桌面/首都电影院网页/sddyy/SH_smallcode.asp-typ=news"  charset="utf-8"></script></td>
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
                <td width="17" align="right"><img src="file:///C|/Documents and Settings/isoft/桌面/首都电影院网页/sddyy/rightline.jpg"  width="2" height="43" /></td>
              </tr>
          </table></td>
         <td width="650" align="left"><ul class="bottomul">
              <li>欢迎来到e缘电影院官网</li>
           <li>活动最终解释权归e缘电影院所有</li>
           <li></li>
          </ul></td>
        </tr>
      </table></td>
  </tr>
</table>
</div>
</div>
</body>
</html>