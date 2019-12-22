<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<title>摄影管理- 客片管理 - 婚纱影楼管理系统 - 2019</title>
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
									<a href="login.jsp">
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
							<a href="javascript:void(0)">摄影管理</a>
						</li>
						<li>
							<a href="3-kepianguanli.jsp">客片管理</a>
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


				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">

					<!-- /section:settings.box -->
					<div class="page-content-area">
						<div class="row">
									<div class="col-xs-6 col-sm-3 pricing-box">
										<div class="widget-box">
											<div class="widget-header header-color-dark" style="background: #404040;border-color: #fff;">
												<h5 class="bigger" style="color:#fff">爱丁堡宣言</h5>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<ul class="list-unstyled spaced2">																									
														<div id="pictures" class="tab-pane">
															<ul class="ace-thumbnails">
																<li>
																	<a href="#" data-rel="colorbox">
																		<img alt="280x230" src="<%=basePath%>/<%=dirPath%>/images/gallery/1aidingbao.jpg" />
																		<div class="text">
																			<div class="inner">摄影师李世超</div>
																		</div>
																	</a>

																	<div class="tools tools-bottom">
																		<a href="<%=basePath%>/<%=dirPath%>/images/gallery/1.jpg">
																			<i class="icon-link"></i>
																		</a>
																	</div>
																</li>
															</ul>
														</div>

													</ul>
														<li>
															<i class="icon-ok green"></i>
															摄于 2018年七月
														</li>													
													<hr />
													<div class="price">
														￥35000
														<small>/七天</small>
													</div>
												</div>

												<div>
													<a href="#" class="btn btn-block btn-inverse">
														<i class="icon-shopping-cart bigger-110"></i>
														<span>马上预定</span>
													</a>
												</div>
											</div>
										</div>
									</div>

									<div class="col-xs-6 col-sm-3 pricing-box">
										<div class="widget-box">
											<div class="widget-header header-color-orange" style="background: #ffc657;border-color: #fff;">
												<h5 class="bigger lighter" style="color:#333">等待的法国梧桐</h5>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<ul class="list-unstyled spaced2">																									
														<div id="pictures" class="tab-pane">
															<ul class="ace-thumbnails">
																<li>
																	<a href="#" data-rel="colorbox">
																		<img alt="280x230" src="<%=basePath%>/<%=dirPath%>/images/gallery/2faguo.jpg" />
																		<div class="text">
																			<div class="inner">摄影师冯春觅</div>
																		</div>
																	</a>

																	<div class="tools tools-bottom">
																		<a href="<%=basePath%>/<%=dirPath%>/images/gallery/2.jpg">
																			<i class="icon-link"></i>
																		</a>
																	</div>
																</li>
															</ul>
														</div>

													</ul>
														<li>
															<i class="icon-ok green"></i>
															摄于 2018年九月
														</li>													
													<hr />
													<div class="price">
														￥35000
														<small>/七天</small>
													</div>
												</div>

												<div>
													<a href="#" class="btn btn-block btn-warning">
														<i class="icon-shopping-cart bigger-110"></i>
														<span>马上预定</span>
													</a>
												</div>
											</div>
										</div>
									</div>

									<div class="col-xs-6 col-sm-3 pricing-box">
										<div class="widget-box">
											<div class="widget-header header-color-blue" style="background: #307ecc;border-color: #fff;">
												<h5 class="bigger lighter" style="color:#fff">情定巴黎</h5>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<ul class="list-unstyled spaced2">																									
														<div id="pictures" class="tab-pane">
															<ul class="ace-thumbnails">
																<li>
																	<a href="#" data-rel="colorbox">
																		<img alt="280x230" src="<%=basePath%>/<%=dirPath%>/images/gallery/3bali.jpg" />
																		<div class="text">
																			<div class="inner">摄影师林凯必</div>
																		</div>
																	</a>

																	<div class="tools tools-bottom">
																		<a href="<%=basePath%>/<%=dirPath%>/images/gallery/3.jpg">
																			<i class="icon-link"></i>
																		</a>
																	</div>
																</li>
															</ul>
														</div>

													</ul>
														<li>
															<i class="icon-ok green"></i>
															摄于 2017年六月
														</li>													
													<hr />
													<div class="price">
														￥35000
														<small>/七天</small>
													</div>
												</div>

												<div>
													<a href="#" class="btn btn-block btn-primary">
														<i class="icon-shopping-cart bigger-110"></i>
														<span>马上预定</span>
													</a>
												</div>
											</div>
										</div>
									</div>


									<div class="col-xs-6 col-sm-3 pricing-box">
										<div class="widget-box">
											<div class="widget-header header-color-green" style="background: #82af6f;border-color: #fff;">
												<h5 class="bigger lighter" style="color:#fff">烟雨乌镇</h5>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<ul class="list-unstyled spaced2">																									
														<div id="pictures" class="tab-pane">
															<ul class="ace-thumbnails">
																<li>
																	<a href="#" data-rel="colorbox">
																		<img alt="280x230" src="<%=basePath%>/<%=dirPath%>/images/gallery/4wuzhen.jpg" />
																		<div class="text">
																			<div class="inner">摄影师何洁洁</div>
																		</div>
																	</a>

																	<div class="tools tools-bottom">
																		<a href="<%=basePath%>/<%=dirPath%>/images/gallery/4.jpg">
																			<i class="icon-link"></i>
																		</a>
																	</div>
																</li>
															</ul>
														</div>

													</ul>
														<li>
															<i class="icon-ok green"></i>
															摄于 2018年六月
														</li>													
													<hr />
													<div class="price">
														￥10000
														<small>/两天</small>
													</div>
												</div>												

												<div>
													<a href="#" class="btn btn-block btn-success">
														<i class="icon-shopping-cart bigger-110"></i>
														<span>马上预定</span>
													</a>
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-xs-6 col-sm-3 pricing-box">
									</div>
									
									<div class="col-xs-6 col-sm-3 pricing-box">
										<div class="widget-box">
											<div class="widget-header header-color-orange" style="background: #82af6f;border-color: #fff;">
												<h5 class="bigger lighter" style="color:#333">情迷大理</h5>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<ul class="list-unstyled spaced2">																									
														<div id="pictures" class="tab-pane">
															<ul class="ace-thumbnails">
																<li>
																	<a href="#" data-rel="colorbox">
																		<img alt="280x230" src="<%=basePath%>/<%=dirPath%>/images/gallery/5dali.jpg" />
																		<div class="text">
																			<div class="inner">摄影师李世超</div>
																		</div>
																	</a>

																	<div class="tools tools-bottom">
																		<a href="<%=basePath%>/<%=dirPath%>/images/gallery/5.jpg">
																			<i class="icon-link"></i>
																		</a>
																	</div>
																</li>
															</ul>
														</div>

													</ul>
														<li>
															<i class="icon-ok green"></i>
															摄于 2018年五月
														</li>													
													<hr />
													<div class="price">
														￥20000
														<small>/四天</small>
													</div>
												</div>

												<div>
													<a href="#" class="btn btn-block btn-success">
														<i class="icon-shopping-cart bigger-110"></i>
														<span>马上预定</span>
													</a>
												</div>
											</div>
										</div>
									</div>

									<div class="col-xs-6 col-sm-3 pricing-box">
										<div class="widget-box">
											<div class="widget-header header-color-blue" style="background: #404040;border-color: #fff;">
												<h5 class="bigger lighter" style="color:#fff">风车小镇</h5>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<ul class="list-unstyled spaced2">																									
														<div id="pictures" class="tab-pane">
															<ul class="ace-thumbnails">
																<li>
																	<a href="#" data-rel="colorbox">
																		<img alt="280x230" src="<%=basePath%>/<%=dirPath%>/images/gallery/6fengche.jpg" />
																		<div class="text">
																			<div class="inner">摄影师陈石虎</div>
																		</div>
																	</a>

																	<div class="tools tools-bottom">
																		<a href="<%=basePath%>/<%=dirPath%>/images/gallery/6.jpg">
																			<i class="icon-link"></i>
																		</a>														
																	</div>
																</li>
															</ul>
														</div>

													</ul>
														<li>
															<i class="icon-ok green"></i>
															摄于 2019年八月
														</li>													
													<hr />
													<div class="price">
														￥15000
														<small>/三天</small>
													</div>
												</div>

												<div>
													<a href="#" class="btn btn-block btn-inverse">
														<i class="icon-shopping-cart bigger-110"></i>
														<span>马上预定</span>
													</a>
												</div>
											</div>
										</div>
									</div>
								
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

		<!-- ace scripts -->
		<script src="<%=basePath%>/<%=dirPath%>/js/ace-elements.min.js"></script>
		<script src="<%=basePath%>/<%=dirPath%>/js/ace.min.js"></script>

	</body>
</html>
