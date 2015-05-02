<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>E缘后台管理系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(../images/left.gif);
}
-->
</style>
<link href="css/css.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="images/ico05.gif";//图片ico04为白色的正方形
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="images/ico06.gif";}//图片ico06为蓝色的正方形
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="images/ico04.gif";
	}
}

</SCRIPT>

 <%String manager = (String)session.getAttribute("managerName");
   if(manager==null){
    response.sendRedirect("../login.jsp"); 
    }
   %>

<body>
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<span class="left-font02"><%=session.getAttribute("managerName") %></span></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="${pageContext.request.contextPath }/jsp/backStageLogin_logout.action" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		


		<!--  影片管理开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img8" id="img8" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('8');" >影片管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree8" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu20" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="addMovieInfo_addUI" target="mainFrame" class="left-font03" onClick="tupian('20');">添加影片信息</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="showMovieInfoList_pageList?page=0" target="mainFrame" class="left-font03" onClick="tupian('21');">显示影片信息</a></td>
				</tr>
      </table>
		<!--  影片管理结束    -->

		

		<!--  场次管理开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img7" id="img7" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('7');" >场次管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree7" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu17" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="movieShowInfo_showAddUI" target="mainFrame" class="left-font03" onClick="tupian('17');">添加场次信息</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu18" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
					<a href="movieShowInfo_movieShowInfoList" target="mainFrame" class="left-font03" onClick="tupian('18');">显示场次信息</a></td>
				</tr>
			<!--<tr>
				  <td width="9%" height="20" ><img id="xiaotu19" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="listsendxiaoxi.htm" target="mainFrame" class="left-font03" onClick="tupian('19');">发件信息查看
							</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu24" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="listxiaoxi.htm" target="mainFrame" class="left-font03" onClick="tupian('24');">消息信息列表
							</a></td>
				</tr>-->
      </table>
		<!-- 场次管理结束    -->



        <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >用户管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu1" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="userInfo_addUI" target="mainFrame" class="left-font03" onClick="tupian('1');">添加用户信息</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu4" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="userInfo_userInfoList" target="mainFrame" class="left-font03" onClick="tupian('4');">显示用户信息</a></td>
				</tr>
				<!--
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu2" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listxuqiu.htm" target="mainFrame" class="left-font03" onClick="tupian('2');">项目需求信息查看</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu5" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listmokuai.htm" target="mainFrame" class="left-font03" onClick="tupian('5');">项目模块信息查看</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu3" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listgongneng.htm" target="mainFrame" class="left-font03" onClick="tupian('3');">项目功能信息查看</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listshangchuan.htm" target="mainFrame" class="left-font03" onClick="tupian('6');">项目上传信息查看</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu7" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listchengbenxinxi.htm" target="mainFrame" class="left-font03" onClick="tupian('7');">项目成本信息查看</a></td>
				</tr>
				-->
      </table>
		<!--  用户管理结束    -->

	  <!--  客户系统开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img2" id="img2" src="images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('2');" >售票员管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree2" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        
		<tr>
          <td width="9%" height="20" ><img id="xiaotu7" src="images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="sellerInfo_addUI" target="mainFrame" class="left-font03" onClick="tupian('7');">添加售票员信息</a></td>
        </tr>

		<tr>
          <td width="9%" height="20" ><img id="xiaotu7" src="images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="sellerInfo_sellerInfoList" target="mainFrame" class="left-font03" onClick="tupian('7');">显示售票员信息</a></td>
        </tr>
      </table>

	  <!--  客户系统结束    -->

	  <!--  管理员管理开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img3" id="img3" src="images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('3');" >管理员管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree3" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20" ><img id="xiaotu8" src="images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="superUserInfo_addUI" target="mainFrame" class="left-font03" onClick="tupian('8');">添加管理员信息</a></td>
        </tr>
		<tr>
          <td width="9%" height="20" ><img id="xiaotu9" src="images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="superUserInfo_superUserInfoList" target="mainFrame" class="left-font03" onClick="tupian('9');">显示管理员信息</a></td>
        </tr>
		<!--
		<tr>
          <td width="9%" height="20" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="listMonthYuanGongGongZi.htm" target="mainFrame" class="left-font03" onClick="tupian('10');">员工工作情况查看</a></td>
        </tr>
		-->
      </table>
	
	  <!--  管理员管理结束    -->

	   <!--  考勤系统开始    -->
	   <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img4" id="img4" src="images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('4');" >票务管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree4" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
		<tr>
          <td width="9%" height="20" ><img id="xiaotu11" src="images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="ticket_serchUI" target="mainFrame" class="left-font03" onClick="tupian('11');">电影票查询</a></td>
        </tr>
        <tr>
          <td width="9%" height="20" ><img id="xiaotu12" src="images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="ticket_allPhoneTicket" target="mainFrame" class="left-font03" onClick="tupian('12');">影票列表</a></td>
        </tr>
	  	<tr>
          <td width="9%" height="20" ><img id="xiaotu12" src="images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="ticket_allPhoneTicket" target="mainFrame" class="left-font03" onClick="tupian('12');">影票售票</a></td>
        </tr>
      </table>

      <!--  考勤系统结束    -->

	  <!-- 管理系统开始 -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%"><img name="img5" id="img5" src="images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('5');">活动管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>

	  <table id="subtree5" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu13" src="images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('13');">添加用户</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu14" src="images/ico06.gif" width="8" height="12" /></td>
          <td><a href="#" target="mainFrame" class="left-font03" onClick="tupian('14');">添加角色</a></td>
        </tr>
      </table>
	  <!-- 管理系统结束-->

		
     <!-- 留言板管理开始 -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
        <tr>
          <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="8%"><img name="img6" id="img6" src="images/ico04.gif" width="8" height="11" /></td>
                <td width="92%"><a href="#" target="mainFrame" class="left-font03" onClick="list('6');">留言板管理</a></td>
              </tr>
          </table></td>
        </tr>
      </table>
	  <table id="subtree6" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu15" src="images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('15');">用户手册</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu16" src="images/ico06.gif" width="8" height="12" /></td>
          <td><a href="#" target="mainFrame" class="left-font03" onClick="tupian('16');">规章制度</a></td>
        </tr>
      </table>
	 <!-- 留言板管理结束-->

	
	  </TD>
  </tr>
  
</table>
</body>
</html>
