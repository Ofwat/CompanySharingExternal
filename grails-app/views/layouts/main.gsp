<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<title>Ofwat | <g:layoutTitle default="Home"/></title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<asset:stylesheet href="application.css"></asset:stylesheet>

	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Web Fonts -->
	<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="/CompanySharingExternal/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="/CompanySharingExternal/css/style.css">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="/CompanySharingExternal/css/headers/header-default.css">
	<link rel="stylesheet" href="/CompanySharingExternal/css/footers/footer-v1.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="/CompanySharingExternal/plugins/animate.css">
	<link rel="stylesheet" href="/CompanySharingExternal/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="/CompanySharingExternal/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="/CompanySharingExternal/plugins/parallax-slider/css/parallax-slider.css" />
	<link rel="stylesheet" href="/CompanySharingExternal/plugins/owl-carousel2/assets/owl.carousel.css" />
	<!-- CSS Theme -->
	<link rel="stylesheet" href="/CompanySharingExternal/css/theme-colors/default.css" id="style_color">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="/CompanySharingExternal/css/custom.css">

	<g:layoutHead/>

</head>

<body>
<div class="wrapper">
	<!--=== Header ===-->
	<div class="header">
		<div class="container">
			<!-- Logo -->

			<a class="logo" href="/CompanySharingExternal">
				<img style="height: 47px; width: 124px" src="/CompanySharingExternal/img/ofwat_logo.svg" alt="Logo">
			</a>
			<!-- End Logo -->

			<!-- Topbar -->
			<div class="topbar">
				<ul class="loginbar pull-right">
					<sec:ifLoggedIn>
						<li id="currentCompany"><companySelectTagLib:showCompany></companySelectTagLib:showCompany></li>
						<li class="topbar-devider"></li>
						<li class="hoverSelector">
							<i class="fa fa-building"></i>
							<a>Companies</a>
							<companySelectTagLib:renderCompaniesSelect></companySelectTagLib:renderCompaniesSelect>
						</li>
						<li class="topbar-devider"></li>
					</sec:ifLoggedIn>
					<li><a href="page_faq.html">Help</a></li>
					<li class="topbar-devider"></li>
					<sec:ifLoggedIn><li><g:remoteLink class="logout" controller="logout" method="post" asynchronous="false" onSuccess="window.location.href='/CompanySharingExternal/'">Logout</g:remoteLink></li></sec:ifLoggedIn>
					<sec:ifNotLoggedIn><li><a href="<g:createLink controller="dashboard" action="index"></g:createLink>">Login</a></li></sec:ifNotLoggedIn>
				</ul>
			</div>
			<!-- End Topbar -->

			<!-- Toggle get grouped for better mobile display -->
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="fa fa-bars"></span>
			</button>
			<!-- End Toggle -->
		</div><!--/end container-->

	<!-- Collect the nav links, forms, and other content for toggling -->
	<!-- we will render a menu taglib here! -->
		<div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
			<div class="container">
				<ul class="nav navbar-nav">

					<!-- Home --><!--
							<li class="dropdown active"><a href="javascript:void(0);"
								class="dropdown-toggle" data-toggle="dropdown"> Home </a>
