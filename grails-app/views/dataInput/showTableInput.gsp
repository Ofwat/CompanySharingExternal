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
        <h1 class="pull-left">Data Inputs</h1>
        <ul class="pull-right breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="" class="active">Dashboard</a></li>
        </ul>
    </div>
</div>
<div class="container content">
    <div class="headline">
        <h2>Data Input ${dataInput.dataInput.name}</h2>
    </div>
    <div class="tag-box tag-box-v3">
        <!-- Tooltips -->
        <h2>Information </h2>
        <p>${raw(dataInput.dataInput.companyIntro)}</p>

    </div>

    <div class="panel panel-grey margin-bottom-40">
        <div class="panel-heading">
            <h3 class="panel-title"><i class="fa fa-globe"></i> Data Input</h3>
        </div>
        <div class="panel-body">
            <div class="">
                <a href="#" class="btn btn-default"><i class="fa fa-download"></i>&nbsp;Download</a>
                <a href="#" class="btn btn-default"><i class="fa fa-upload"></i>&nbsp;Upload</a>
                <a href="#" class="btn btn-warning"><i class="fa fa-question"></i>&nbsp;Validate</a>
                <a href="#" class="btn btn-success"><i class="fa fa-check"></i>&nbsp;Mark As Complete</a>
            </div>

            <g:render plugin="mock-table-plugin" template="/mocktable/mockTable" model="['companyPageInstanceId':companyPageInstanceId, 'dataInputId':dataInputId, 'showCompanySelect':false]"/>
            <a href="<g:createLink controller="dataBundle" action="show" params="['companyBundleId':companyBundleId]"></g:createLink>" class="btn btn-default">Back To Bundle</a>
        </div>
    </div>

</div>
</body>
</html>