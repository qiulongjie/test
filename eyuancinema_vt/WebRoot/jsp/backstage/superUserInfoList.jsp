<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>管理员列表</title>

  </head>
  
  <body>
 <center>
    <p>所有管理员信息</p>
  <table width="100%" border="0">
    <tr>
      <th scope="col">账号</th>
      <th scope="col">密码</th>
      <th scope="col" colspan="2">操作</th>
    </tr>
<s:iterator value="list" >
    <tr>
      <td><s:property value="suName"/></td>
      <td><s:property value="suPassword"/></td>
      <td><a href="superUserInfo_updateUI?superUserInfo.suId=<s:property value="suId"/>" onclick="return confirm('确定要进行编辑吗？')">编辑</a></td>
      <td><a href="superUserInfo_deleteSuperUserInfo?superUserInfo.suId=<s:property value="suId"/>" onclick="return confirm('确定要删除吗？')">删除</a></td>
     </tr>
    </s:iterator>
 
</table>
  </center>
  
  </body>
</html>
