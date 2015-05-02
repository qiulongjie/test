<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>添加管理员</title>

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
<h3>添加管理员</h3>
	<form name="addSuperUserInfoForm" method="post" action="superUserInfo_addSuperUserInfo">
		<label>账户： <input type="text" name="superUserInfo.suName"> </label>
		<p>
			<label>密码： <input type="password" name="superUserInfo.suPassword"> </label>
		</p>
		<p>
			<label> <input type="submit" name="submit" value="提交">
			</label> <label> <input type="reset" name="reset" value="重置">
			</label>
		</p>
	</form>
</body>
</html>
