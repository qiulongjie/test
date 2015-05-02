<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户列表</title>

  </head>
  
  <body>
  <center>
    <p>所有用户信息</p>
  <table width="100%" border="1">
    <tr>
      <th scope="col">账号</th>
      <th scope="col">密码</th>
      <th scope="col">电话</th>
      <th scope="col">邮箱</th>
      <th scope="col">生日</th>
      <th scope="col">性别</th>
      <th scope="col" colspan="2">操作</th>
    </tr>
<s:iterator value="list" >
    <tr>
      <td><s:property value="userName"/></td>
      <td><s:property value="userPassword"/></td>
      <td><s:property value="userPhone"/></td>
      <td><s:property value="userEmail"/></td>
      <td><s:property value="userBirthday"/></td>
      <td><s:property value="userSex"/></td>
      <td><a href="userInfo_updateUI?userInfo.userId=<s:property value="userId"/>" onclick="return confirm('确定要进行编辑吗？')">编辑</a></td>
      <td><a href="userInfo_deleteUserInfo?userInfo.userId=<s:property value="userId"/>" onclick="return confirm('确定要删除吗？')">删除</a></td>
     </tr>
    </s:iterator>
 
</table>
  </center>
  </body>
</html>
