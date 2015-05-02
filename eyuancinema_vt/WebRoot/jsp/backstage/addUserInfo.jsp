<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>添加用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h3>添加用户信息！提示：一般只能由用户自己注册。</h3>
   <form name="addUserInfoForm" method="post" action="userInfo_addUserInfo">
		账号：<input type="text" name="userInfo.userName"><br> 
		密码：<input type="password" name="userInfo.userPassword"><br> 
		电话：<input type="text" name="userInfo.userPhone"><br> 
		邮箱：<input type="text" name="userInfo.userEmail"><br> 
		生日：<input type="text" name="userInfo.userBirthday"> <br>
		性别：<input type="text" name="userInfo.userSex"><br> 
		<input type="submit" name="submit" value="提交"> 
		<input type="reset" name="reset" value="重置">
	</form>
   
  </body>
</html>
