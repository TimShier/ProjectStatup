

<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><g:layoutTitle default="MobiServ Client Dashboard"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
        <r:require modules="bootstrap"/>
        <r:require modules="jquery"/>
        <g:layoutHead/>
        <r:layoutResources />



        <!-- start: CSS -->
        <link id="bootstrap-style" rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.min.css')}" type="text/css">
        <link id="base-style" rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
        <link id="base-style" rel="stylesheet" href="${resource(dir: 'css', file: 'style-responsive.css')}" type="text/css">



        <!--[if lt IE 7 ]>
        <link id="ie-style" rel="stylesheet" href="${resource(dir: 'css', file: 'style-ie.css')}" type="text/css">
        <![endif]-->
        <!--[if IE 8 ]>
        <link id="ie-style" rel="stylesheet" href="${resource(dir: 'css', file: 'style-ie.css')}" type="text/css">
        <![endif]-->
        <!--[if IE 9 ]>
        <![endif]-->

        <!-- end: CSS -->

        <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
	        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <![endif]-->



    </head>
<body>

    <div id="overlay" style="display:none;">
        <ul>
          <!--  <li class="li1"></li>
            <li class="li2"></li>
            <li class="li3"></li>
            <li class="li4"></li>
            <li class="li5"></li>
            <li class="li6"></li>-->
        </ul>
    </div>
    <!-- start: Header -->
    <div class="navbar">
    <div class="navbar-inner">
    <div class="container-fluid">
    <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </a>
    <g:link controller="survey" action="dashboard" class="brand"><img alt="MobiServ Dashboard" style="margin-top:-5px;" src="${resource(dir: 'images', file: 'logo.png')}"/><span class="hidden-phone">MobiServ Dashboard</span></g:link>


    <!-- start: Header Menu -->
    <div class="nav-no-collapse header-nav">
    <ul class="nav pull-right">
    <li class="dropdown hidden-phone">
        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
            <i class="icon-warning-sign icon-white"></i> <span class="label label-important hidden-phone">3</span>
        </a>
        <ul class="dropdown-menu notifications">
            <li>
                <span class="dropdown-menu-title">You have 6 notifications</span>
            </li>

                <li>
                    <a href="#"><i class="icon-comment"></i> <span class="message">Blah blah message</span> <span class="time">40 s</span></a>
                </li>

                <li>
                    <a href="#"><i class="icon-comment"></i> <span class="message">Blah blah message</span> <span class="time">40 s</span></a>
                </li>

                <li>
                    <a href="#"><i class="icon-comment"></i> <span class="message">Blah blah message</span> <span class="time">40 s</span></a>
                </li>
        </ul>
    </li>
    <!-- start: Notifications Dropdown -->

    <!-- start: User Dropdown -->
    <li class="dropdown">
        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
            <i class="icon-user icon-white"></i>
            <span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
            <li><a href="#"><i class="icon-user"></i> Profile</a></li>
            <li><a href="#"><i class="icon-user"></i><i class="icon-off"></i> Logout</a></li>
        </ul>
    </li>
    <!-- end: User Dropdown -->
    </ul>
    </div>
    <!-- end: Header Menu -->

    </div>
    </div>
    </div>
    <!-- start: Header -->

    <div class="container-fluid">
    <div class="row-fluid">

    <!-- start: Main Menu -->
    <div class="span2 main-menu-span">
        <div class="nav-collapse sidebar-nav">
            <ul class="nav nav-tabs nav-stacked main-menu">
                <li><g:link controller="stage" action="list"><i class="icon-home icon-white"></i><span class="hidden-tablet"> Manage Answers</span></g:link></li>
                <li><g:link controller="survey" action="create_custom"><i class="icon-edit icon-white"></i><span class="hidden-tablet"> New Survey</span></g:link></li>
                <li><g:link controller="survey" action="list"><i class="icon-edit icon-white"></i><span class="hidden-tablet"> Manage</span></g:link></li>
                <li>
                    <a class="dropmenu"  href="#"><i class="icon-eye-open icon-white"></i><span class="hidden-tablet"> Report</span></a>
                    <ul>
                        <li><a href="#"><i class="fa-icon-file-alt"></i><span class="hidden-tablet">Blah 1</span></a></li>
                        <li><a href="#"><i class="fa-icon-file-alt"></i><span class="hidden-tablet">Blah 1</span></a></li>
                        <li><a href="#"><i class="fa-icon-file-alt"></i><span class="hidden-tablet">Blah 1</span></a></li>
                    </ul>
                </li>
            </ul>
        </div><!--/.well -->
    </div><!--/span-->
    <!-- end: Main Menu -->

    <noscript>
        <div class="alert alert-block span10">
            <h4 class="alert-heading">Warning!</h4>
            <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
        </div>
    </noscript>

    <div id="content" class="span10">
    <!-- start: Content -->

    <div>
        <hr>
        <ul class="breadcrumb">
            <li>
                <a href="#">Home</a> <span class="divider">/</span>
            </li>
            <li>
                <a href="#" style="text-transform: capitalize">${params.action}</a>
            </li>
        </ul>
        <hr>
    </div>

        <g:layoutBody/>

    <div class="clearfix"></div>

    <footer>
        <p>
            <span style="text-align:left;float:left">&copy; <a href="http://www.mobiserv.me" target="_blank">Project Startup</a> 2013</span>
        </p>

    </footer>

    </div><!--/.fluid-container-->

    <!-- start: JavaScript-->



    <g:javascript src="jquery-migrate-1.0.0.min.js" />
    <g:javascript src="jquery-ui-1.10.0.custom.min.js" />
    <g:javascript src="jquery.ui.touch-punch.js" />
    <g:javascript src="jquery.cookie.js" />
    <g:javascript src="fullcalendar.min.js" />
    <g:javascript src="jquery.dataTables.min.js" />
    <g:javascript src="jquery.flot.min.js" />
    <g:javascript src="jquery.flot.pie.min.js" />
    <g:javascript src="jquery.flot.stack.js" />
    <g:javascript src="jquery.flot.resize.min.js" />
    <g:javascript src="excanvas.js" />
    <g:javascript src="jquery.chosen.min.js" />
    <g:javascript src="jquery.uniform.min.js" />
    <g:javascript src="jquery.cleditor.min.js" />
    <g:javascript src="jquery.noty.js" />
    <g:javascript src="jquery.elfinder.min.js" />
    <g:javascript src="jquery.raty.min.js" />
    <g:javascript src="jquery.iphone.toggle.js" />
    <g:javascript src="jquery.uploadify-3.1.min.js" />
    <g:javascript src="jquery.gritter.min.js" />
    <g:javascript src="jquery.imagesloaded.js" />
    <g:javascript src="jquery.masonry.min.js" />
    <g:javascript src="jquery.knob.js" />
    <g:javascript src="jquery.sparkline.min.js" />
    <g:javascript src="custom.js" />
    <g:javascript src="jquery.noty.js" />
    <g:javascript src="jquery.noty.js" />
    <g:javascript src="jquery.noty.js" />
    <g:javascript src="jquery.noty.js" />




    <!-- end: JavaScript-->

<r:layoutResources />

</body>

</html>