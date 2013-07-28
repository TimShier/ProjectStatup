<%@ page import="startupfunnel.app.User" %>

<!doctype html>
    <!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
    <!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
    <!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
    <!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
    <!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
        <!-- start: Meta -->
        <meta charset="utf-8">
        <title><g:layoutTitle default="ProjectStartup"/></title>
        <meta name="description" content="TODO"/>
        <meta name="keywords" content="TODO" />
        <meta name="author" content="TODO"/>
        <!-- end: Meta -->

        <!-- start: Mobile Specific -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <!-- end: Mobile Specific -->



        <!-- start: CSS -->

        <link href="${resource(dir: 'css', file: 'bootstrap.css')}" rel="stylesheet">
        <link href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" rel="stylesheet">
        <link href="${resource(dir: 'css', file: 'style_site.css')}" rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Sans:400,700">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Serif">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Boogaloo">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Economica:700,400italic">
        <!-- end: CSS -->

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!--[if IE 9]>
          <link href="${resource(dir: 'css', file: 'styleie9_site.css')}" rel="stylesheet">
        <![endif]-->
		<g:layoutHead/>
        <r:layoutResources />
	</head>
    <body>

        <!--start: Header -->
        <header>

            <!--start: Container -->
            <div class="container">

                <!--start: Navbar -->
                <div class="navbar navbar-inverse">
                    <div class="navbar-inner">
                        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>

                        <g:link class="brand" action="index"><i id="mobiservLogo" style="background: url(<g:resource dir="images" file="logo.png"/>)"></i><span>ProjectStartup</span></g:link>
                        <a class="brand" href="index.html"></a>
                        <div class="nav-collapse collapse">

                            <ul class="nav">

                                <ul class="dropdown-menu">
                                            <li>
                                                <a href="#">Nav 1</a>
                                            </li>
                                            <li>
                                                <a href="#">Nav 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Teams<b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="#">Nav 1</a>
                                            </li>
                                            <li>
                                                <a href="#">Nav 2</a>
                                            </li>
                                        </ul>
                                    </li>


                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reports<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="#">Nav 1</a>
                                        </li>
                                        <li>
                                            <a href="#">Nav 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <g:if test="${session.user}">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Profile<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><g:link controller="user" action="profile">Profile</g:link></li>
                                        <li><g:link controller="user" action="logout">Logout</g:link></li>
                                    </ul>
                                </li>
                                </g:if>
                                <g:else>
                                    <li><g:link controller="user" action="login">Login</g:link></li>
                                </g:else>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--end: Navbar -->

            </div>
            <!--end: Container-->

        </header>
        <!--end: Header-->
        <!-- start: Page Title -->


    <!--start: Wrapper-->
    <div id="wrapper">

    <!--start: Container -->
    <div class="container">

        <!--start: Row -->
        <div class="row">

            <div class="span12">
                <!-- start: History -->
                    <g:layoutBody/>
                <!-- end: History -->
            </div>
        </div>
        <!--end: Container-->
    </div>
    <!-- end: Wrapper  -->



        <!-- start: Footer -->
        <div id="footer">

            <!-- start: Container -->
            <div class="container">


        <!-- start: Copyright -->
        <div id="copyright">

            <!-- start: Container -->
            <div class="container">

                <div class="span12">
                    <p>
                    &copy; 2013, 42Engines
                    </p>
                </div>

            </div>
            <!-- end: Container  -->

        </div>
        <!-- end: Copyright -->

        <!-- start: Java Script -->
        <!-- Placed at the end of the document so the pages load faster -->
        <g:javascript src="jquery-1.9.1.min.js"/>
        <g:javascript src="bootstrap.min.js"/>
        <g:javascript src="jquery.isotope.min.js"/>
        <g:javascript src="jquery.imagesloaded.js"/>
        <g:javascript src="flexslider.js"/>
        <g:javascript src="carousel.js"/>
        <g:javascript src="jquery.cslider.js"/>
        <g:javascript src="slider.js"/>
        <g:javascript src="jquery.fancybox.js"/>

        <g:javascript src="excanvas.js"/>
        <g:javascript src="jquery.flot.js"/>
        <g:javascript src="jquery.flot.pie.min.js"/>
        <g:javascript src="jquery.flot.stack.js"/>
        <g:javascript src="jquery.flot.resize.min.js"/>

        <g:javascript src="custom.js"/>
        <!-- end: Java Script -->

    </body>
</html>