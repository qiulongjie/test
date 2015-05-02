<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>售票员信息列表</title>
    
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
    <center>
    <p>所有售票员信息</p>
  <table width="100%" border="1">
    <tr>
      <th scope="col">账号</th>
      <th scope="col">密码</th>
      <th scope="col" colspan="2">操作</th>
    </tr>
<s:iterator value="list" >
    <tr>
      <td><s:property value="seName"/></td>
      <td><s:property value="sePassword"/></td>
      <td><a href="sellerInfo_updateUI?sellerInfo.seId=<s:property value="seId"/>" onclick="return confirm('确定要进行编辑吗？')">编辑</a></td>
      <td><a href="sellerInfo_deleteSellerInfo?sellerInfo.seId=<s:property value="seId"/>" onclick="return confirm('确定要删除吗？')">删除</a></td>
     </tr>
    </s:iterator>
 
</table>
  </center>
  </body>
</html>
