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
        <h1 class="pull-left">Data Bundles</h1>
        <ul class="pull-right breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="" class="active">Dashboard</a></li>
        </ul>
    </div>
</div>
<div class="container content">
    <div class="headline">
        <h2>Welcome to the dashboard <sec:username/></h2>
    </div>
    <div class="col-md-12">

        <div class="panel panel-grey margin-bottom-40">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-globe"></i> Data Bundles</h3>
            </div>
            <div class="panel-body">
                <p>Current published data bundles:</p>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Publish Start Date</th>
                        <th>Publish End Date</th>
                        <th>Completed?</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${companyBundles}" var="companyBundle">
                        <tr>
                            <td>
                            ${companyBundle.id}
                            </td>
                            <td><a href="<g:createLink controller="dataBundle" action="show" params="['companyBundleId':companyBundle.id]"></g:createLink>">${companyBundle.dataBundle.name}</a></td>
                            <td>${raw(companyBundle.dataBundle.companyDescription)}</td>
                            <td>${companyBundle.publishStartDate}</td>
                            <td>${companyBundle.publishStartDate}</td>
                            <td><g:checkBox name="completed" disabled="${true}" value="${companyBundle.companyCompleted}"></g:checkBox></td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>