</li>-->

					<li class="active"><a href="javascript:void(0);"
					> Home </a>
					</li>
					<!-- End Home -->

					<!-- Pages -->
					<li class="dropdown">
					<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"> Latest News </a>
						<ul class="dropdown-menu">
							<li><g:link controller="test" action="test">Latest PR 19 News</g:link></li>
							<li><g:link controller="test" action="test">Latest Ofwat News</g:link></li>
							<li><g:link controller="test" action="test">Latest Water Industry News</g:link></li>
						</ul>
					</li>
					<!-- End Pages -->

					<!-- Features -->
					<li class="dropdown"><a href="<g:createLink controller="dashboard" action="index"></g:createLink>"
											class="dropdown-toggle" data-toggle="dropdown"> My Dashboard </a>
						<ul class="dropdown-menu">
							<li><g:link controller="dashboard" action="index">Overview</g:link></li>
							<li><g:link controller="test" action="tset">My Messages</g:link></li>
							<li><g:link controller="test" action="test">My Outstanding Actions</g:link></li>
							<li><g:link controller="test" action="test">My Milestones</g:link></li>
							<li><g:link controller="test" action="test">My Data</g:link></li>
							<li><g:link controller="test" action="test">Manage My Users</g:link></li>
						</ul>

					</li>
					<!-- End Features -->

					<!-- Portfolio -->
					<li class="dropdown"><a href="javascript:void(0);"
											class="dropdown-toggle" data-toggle="dropdown"> PR 19 Timeline </a>
						<ul class="dropdown-menu">
							<li><g:link controller="test" action="test">PR 19 Overview</g:link></li>
							<li><g:link controller="test" action="test">PR 19 Milestones</g:link></li>
						</ul>

					</li>
					<!-- Ens Portfolio -->

					<!-- Blog -->
					<li class="dropdown"><a href="javascript:void(0);"
											class="dropdown-toggle" data-toggle="dropdown"> Reports </a>
						<ul class="dropdown-menu">
							<li><g:link controller="test" action="test">Manages My Reports</g:link></li>
							<li><g:link controller="test" action="test">Create A Report</g:link></li>
							<li><g:link controller="test" action="test">Export Data</g:link></li>
						</ul>

					</li>
					<!-- End Blog -->

					<!-- Contacts -->
					<li class="dropdown"><a href="javascript:void(0);"
											class="dropdown-toggle" data-toggle="dropdown"> Contacts </a>
						<ul class="dropdown-menu">
							<li><g:link controller="form" action="sampleWizard">Sample Wizard</g:link></li>
							<li><g:link controller="action" action="index">My Actions</g:link></li>
							<li><g:link controller="message" action="index">My Messages</g:link></li>
							<li><g:link controller="report" action="index">My Reports</g:link></li>
							<li><g:link controller="timeline" action="index">My Timeline</g:link></li>

							<li><g:link controller="test" action="test">Contacts Default</g:link></li>
							<li><g:link controller="test" action="test">Contacts Option 1</g:link></li>
							<li><g:link controller="test" action="tset">Contacts Option 2</g:link></li>
						</ul></li>
					<!-- End Contacts -->

					<!-- Search Block -->
					<li><i class="search fa fa-search search-btn"></i>
						<div class="search-open">
							<div class="input-group animated fadeInDown">
								<input type="text" class="form-control" placeholder="Search">
								<span class="input-group-btn">
									<button class="btn-u" type="button">Go</button>
								</span>
							</div>
						</div>
					</li>
					<!-- End Search Block -->

				</ul>
			</div><!--/end container-->
		</div><!--/navbar-collapse-->
	</div>
	<!--=== End Header ===-->

	<g:layoutBody/>

	<!--=== Footer Version 1 ===-->
	<div class="footer-v1">
		<div class="footer">
			<div class="container">
				<div class="row">
					<!-- About -->
					<div class="col-md-3 md-margin-bottom-40">
						<a href="index.html"><img id="logo-footer" style="width:103px;height: 49px;" class="footer-logo" src="/CompanySharingExternal/img/ofwat_logo.svg" alt=""></a>
						<p>About Unify dolor sit amet, consectetur adipiscing elit. Maecenas eget nisl id libero tincidunt sodales.</p>
						<p>Duis eleifend fermentum ante ut aliquam. Cras mi risus, dignissim sed adipiscing ut, placerat non arcu.</p>
					</div><!--/col-md-3-->
				<!-- End About -->

				<!-- Latest -->
					<div class="col-md-3 md-margin-bottom-40">
						<div class="posts">
							<div class="headline"><h2>Latest Posts</h2></div>
							<ul class="list-unstyled latest-list">
								<li>
									<a href="#">Some content</a>
									<small>May 8, 2014</small>
								</li>
								<li>
									<a href="#">Best thingys</a>
									<small>June 23, 2014</small>
								</li>
								<li>
									<a href="#">Terms and Conditions</a>
									<small>September 15, 2014</small>
								</li>
							</ul>
						</div>
					</div><!--/col-md-3-->
				<!-- End Latest -->

				<!-- Link List -->
					<div class="col-md-3 md-margin-bottom-40">
						<div class="headline"><h2>Useful Links</h2></div>
						<ul class="list-unstyled link-list">
							<li><a href="#">About us</a><i class="fa fa-angle-right"></i></li>
							<li><a href="#">Portfolio</a><i class="fa fa-angle-right"></i></li>
							<li><a href="#">Latest jobs</a><i class="fa fa-angle-right"></i></li>
							<li><a href="#">Community</a><i class="fa fa-angle-right"></i></li>
							<li><a href="#">Contact us</a><i class="fa fa-angle-right"></i></li>
						</ul>
					</div><!--/col-md-3-->
				<!-- End Link List -->

				<!-- Address -->
					<div class="col-md-3 map-img md-margin-bottom-40">
						<div class="headline"><h2>Contact Us</h2></div>
						<address class="md-margin-bottom-40">
							Centre City <br />
							Hill Street <br />
							Birmingham, UK <br />
							Phone: 0121 6447500 <br />
							Email: <a href="mailto:info@anybiz.com" class="">info@ofwat.gov.uk</a>
						</address>
					</div><!--/col-md-3-->
				<!-- End Address -->
				</div>
			</div>
		</div><!--/footer-->

		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<p>
							2017 &copy; Ofwat.
							<a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
						</p>
					</div>

					<!-- Social Links -->
					<div class="col-md-6">
						<ul class="footer-socials list-inline">
							<li>
								<a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Facebook">
									<i class="fa fa-facebook"></i>
								</a>
							</li>
							<li>
								<a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Skype">
									<i class="fa fa-skype"></i>
								</a>
							</li>
							<li>
								<a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Google Plus">
									<i class="fa fa-google-plus"></i>
								</a>
							</li>
							<li>
								<a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Linkedin">
									<i class="fa fa-linkedin"></i>
								</a>
							</li>
							<li>
								<a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Pinterest">
									<i class="fa fa-pinterest"></i>
								</a>
							</li>
							<li>
								<a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Twitter">
									<i class="fa fa-twitter"></i>
								</a>
							</li>
							<li>
								<a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Dribbble">
									<i class="fa fa-dribbble"></i>
								</a>
							</li>
						</ul>
					</div>
					<!-- End Social Links -->
				</div>
			</div>
		</div><!--/copyright-->
	</div>
	<!--=== End Footer Version 1 ===-->
