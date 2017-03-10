<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <title>Ofwat Portal | Dashboard</title>
    <meta name="layout" content="main"/>

</head>

<body>
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Dashboard</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li><a href="" class="active">Dashboard</a></li>
            </ul>
        </div>
    </div>
    <div class="container content">
        <div class="headline">
            <h2>Welcome to the dash board <sec:username/></h2>
        </div>
        <div class="col-md-2"></div>
        <div class="col-md-8">

            <div class="heading heading-v4 margin-bottom-40">
                <h2>My Collections</h2>
                <p><a href="<g:createLink controller="dataCollection"></g:createLink>">View open data collections.</a></p>
            </div>
            <div class="heading heading-v4 margin-bottom-40">
                <h2>View Open Data Bundles</h2>
                <p><a href="<g:createLink controller="dataBundle"></g:createLink>">View open data bundles</a></p>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
</body>
</html>
