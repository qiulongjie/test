<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="ds" uri="/struts-dojo-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head></head>
<title></title>
<ds:head/>
 

<body>
	<form name="addMovieInfoForm" method="post" action="addMovieInfo_addMovieinfo" enctype="multipart/form-data">
	    上传图片：<input type="file" name="movieImage"><br>
		电影名称：<input type="text" name="movieName"><br> 
		导演：<input type="text" name="movieDirector"><br> 
		主演：<input type="text" name="movieRole"><br> 
		编剧：<input type="text" name="movieAuther"><br> 
		摄影：<input type="text" name="movieShoot"> <br>
		时长：<input type="text" name="movieTime" size="3px">(单位：分)<br>
		类型：<input type="text" name="movieType"> <br>
		
		数字类型：<select name="movieDatatype">
		          <option value="2D">2D</option>
		          <option value="3D">3D</option>
		          <option value="IMAX">IMAX</option>
		          </select>
		<br>
		上映时间：<!-- <input type="text" name="movieShow"><br>  -->
		<ds:datetimepicker name="movieShow" type="date"
		displayFormat="yyyy年MM月dd日">
		</ds:datetimepicker><br>
		语言：<input type="text" name="movieLanguage"><br> 
		地区：<input type="text" name="movieArea"><br> 
		影片简述：
		<textarea cols="30" rows="5" name="movieDesc"></textarea>
		<br> 
		<input type="submit" name="submit" value="提交"> 
		<input type="reset" name="reset" value="重置">
	</form>

</body>
</html>
