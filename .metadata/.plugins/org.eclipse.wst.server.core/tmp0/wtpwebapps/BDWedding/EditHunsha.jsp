<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="cn.edu.fzu.sm.bdwedding.photographer.PhotoGrapher" %>  
<%request.setCharacterEncoding("utf-8");%>   
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
		<title>影楼信息 - 婚纱套系 - 婚纱影楼管理系统 - 2019</title>
		<meta name="description" content="Restyling jQuery UI Widgets and Elements" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="<%=basePath%>/<%=dirPath%>/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=basePath%>/<%=dirPath%>/css/font-awesome.min.css" />
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
		<style type="text/css">
			.CSSearchTbl{ border:1px #008CD4 solid;}
			.CSSearchTbl thead{}
			.CSSearchTbl thead tr{}
			.CSSearchTbl thead tr th{  text-align:left; padding-left:10px;}
			.CSSearchTbl tbody{}
			.CSSearchTbl tbody tr{}
			.CSSearchTbl tbody tr td{  padding: 10px;}
			.CSSearchTbl tbody tr td.right{ text-align: left;}
			.CSSearchTbl tbody tr td.left{ text-align: right;}
			.table-responsive{ display: none;}
		</style>
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
							<a href="HunshaListServlet">婚纱套系</a>
						</li>
						<li>
							<a href="javascript:void(0)">修改婚纱方案</a>
						</li>
					</ul><!-- /.breadcrumb -->

					<!-- #section:basics/content.searchbox -->
					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="请输入关键字 ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
								<i class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div><!-- /.nav-search -->
				</div>
				
				<%
				PhotoGrapher photoGrapher=(PhotoGrapher)request.getAttribute("Hunsha");
				
				%>
				<div class="page-content">
							<div class="step-content pos-rel" id="step-container">
										<div class="step-pane active" id="step1">
											<h3 class="lighter block blue">修改该婚纱方案</h3>
												<form class="form-horizontal " name="hunshaForm" action="HunshaUpdateServlet" id="validation-form" method="post">
														<div class="space-2"></div>
														<div class="form-group">	
															<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="pid" disable="" value="">序号:</label>

															<div class="col-xs-12 col-sm-9">
																<div class="clearfix">
																	<input type="text" name="pid" id="pid" class="col-xs-12 col-sm-3"  readonly="readonly" value="<%=photoGrapher.getpId()%>" />
																</div>
															</div>
														</div>
														<div class="space-2"></div>
														<div class="form-group">
															<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="psortname" >婚纱方案:</label>

															<div class="col-xs-12 col-sm-9">
																<div class="clearfix">
																	<input type="text" name="psortname" id="psortname" class="col-xs-12 col-sm-3" value="<%=photoGrapher.getpSortname()%>"/>
																</div>
															</div>
														</div>

														<div class="space-2"></div>

														<div class="form-group">
															<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="pname">摄影师:</label>

															<div class="col-xs-12 col-sm-9">
																<div class="clearfix">
																	<input type="text" name="pname" id="pname" class="col-xs-12 col-sm-3" value="<%=photoGrapher.getpName()%>" />
																</div>
															</div>
														</div>

														<div class="space-2"></div>

														<div class="form-group">
															<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="psortaddress">拍摄地点:</label>

															<div class="col-xs-12 col-sm-9">
																<div class="clearfix">
																	<input type="text" name="psortaddress" id="psortaddress" class="col-xs-12 col-sm-3" value="<%=photoGrapher.getpSortaddress()%>"/>
																</div>
															</div>
														</div>

														<div class="hr hr-dotted"></div>

														<div class="form-group">
															<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="ppay">预计支出:</label>

															<div class="col-xs-12 col-sm-9">
																<div class="input-group">
																	<span class="input-group-addon">
																		<i class="ace-icon fa fa-dollar"></i>
																	</span>
																	<input type="text" id="ppay" name="ppay" class="col-xs-12 col-sm-2" value="<%=photoGrapher.getpPay()%>" />
																</div>
															</div>
														</div>

														<div class="space-2"></div>

														<div class="form-group">
															<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="pincome">预计收入:</label>

															<div class="col-xs-12 col-sm-9">
																<div class="input-group">
																	<span class="input-group-addon">
																		<i class="ace-icon fa fa-dollar"></i>
																	</span>

																	<input type="text" id="income" name="pincome" class="col-xs-12 col-sm-2" value="<%=photoGrapher.getpIncome()%>"/>
																</div>
															</div>
														</div>

														<div class="space-2"></div>														

														<div class="form-group">	
															<div class="col-xs-12 col-sm-9">	
																<center>
																<button class="btn btn-sm btn-success "  type="submit">
																<i class="ace-icon fa fa-check-circle"></i>
																	修改							
																</button>
																</center>	
															</div>
														</div>
												</form>
												</div>
											</div>
					
					
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

		<script src="<%=basePath%>/<%=dirPath%>/js/jquery.dataTables.min.js"></script>
		<script src="<%=basePath%>/<%=dirPath%>/js/jquery.dataTables.bootstrap.js"></script>

		<!-- ace scripts -->
		<script src="<%=basePath%>/<%=dirPath%>/js/ace-elements.min.js"></script>
		<script src="<%=basePath%>/<%=dirPath%>/js/ace.min.js"></script>

		<script type="text/javascript">
			jQuery(function($) {

				$(".tbl-search").click(function(){
					$(".table-responsive").slideDown("fast");
				})

				var oTable1 = 
				$('#sample-table-2')
				.dataTable( {
					bAutoWidth: false,
					bInfo:flase,
					"aoColumns": [
					  { "bSortable": false },
					  null, 
					  null,
					  null,
					  null, 
					  null,
					  { "bSortable": false },
					  null,
					  { "bSortable": false }
					],
					"aaSorting": [],
			    } );
			
				$(document).on('click', 'th input:checkbox' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
				});		
			})

		</script>
	</body>
</html>
