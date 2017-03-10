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
        <h2>Data Inputs for bundle ${dataBundle.name}</h2>
    </div>
    <div class="tag-box tag-box-v3">
        <!-- Tooltips -->
        <h2>Information</h2>

        ${raw(dataBundle.companyDescription)}

    </div>

        <div class="panel panel-grey margin-bottom-40">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-globe"></i> Data Inputs</h3>
            </div>
            <div class="panel-body">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Type</th>
                        <th>Docs.</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${dataInputs}" var="dataInput">
                        <tr>
                            <td>
                                ${dataInput.id}
                            </td>
                            <td><a href="<g:createLink controller="dataInput" action="showInput" params="['companyDataInputId':dataInput.id, 'type':dataInput.dataInput.dataInputType.type, 'companyBundleId':companyBundle.id]"></g:createLink>">${dataInput.dataInput.name}</a></td>
                            <td>${raw(dataInput.dataInput.companyIntro.take(40))}</td>
                            <td><span class="label label-info"><i class="fa fa-table"></i>&nbsp;${dataInput.dataInput.dataInputType.type}</span></td>
                            <td><a href="#">Documentation</a></td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
        </div>

</div>
</body>
</html>