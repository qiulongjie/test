<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>影片列表</title>
 <link rel="stylesheet" type="text/css" href="../../css/lightbox.css"
	title="default" />

<!-- <link rel="stylesheet" type="text/css"
	href="../../css/index_01_table.css" title="default" /> -->
  </head>
  <style type="text/css">
.cdiv {
	width: 200px;
	height: 14px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	text-overflow: ellipsis; /* IE/Safari */
	-ms-text-overflow: ellipsis;
	-o-text-overflow: ellipsis; /* Opera */
	-moz-binding: url("ellipsis.xml#ellipsis"); /*FireFox*/
}
</style>
  <body bgcolor="white">
    
    <!-- <p>所有影片</p> -->
    
    <s:iterator value="pageUtil.list" >
    <table width="540" border="0" cellspacing="0" cellpadding="0" style="margin:20px 0px 10px 40px;">
    <tr>
    <td><img src="<s:property value="movieImageUrl"/>" width="126" height="178"/></td>
    <td>
    &nbsp;&nbsp;片名:<s:property value="movieName"/><br>
    &nbsp;&nbsp;导演:<s:property value="movieDirector"/><br>
    <!-- 编剧:<s:property value="movieAuther"/><br> -->
    &nbsp;&nbsp;主演:<s:property value="movieRole"/><br>
   <!--  摄影:<s:property value="movieShoot"/><br> -->
   &nbsp;&nbsp; 时长:<s:property value="movieTime"/><br>
    &nbsp;&nbsp;数据类型:<s:property value="movieDatatype"/><br>
    &nbsp;&nbsp;类型:<s:property value="movieType"/><br>
    &nbsp;&nbsp;上映时间:<s:property value="movieTime"/><br>
    &nbsp;&nbsp;地区:<s:property value="movieArea"/><br>
    &nbsp;&nbsp;语言:<s:property value="movieLanguage"/>
    <!-- <ul class="newfilmsul1">
	<li><strong><s:property value="movieName" /></strong>
	</li>
	<li>导演：<s:property value="movieDirector" /></li>
	<li>主演：<s:property value="movieRole" /></li>
	<li>地区：<s:property value="movieArea" />
	</li>
	<li>类型：<s:property value="movieType" /></li>
	<li>剧情：</li>
	<li><p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<s:property value="movieDesc" />
	</li>
	</ul> -->
    </td>
    </tr>
    <tr><td colspan="2">
    <center>影片简述</center>
    <s:property value="movieDesc"/>
    </td></tr>
    <tr><td><center><a href="updateMovieInfo_showUI?movieId=<s:property value="movieId"/>" >编辑</a>
      <a href="deleteMovieInfo?movieId=<s:property value="movieId"/>" onclick="return confirm('警告！！与本影片关联的所有场次都会删除！确定要删除吗？')">删除</a></center></td></tr>
    </table>
    <hr>
    </s:iterator>
    
    <table>
      <s:if test="%{pageUtil.allRow >= 1}">
 <tr>
    <td colspan="15"> 
    <center>
            共<span><s:property value="pageUtil.allRow"/></span>条记录
			共<span"><s:property value="pageUtil.totalPage"/></span>页
			当前第<span"><s:property value="pageUtil.currentPage"/></span>页
			<s:if test="%{pageUtil.currentPage == 1}">第一页 上一页</s:if>
			<s:else><a href="showMovieInfoList_pageList?pageNow=1">第一页</a>
			<a href="showMovieInfoList_pageList?pageNow=<s:property value="%{pageUtil.currentPage-1}"/>">上一页</a></s:else>
			<s:if test="%{pageUtil.currentPage != pageUtil.totalPage}">
			<a href="showMovieInfoList_pageList?pageNow=<s:property value="%{pageUtil.currentPage+1}"/>">下一页</a>
			<a href="showMovieInfoList_pageList?pageNow=<s:property value="pageUtil.totalPage"/>">最后一页</a></s:if>
			<s:else>下一页 最后一页</s:else>
		</center>
	</td>
 </tr>
 
 </s:if>
		<s:else><tr><td colspan="15"><center>暂时没有记录</center></td></tr></s:else>
</table>
    
  <%-- <table width="100%" border="1">
    <tr>
    <th scope="col">图片</th>
      <th scope="col">片名</th>
      <th scope="col">导演</th>
       <th scope="col">编剧</th>
        <th scope="col">主演</th>
         <th scope="col">摄影</th>
      <th scope="col">时长</th>
       <th scope="col">数据类型</th>
        <th scope="col">类型</th>
         <th scope="col">上映时间</th>
      <th scope="col">地区</th>
       <th scope="col">语言</th>
        <th scope="col">影片简述</th>
         <th scope="col" colspan="2">操作</th>
    </tr>
<s:iterator value="pageUtil.list" >
    <tr>
      <td><img src="<s:property value="movieImageUrl"/>" width="150" height="100"/></td>
      <td><s:property value="movieName"/></td>
      <td><s:property value="movieDirector"/></td>
      <td><s:property value="movieAuther"/></td>
      <td><s:property value="movieRole"/></td>
      <td><s:property value="movieShoot"/></td>
      <td><s:property value="movieTime"/></td>
      <td><s:property value="movieDatatype"/></td>
      <td><s:property value="movieType"/></td>
      <td><s:property value="movieShow"/></td>
      <td><s:property value="movieArea"/></td>
      <td><s:property value="movieLanguage"/></td>
      <td><s:property value="movieDesc"/></td>
      <td><a href="updateMovieInfo_showUI?movieId=<s:property value="movieId"/>" >编辑</a></td>
      <td><a href="deleteMovieInfo?movieId=<s:property value="movieId"/>" onclick="return confirm('警告！！与本影片关联的所有场次都会删除！确定要删除吗？')">删除</a></td>
     </tr>
    </s:iterator>
    
    <s:if test="%{pageUtil.allRow >= 1}">
 <tr>
    <td colspan="15"> 
    <center>
            共<span><s:property value="pageUtil.allRow"/></span>条记录
			共<span"><s:property value="pageUtil.totalPage"/></span>页
			当前第<span"><s:property value="pageUtil.currentPage"/></span>页
			<s:if test="%{pageUtil.currentPage == 1}">第一页 上一页</s:if>
			<s:else><a href="showMovieInfoList_pageList?pageNow=1">第一页</a>
			<a href="showMovieInfoList_pageList?pageNow=<s:property value="%{pageUtil.currentPage-1}"/>">上一页</a></s:else>
			<s:if test="%{pageUtil.currentPage != pageUtil.totalPage}">
			<a href="showMovieInfoList_pageList?pageNow=<s:property value="%{pageUtil.currentPage+1}"/>">下一页</a>
			<a href="showMovieInfoList_pageList?pageNow=<s:property value="pageUtil.totalPage"/>">最后一页</a></s:if>
			<s:else>下一页 最后一页</s:else>
		</center>
	</td>
 </tr>
 
 </s:if>
		<s:else><tr><td colspan="15"><center>暂时没有记录</center></td></tr></s:else>
</table>
  </center> --%>
  
  </body>
</html>
