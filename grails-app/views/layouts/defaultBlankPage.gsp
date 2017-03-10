<%--%--
  Created by IntelliJ IDEA.
  User: james.toddington
  Date: 09/02/2017
  Time: 15:50
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<g:applyLayout name="main">
    <html>
    <head>
        <title><g:layoutTitle/></title>
        <g:layoutHead/>
    </head>
    <body>
    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left"><g:pageProperty name="page.title"></g:pageProperty></h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li><a href="">Pages</a></li>
                <li class="active">Blank Page</li>
            </ul>
        </div><!--/container-->
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content ===-->
    <div class="container content height-500">
        <!-- Write Your HTML Codes Here -->
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <g:pageProperty name="page.main-page-area"></g:pageProperty>
            </div>
        </div>
    </div>
    <!--=== End Content ===-->

    </body>
    <g:ifPageProperty name="page.footScripts">
        <g:pageProperty name="page.footScripts" />
    </g:ifPageProperty>
    </html>
</g:applyLayout>