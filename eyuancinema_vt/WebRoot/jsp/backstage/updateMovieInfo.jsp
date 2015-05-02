<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>update movieInfo</title>
    
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
    <form name="updateMovieInfoForm" method="post" action="updateMovieInfo_updateMovieInfo">
		电影名称：<input type="text" name="movieName" value=${movieInfo.movieName }><br> 
		导演：<input type="text" name="movieDirector" value=${movieInfo.movieDirector }><br> 
		主演：<input type="text" name="movieRole" value=${movieInfo.movieRole }><br> 
		编剧：<input type="text" name="movieAuther" value=${movieInfo.movieAuther }><br> 
		摄影：<input type="text" name="movieShoot" value=${movieInfo.movieShoot }> <br>
		时长：<input type="text" name="movieTime" size="3px" value=${movieInfo.movieTime }>(单位：分)<br>
		类型：<input type="text" name="movieType" value=${movieInfo.movieType }> <br>
		
		数字类型：<select name="movieDatatype">
		<s:if test="movieDatatype==2D">
		          <option value="2D" selected="selected">2D</option>
		          <option value="3D">3D</option>
		          <option value="IMAX">IMAX</option>
		 </s:if>
		 <s:else><s:if test="movieDatatype==3D">
		          <option value="2D">2D</option>
		          <option value="3D" selected="selected">3D</option>
		          <option value="IMAX">IMAX</option>
		          </s:if>
		             <option value="2D">2D</option>
		             <option value="3D">3D</option>
		             <option value="IMAX" selected="selected">IMAX</option>
		          <s:else>
		          </s:else>
		 </s:else>
		          </select>
		<br>
		上映时间：<input type="text" name="movieShow" value=${movieInfo.movieShow }><br> 
		语言：<input type="text" name="movieLanguage" value=${movieInfo.movieLanguage }><br> 
		地区：<input type="text" name="movieArea" value=${movieInfo.movieArea }><br> 
		影片简述：
		<textarea cols="30" rows="5" name="movieDesc" >${movieInfo.movieDesc }</textarea>
		<br>
		<input type="submit" name="submit" value="确定"> 
		<a href="showMovieInfoList_pageList">返回</a>
	</form>
  </body>
</html>