</div>

%{--<!--=== Style Switcher ===-->--}%
%{--<i class="style-switcher-btn fa fa-cogs hidden-xs"></i>--}%
%{--<div class="style-switcher animated fadeInRight">--}%
%{--<div class="style-swticher-header">--}%
%{--<div class="style-switcher-heading">Style Switcher</div>--}%
%{--<div class="theme-close"><i class="icon-close"></i></div>--}%
%{--</div>--}%

%{--<div class="style-swticher-body">--}%
%{--<!-- Theme Colors -->--}%
%{--<div class="style-switcher-heading">Theme Colors</div>--}%
%{--<ul class="list-unstyled">--}%
%{--<li class="theme-default theme-active" data-style="default" data-header="light"></li>--}%
%{--<li class="theme-blue" data-style="blue" data-header="light"></li>--}%
%{--<li class="theme-orange" data-style="orange" data-header="light"></li>--}%
%{--<li class="theme-red" data-style="red" data-header="light"></li>--}%
%{--<li class="theme-light" data-style="light" data-header="light"></li>--}%
%{--<li class="theme-purple last" data-style="purple" data-header="light"></li>--}%
%{--<li class="theme-aqua" data-style="aqua" data-header="light"></li>--}%
%{--<li class="theme-brown" data-style="brown" data-header="light"></li>--}%
%{--<li class="theme-dark-blue" data-style="dark-blue" data-header="light"></li>--}%
%{--<li class="theme-light-green" data-style="light-green" data-header="light"></li>--}%
%{--<li class="theme-dark-red" data-style="dark-red" data-header="light"></li>--}%
%{--<li class="theme-teal last" data-style="teal" data-header="light"></li>--}%
%{--</ul>--}%

