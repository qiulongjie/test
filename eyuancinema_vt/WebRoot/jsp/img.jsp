<%@ page language="java" contentType="image/jpeg"
	import="java.util.*,com.eyuan.util.RandImgCreater"
	pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'codeTest.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%
response.setHeader("Pragma","No-cache");
response.setHeader("Cache-Control","no-cache");
response.setDateHeader("Expires", 0);
RandImgCreater rc = new RandImgCreater(response);
//RandImgCreater rc = new RandImgCreater(response,8,"abcdef");
//rc.setBgColor(100,100,100);
String rand = rc.createRandImage();
session.setAttribute("rand",rand);
%>

  </head>
  
  <body>
  

  </body>
</html>


<%-- <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
   <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<title>M</title>
		
		<%
			response.setHeader("Pragma", "No-cache");
			response.setHeader("Cache-Control", "no-cache");
			response.setDateHeader("Expires", 0);
			RandImgCreater rc = new RandImgCreater(response);
			//RandImgCreater rc = new RandImgCreater(response,8,"abcdef");
			//rc.setBgColor(100,100,100);
			String rand = rc.createRandImage();
			session.setAttribute("rand", rand);
		%>
	</head>

	<body>


	</body>
</html> --%>
