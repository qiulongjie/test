<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


         <title>艺缘影院后台登陆</title>


<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>     <s:property value="#request.mess" escape="false"/> 


<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="147" background="images/top02.gif"><img src="images/top03.jpg" width="776" height="147" /></td>
  </tr>
</table>
<table width="562" border="0" align="center" cellpadding="0" cellspacing="0" class="right-table03">
  <tr>
    <td width="221"><table width="95%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
      
      <tr>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
          <tr>
            <td align="center"><img src="images/ico13.gif" width="107" height="97" /></td>
          </tr>
          <tr>
            <td height="40" align="center">&nbsp;</td>
          </tr>
          
        </table></td>
        <td><img src="images/line01.gif" width="5" height="292" /></td>
      </tr>
    </table></td>
    <td>
    
    
    <form name="backStageLogin" method="post" action="backStageLogin_login">
    
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="31%" height="35" class="login-text02">账&nbsp;号<br /></td>
        <td width="69%"><input name="backLoginName" type="text" size="23" /></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">密&nbsp;码<br /></td>
        <td><input name="backLoginPassword" type="password" size="23" /></td>
      </tr>
	  
      <tr>
        <td height="35" class="login-text02">验证码<br /></td>
        <td><input name="backLoginCode" type="text" size="10" />&nbsp;<img src="img.jsp" /></td>
      </tr>
      
      <tr>
        <td height="35" class="login-text02">身份</td>
        <td>&nbsp;
        <left class="login-text02">
        <input type="radio" name="backLoginIdentity" value="manager" checked="checked">管理员
        <input type="radio" name="backLoginIdentity" value="seller" >售票员
        </left>
      </td>
      </tr>

      <tr>
        <td height="35">&nbsp;</td>
        <td><input name="Submit2" type="submit" class="right-button01" value="确定" />
          <input name="Submit232" type="reset" class="right-button02" value="重置" /></td>
      </tr>
    </table>
    </form>
    </td>
  </tr>
</table>
</body>
</html>