%{--<!-- Theme Skins -->--}%
%{--<div class="style-switcher-heading">Theme Skins</div>--}%
%{--<div class="row no-col-space margin-bottom-20 skins-section">--}%
%{--<div class="col-xs-6">--}%
%{--<button data-skins="default" class="btn-u btn-u-xs btn-u-dark btn-block active-switcher-btn handle-skins-btn">Light</button>--}%
%{--</div>--}%
%{--<div class="col-xs-6">--}%
%{--<button data-skins="dark" class="btn-u btn-u-xs btn-u-dark btn-block skins-btn">Dark</button>--}%
%{--</div>--}%
%{--</div>--}%

%{--<hr>--}%

%{--<!-- Layout Styles -->--}%
%{--<div class="style-switcher-heading">Layout Styles</div>--}%
%{--<div class="row no-col-space margin-bottom-20">--}%
%{--<div class="col-xs-6">--}%
%{--<a href="javascript:void(0);" class="btn-u btn-u-xs btn-u-dark btn-block active-switcher-btn wide-layout-btn">Wide</a>--}%
%{--</div>--}%
%{--<div class="col-xs-6">--}%
%{--<a href="javascript:void(0);" class="btn-u btn-u-xs btn-u-dark btn-block boxed-layout-btn">Boxed</a>--}%
%{--</div>--}%
%{--</div>--}%

%{--<hr>--}%

%{--<!-- Theme Type -->--}%
%{--<div class="style-switcher-heading">Theme Types and Versions</div>--}%
%{--<div class="row no-col-space margin-bottom-10">--}%
%{--<div class="col-xs-6">--}%
%{--<a href="E-Commerce/index.html" class="btn-u btn-u-xs btn-u-dark btn-block">Shop UI <small class="dp-block">Template</small></a>--}%
%{--</div>--}%
%{--<div class="col-xs-6">--}%
%{--<a href="One-Pages/Classic/index.html" class="btn-u btn-u-xs btn-u-dark btn-block">One Page <small class="dp-block">Template</small></a>--}%
%{--</div>--}%
%{--</div>--}%

%{--<div class="row no-col-space">--}%
%{--<div class="col-xs-6">--}%
%{--<a href="Blog-Magazine/index.html" class="btn-u btn-u-xs btn-u-dark btn-block">Blog <small class="dp-block">Template</small></a>--}%
%{--</div>--}%
%{--<div class="col-xs-6">--}%
%{--<a href="RTL/index.html" class="btn-u btn-u-xs btn-u-dark btn-block">RTL <small class="dp-block">Version</small></a>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div><!--/style-switcher-->--}%
%{--<!--=== End Style Switcher ===-->--}%


<asset:javascript src="application.js"/>

<!-- JS Global Compulsory -->
%{--<script type="text/javascript" src="/CompanySharingExternal/plugins/jquery/jquery.min.js"></script>--}%
%{--<script type="text/javascript" src="/CompanySharingExternal/plugins/jquery/jquery-migrate.min.js"></script>--}%
<script type="text/javascript" src="/CompanySharingExternal/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="/CompanySharingExternal/plugins/back-to-top.js"></script>
<script type="text/javascript" src="/CompanySharingExternal/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="/CompanySharingExternal/plugins/parallax-slider/js/jquery.cslider.js"></script>
<script type="text/javascript" src="/CompanySharingExternal/plugins/owl-carousel2/owl.carousel.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="/CompanySharingExternal/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="/CompanySharingExternal/js/app.js"></script>
<script type="text/javascript" src="/CompanySharingExternal/plugins/style-switcher.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        //StyleSwitcher.initStyleSwitcher();
    });
</script>
<!--[if lt IE 9]>
	<script src="/CompanySharingExternal/plugins/respond.js"></script>
	<script src="/CompanySharingExternal/plugins/html5shiv.js"></script>
	<script src="/CompanySharingExternal/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->

<asset:script>
	$(document).ready(function(){
		var updateCompany = function(companyId){
			<g:remoteFunction controller="company" action="updateSessionCompany" update="currentCompany" params="'companyId='+companyId"/>
		}
		$(".companySelect").click(function(evt){
			var companyId = $(evt.target).parent().data("companyid");
			updateCompany(companyId);
		})
    });
</asset:script>


<!-- Custom placeholder for page scripts -->
<asset:deferredScripts/>

</body>
</html>