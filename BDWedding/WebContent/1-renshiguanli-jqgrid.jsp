<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="cn.edu.fzu.sm.bdwedding.staff.Staff" %>   
<%
	//获取项目路径
	String basePath=request.getContextPath();
	//当前文件
	String dirPath="assets";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>影楼信息 - 人事管理 - 婚纱影楼管理系统 - 2019</title>
		<meta name="description" content="Restyling jQuery UI Widgets and Elements" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="<%=basePath%>/<%=dirPath%>/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=basePath%>/<%=dirPath%>/css/font-awesome.min.css" />
		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="<%=basePath%>/<%=dirPath%>/css/jquery-ui.min.css" />
		<link rel="stylesheet" href="<%=basePath%>/<%=dirPath%>/css/datepicker.css" />
		<link rel="stylesheet" href="<%=basePath%>/<%=dirPath%>/css/ui.jqgrid.css" />
		<link rel="stylesheet" href="<%=basePath%>/<%=dirPath%>/css/ace-fonts.css" />
		<link rel="stylesheet" href="<%=basePath%>/<%=dirPath%>/css/ace.min.css" id="main-ace-style" />
		<!--[if lte IE 9]>
			<link rel="stylesheet" href="<%=basePath%>/<%=dirPath%>/css/ace-part2.min.css" />
		<![endif]-->
		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="<%=basePath%>/<%=dirPath%>/css/ace-ie.min.css" />
		<![endif]-->
		<script src="<%=basePath%>/<%=dirPath%>/js/ace-extra.min.js"></script>
		<!--[if lte IE 8]>
		<script src="<%=basePath%>/<%=dirPath%>/js/html5shiv.min.js"></script>
		<script src="<%=basePath%>/<%=dirPath%>/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="no-skin">
		<div id="navbar" class="navbar navbar-default">
			<div class="navbar-container" id="navbar-container">

				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<!-- /section:basics/sidebar.mobile.toggle -->
				<div class="navbar-header pull-left">
					<!-- #section:basics/navbar.layout.brand -->
					<a href="index.jsp" class="navbar-brand">
						<small>
							<img src="<%=basePath%>/<%=dirPath%>/avatars/logo.png" alt="" />
						</small>
					</a>
				</div>

				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">

						<li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
								<span class="badge badge-success">2</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-envelope-o"></i>
									13条未读信息
								</li>

								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar">
										<li>
											<a href="#">
												<img src="<%=basePath%>/<%=dirPath%>/avatars/avatarsheyingshi.jpg" class="msg-photo" alt="Alex's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">摄影师陈石虎:</span>
														主题[风车小镇]因下雨拍摄延迟...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>2019-12-15 18:00:00</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#">
												<img src="<%=basePath%>/<%=dirPath%>/avatars/avatarcaigouyuan.jpg" class="msg-photo" alt="Susan's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">采购员赵薇:</span>
														婚纱采购完毕...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>2019-12-14 19:20:00</span>
													</span>
												</span>
											</a>
										</li>
									</ul>
								</li>

								<li class="dropdown-footer">
									<a href="inbox.html">
										查看全部消息
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<!-- #section:basics/navbar.user_menu -->
						<li class="light-black">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="<%=basePath%>/<%=dirPath%>/avatars/userzhou.jpg" alt="Jason's Photo" />
								<span class="user-info">
									管理员您好<br />
									欢迎登录！
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="ace-icon fa fa-cog"></i>
										系统设置
									</a>
								</li>

								<li>
									<a href="0-profile.jsp">
										<i class="ace-icon fa fa-user"></i>
										修改密码
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#">
										<i class="ace-icon fa fa-power-off"></i>
										登出
									</a>
								</li>
							</ul>
						</li>

						<!-- /section:basics/navbar.user_menu -->
					</ul>
				</div>

				<!-- /section:basics/navbar.dropdown -->
			</div><!-- /.navbar-container -->
		</div>


		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">

			<!-- #section:basics/sidebar -->
			<div id="sidebar" class="sidebar responsive">


				<ul class="nav nav-list">			
					

				<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text"> 影楼信息 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="HunshaListServlet">
									<i class="menu-icon fa fa-caret-right"></i>
									婚纱套系
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="StaffListServlet">
									<i class="menu-icon fa fa-caret-right"></i>
									人事管理
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-pencil-square-o"></i>
							<span class="menu-text"> 前台营业 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="2-dingdanluru.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									订单录入
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="2-dingdanchaxun.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									订单查询
								</a>

								<b class="arrow"></b>
							</li>						
						</ul>
					</li>


					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-picture-o"></i>
							<span class="menu-text"> 摄影管理 </span>
							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="3-sheyingshiguanli.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									摄影师管理
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="3-kepianguanli.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									客片管理
								</a>

								<b class="arrow"></b>
							</li>						
						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list-alt"></i>
							<span class="menu-text">综合查询 </span>
							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>
						<ul class="submenu">
							<li class="">
								<a href="4-huiyuanxinxi.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									会员信息
								</a>

								<b class="arrow"></b>
							</li>												
						</ul>
					</li>
				</ul><!-- /.nav-list -->

				<!-- #section:basics/sidebar.layout.minimize -->
				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>

			</div>

			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<!-- #section:basics/content.breadcrumbs -->
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="index.jsp">首页</a>
						</li>
						<li>
							<a href="javascript:void(0)">影楼信息</a>
						</li>
						<li>
							<a href="StaffListServlet">人事管理</a>
						</li>
					</ul><!-- /.breadcrumb -->

					<!-- #section:basics/content.searchbox -->
					<div class="nav-search" id="nav-search">
						<form class="form-search" >
							<span class="input-icon">
								<input type="text" placeholder="请输入关键字 ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />								
								<i class="ace-icon fa fa-search nav-search-icon" ></i>
							</span>
						</form>
					</div><!-- /.nav-search -->
				</div>
				<div class="page-content">

					<!-- /section:settings.box -->
					<div class="page-content-area">

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-xs-12">
										<div class="layui-row">
      								 	 <form class="layui-form layui-col-md12 x-so" action="StaffListServlet" method="post">
        					 				<input type="text" placeholder="请输入职工名字 ..." class="nav-search-input" id="nav-search-input" autocomplete="off" name="sname" />											
        					 			 <button class="btn btn-xs btn-success"   type="submit"><i class="ace-icon fa fa-search nav-search-icon"></i></button>
      					 				 </form>
    							 	 </div>
    							 	 <hr />
										<table id="sample-table-1" class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</th>
													<th>序号</th>
													<th>姓名</th>
													<th>年龄</th>
													<th class="hidden-480">性别</th>
													<th>岗位</th>
													<th class="hidden-480">电话</th>
													<th class="hidden-480">薪资</th>
													<th class="hidden-480">操作</th>
												</tr>
											</thead>

											<tbody>
											 <% List<Staff> list=(List<Staff>)request.getAttribute("stafflist");
        										for(Staff s:list)
        											{
       										 %>
												<tr>												
													<td class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td><%=s.getsId()%></td>
													<td><%=s.getsName()%></td>
													<td class="hidden-480"><%=s.getsAge()%></td>
													<td><%=s.getsSex()%></td>

													<td class="hidden-480">
														<%=s.getsPost()%>
													</td>
													<td class="hidden-480">
														<%=s.getsPhone()%>
													</td>
													<td class="hidden-480">
														<%=s.getsWage()%>
													</td>
													<td>
														<div class="hidden-sm hidden-xs btn-group">
															<a title="编辑"  href="StaffEditServlet?sid=<%=s.getsId()%>">
               											 		<i class="ace-icon fa fa-pencil bigger-120">&#xe642;</i>
              												</a>
              												<a title="删除" onclick="del('<%=s.getsName()%>')">
               													<i class="ace-icon fa fa-trash-o bigger-120">&#xe640;</i>
              												</a>
															
														</div>
													</td>
												</tr>											
												<%
        										 }
        									    %>
											</tbody>
										</table>
									</div><!-- /.span -->
								</div><!-- /.row -->

								<div class="hr hr-18 dotted hr-double"></div>

								<h4 class="pink">
									<i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer yellow"></i>
									<a href="#modal-table" role="button" class="blue" data-toggle="modal">添加职工信息</a>
								</h4>

								<div class="hr hr-18 dotted hr-double"></div>
								
								<div id="modal-table" class="modal fade" tabindex="-1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header no-padding">
												<div class="table-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
														<span class="white">&times;</span>
													</button>
													增加新进职工
												</div>
											</div>

											<div class="modal-body no-padding">
												<form class="form-horizontal "  action="StaffAddServlet" id="validation-form" method="post">
														<div class="space-2"></div>
														<div class="form-group">
															<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="sid">序号:</label>

															<div class="col-xs-12 col-sm-9">
																<div class="clearfix">
																	<input type="text" name="sid" id="sid" class="col-xs-12 col-sm-3" />
																</div>
															</div>
														</div>
														<div class="space-2"></div>
														<div class="form-group">
															<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="sname">姓名:</label>

															<div class="col-xs-12 col-sm-9">
																<div class="clearfix">
																	<input type="text" name="sname" id="sname" class="col-xs-12 col-sm-6" />
																</div>
															</div>
														</div>

														<div class="space-2"></div>

														<div class="form-group">
															<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="sage">年龄:</label>

															<div class="col-xs-12 col-sm-9">
																<div class="clearfix">
																	<input type="text" name="sage" id="sage" class="col-xs-12 col-sm-6" />
																</div>
															</div>
														</div>

														<div class="space-2"></div>

														<div class="form-group">
															<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="ssex">性别:</label>

															<div class="col-xs-12 col-sm-9">
																<div class="clearfix">
																	<input type="text" name="ssex" id="ssex" class="col-xs-12 col-sm-6" />
																</div>
															</div>
														</div>

														<div class="hr hr-dotted"></div>

														<div class="form-group">
															<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="spost">岗位:</label>

															<div class="col-xs-12 col-sm-9">
																<div class="input-group">
																	<span class="input-group-addon">
																		<i class="ace-icon fa fa-group"></i>
																	</span>
																	<input type="text" id="spost" name="spost" class="col-xs-12 col-sm-5" />
																</div>
															</div>
														</div>

														<div class="space-2"></div>

														<div class="form-group">
															<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="sphone">电话:</label>

															<div class="col-xs-12 col-sm-9">
																<div class="input-group">
																	<span class="input-group-addon">
																		<i class="ace-icon fa fa-phone"></i>
																	</span>

																	<input type="text" id="sphone" name="sphone" class="col-xs-12 col-sm-5" />
																</div>
															</div>
														</div>
														
														<div class="space-2"></div>

														<div class="form-group">
															<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="swage">薪资:</label>

															<div class="col-xs-12 col-sm-9">
																<div class="input-group">
																	<span class="input-group-addon">
																		<i class="ace-icon fa fa-dollar"></i>
																	</span>

																	<input type="text" id="swage" name="swage" class="col-xs-12 col-sm-5" />
																</div>
															</div>
														</div>


														<div class="space-2"></div>														
												

														<div class="modal-footer no-margin-top">
															<button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
																<i class="ace-icon fa fa-times"></i>
																关闭
															</button>

															<button class="btn btn-sm btn-success pull-right"  type="submit">
															<i class="ace-icon fa fa-plus-square"></i>
															添加
														</button>
														</div>
												</form>
											</div>
										</div><!-- /.modal-content -->
									</div><!-- /.modal-dialog -->
								</div><!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content-area -->
				</div><!-- /.page-content -->
			</div><!-- /.main-content -->
			
			<div class="footer">
				<div class="footer-inner">
					<!-- #section:basics/footer -->
					<div class="footer-content">
						<span class="bigger-120">
							  婚纱影楼管理系统 &copy; 2019-12
						</span><br>
						<span class="bigger-100">
							111701010 冯海清
						</span>
						</br>
					</div>

					<!-- /section:basics/footer -->
				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='<%=basePath%>/<%=dirPath%>/js/jquery.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='<%=basePath%>/<%=dirPath%>/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='<%=basePath%>/<%=dirPath%>/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="<%=basePath%>/<%=dirPath%>/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="<%=basePath%>/<%=dirPath%>/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="<%=basePath%>/<%=dirPath%>/js/jqGrid/jquery.jqGrid.min.js"></script>
		<script src="<%=basePath%>/<%=dirPath%>/js/jqGrid/i18n/grid.locale-en.js"></script>

		<!-- ace scripts -->
		<script src="<%=basePath%>/<%=dirPath%>/js/ace-elements.min.js"></script>
		<script src="<%=basePath%>/<%=dirPath%>/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			
		</script>
		<script>
		function del(sname){
	  		$.post(
					"/BDWedding/StaffDelServlet",
					"sname="+sname,
					function(result){
						if(result=='success')
							{
								alert("删除成功!");
								window.location.href="/BDWedding/StaffListServlet"
							}
					},
					"text")
	      }
		</script>

	</body>
</html>
