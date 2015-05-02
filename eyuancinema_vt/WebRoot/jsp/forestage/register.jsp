<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>e缘电影院</title>

<link rel="stylesheet" type="text/css" href="../../css/index_01_table.css" title="default" />

<link rel="stylesheet" type="text/css" href="../../index_01_table.css"  title="default" />
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
<div id="center" style="width:1000px; float:left;">
	
	<div id="cc" style="width:1000px; float:left;">
	  <div style="width:150px; float:left; margin-top:10px;">
        <div style="padding-left:12px; width:150px; margin-bottom:10px;"><img src="../../image/members_01.gif" ="http://www.sddyy.cn/images/01/members_01.gif" /></div>
	    <div style="margin-left:15px;" align="center">
          <ul id="memul">
            <li class='libj'><a href="register.jsp" >【会员注册】</a></li>
            <li class='libj'><a href="../../members.asp-articleid=15.htm" >【会员制度】</a></li><li class='libj'><a href="buytickets.jsp" >【购票须知】</a></li>
          </ul>
        </div>
      </div>
	  <div style="width:620px; float:left; margin-top:15px;">			
			<div align="center">
			<div class="bigfont" style="margin-top:63px; margin-bottom:20px; padding-left:20px;" align="left">填写注册信息（<img src="../../image/register_02.jpg"  alt="*" />为必填项 会员注册信息将会被严格保密）</div>
			<div style="margin-left:15px;" align="left"> <form action="http://www.sddyy.cn/register_code.asp?action=SaveData" method="post" name="reg" id="reg" onsubmit="return accaction()">
			<table width="600" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
  <tr>
    <td width="87" height="35" align="left" class="bigfont"><img src="../../image/register_02.jpg" ="http://www.sddyy.cn/images/01/register_02.jpg" alt="*" />用户名：</td>
    <td align="left"><input name="UserName" type="text" class="inputcs3-1" id="UserName"/><input name="Submit2" type="submit" value="检验用户名是否可用" style="display:none" /></td>
    <td align="left" class="font1">最大10个字符，不能使用特殊字符</td>
  </tr>
  <tr>
    <td height="35" align="left" class="bigfont"><img src="../../image/register_02.jpg"  alt="*" />密 &nbsp;码：</td>
    <td align="left"><input name="password" type="password" class="inputcs3-1" id="Password" /></td>
    <td align="left" class="font1">大于6小于14个字符，不能使用特殊字符</td>
  </tr>
  <tr>
    <td height="35" align="left" valign="top" class="bigfont" style="padding-top:5px;"><img src="../../image/register_02.jpg" ="http://www.sddyy.cn/images/01/register_02.jpg" alt="*" />确认密码：</td>
    <td align="left" style="padding-top:5px;"><input name="RePassWord" type="password" class="inputcs3-1" id="RePassWord" /></td>
    <td align="left" style="padding-top:5px;">&nbsp;</td>
  </tr>
   <tr>
    <td height="35" align="left" valign="top" class="bigfont" style="padding-top:5px;"><img src="../../image/register_02.jpg"  alt="*" />邮箱地址：</td>
    <td align="left" style="padding-top:5px;"><input name="Email" type="text" class="inputcs3-1" id="Email" /></td>
    <td align="left" style="padding-top:5px;" class="font1">必须是有效电子邮箱，当你忘记密码时要用到它</td>
   </tr>
   <tr>
    <td height="35" align="left" valign="top" class="bigfont" style="padding-top:5px;"><img src="../../image/register_02.jpg"  alt="*" />手机号码：</td>
    <td align="left" style="padding-top:5px;"><input name="Mobile" type="text" class="inputcs3-1" id="Mobile" /></td>
    <td align="left" style="padding-top:5px;">&nbsp;</td>
   </tr>
   <tr>
    <td height="35" align="left" valign="top" class="bigfont" style="padding-top:5px;">&nbsp;性 &nbsp;别：</td>
    <td align="left" style="padding-top:5px;" class="bigfont"><input name="sex" type="radio" value="-1" checked="checked" />
      <span>保密</span>
      <input name="sex" type="radio" value="1" />
      <span>男</span>
      <input name="sex" type="radio" value="0" />
      <span>女</span></td>
    <td align="left" style="padding-top:5px;" class="bigfont">&nbsp;</td>
   </tr>
  <tr>
    <td height="35" align="left" valign="top" class="bigfont" style="padding-top:5px; padding-left:5px;">&nbsp;生 &nbsp;日：</td>
    <td align="left" style="padding-top:5px;"> <input type="text" name="date" id="date" class="inputcs3-1" ></td>
    <td align="left" style="padding-top:5px;" class="font1">日期格式为：1980-5-21 或者 1980年5月21日 </td>
  </tr>
    <tr>
  <td height="35" align="left" valign="top" class="bigfont" style="padding-top:5px;"><img src="../../image/register_02.jpg"  alt="*" />验证码：</td>
    <td align="left" style="padding-top:5px;"><div align="center" style="float:left;"><input name="validatecode" type="text" class="inputcs4-1" id="validatecode" /></div>
      <div style="width:50px; height:20px; float:left; background-color:#F6F6F6; margin-left:5px; padding-top:5px;" align="center">1234</div></td>
    <td align="left" style="padding-top:5px;" class="font1">请输入验证码</td>
    </tr>  
</table>
<table width="600" border="0" cellspacing="0" cellpadding="0" class="bigfont" style="margin-top:20px;">
  <tr>
    <td width="190">请仔细阅读以下服务条款</td>
    <td height="40"><input type="checkbox" name="checkbox" id="checkbox" />
      <label for="checkbox"></label>
    已阅读并同意“服务条款”</td>
    </tr>
</table>
<div align="left" style="margin-left:8px; padding-right:18px;" class="textcs">
  &nbsp;&nbsp;&nbsp;&nbsp;尊敬的用户，欢迎您注册并使用首影网提供的服务。在注册及使用前请您仔细阅读如下服务条款：
1、服务条款的确认和接纳
&nbsp;&nbsp;&nbsp;&nbsp;首都网所有服务的所有权、运作权和解释权归首影网所有。所提供的服务必须按照其发布的公司章程，服务条款和操作规则严格执行。 
2、用户的帐号、密码和安全性
&nbsp;&nbsp;&nbsp;&nbsp;您一旦注册成功成为用户，您将得到一个密码和帐号。如果您未保管好自己的帐号和密码而对您、首影网或第三方造成的损害，您将负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。您可随时改变您的密码和图标，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，立即通告首影网。 
</div>
<div align="left" style="margin-top:10px; padding-left:200px;"><input type="image" name="acc" src="../../image/message_04.jpg" id="acc"/>
</div>
</form></div>
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
                <td width="17" align="right"><img src="../../rightline.jpg"  width="2" height="43" /></td>
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