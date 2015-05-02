<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>场次列表</title>

  </head>
  
  <body>
<center>
    <p>所有场次信息</p>
  <table width="100%" border="0">
    <tr>
      <th scope="col">放映电影</th>
      <th scope="col">日期</th>
       <th scope="col">时间</th>
        <th scope="col">票价</th>
         <th scope="col">剩余票数</th>
         <th scope="col" colspan="3">操作</th>
    </tr>
<s:iterator value="showList" >
    <tr>
      <td><s:property value="MovieInfo.movieName"/></td>
      <td><s:property value="showDate"/></td>
      <td><s:property value="showTime"/></td>
      <td><s:property value="showPrice"/></td>
      <td><s:property value="ticketLeft"/></td>
      <td><a href="movieShowInfo_showUpdateUI?showId=<s:property value="showId"/>" onclick="return confirm('确定要进行编辑吗？')">编辑</a></td>
      <td><a href="movieShowInfo_deleteMovieShowInfo?showId=<s:property value="showId"/>" onclick="return confirm('确定要删除吗？')">删除</a></td>
      <td><a href="movieShowInfo_showSeat?showId=<s:property value="showId"/>" >查看座位信息</a></td>
     </tr>
    </s:iterator>
 
</table>
  </center>
  </body>
</html>
