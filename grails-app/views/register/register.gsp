<html>
<head>
	<meta name="layout" content="main"/>
	<s2ui:title messageCode='spring.security.ui.login.title'/>
</head>
<body>
<div class="container content">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<form class="reg-page">
				<div class="reg-header">
					<h2>Register a new account</h2>
					<p>Already Signed Up? Click <a href="page_login.html" class="color-green">Sign In</a> to login your account.</p>
				</div>

				<label>First Name</label>
				<input type="text" class="form-control margin-bottom-20">

				<label>Last Name</label>
				<input type="text" class="form-control margin-bottom-20">

				<label>Email Address <span class="color-red">*</span></label>
				<input type="text" class="form-control margin-bottom-20">

				<label>Select Company </label>
				<select class="form-control margin-bottom-20">
					<g:each in="${uk.gov.ofwat.companysharing.company.Company.list()}" var="company">
						<option>${company.name}</option>
					</g:each>
				</select>


				<div class="row">
					<div class="col-sm-6">
						<label>Password <span class="color-red">*</span></label>
						<input type="password" class="form-control margin-bottom-20">
					</div>
					<div class="col-sm-6">
						<label>Confirm Password <span class="color-red">*</span></label>
						<input type="password" class="form-control margin-bottom-20">
					</div>
				</div>

				<hr>

				<div class="row">
					<div class="col-lg-6 checkbox">
						<label>
							<input type="checkbox">
							I have read <a href="page_terms.html" class="color-green">Terms and Conditions</a>
						</label>
					</div>
					<div class="col-lg-6 text-right">
						<button class="btn-u" type="submit">Register</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>
%{--<!doctype html>--}%
%{--<html class="no-js" lang="">--}%
%{--<head>--}%
%{--<meta charset="utf-8">--}%
%{--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--}%
%{--<meta http-equiv="x-ua-compatible" content="ie=edge">--}%
%{--<meta name="viewport" content="width=device-width, initial-scale=1">--}%
%{--<s2ui:stylesheet src='spring-security-ui-register.css'/>--}%
%{--<g:layoutHead/>--}%
%{--</head>--}%
%{--<body>--}%
%{--<p/>--}%
%{--<g:layoutBody/>--}%
%{--<asset:javascript src='spring-security-ui-register.js'/>--}%
%{--<s2ui:showFlash/>--}%
%{--<s2ui:deferredScripts/>--}%
%{--</body>--}%
%{--</html>--}%

%{--<html>--}%
%{--<head>--}%
%{--<meta name="layout" content="${layoutRegister}"/>--}%
%{--<s2ui:title messageCode='spring.security.ui.register.title'/>--}%
%{--</head>--}%
%{--<body>--}%
%{--<s2ui:formContainer type='register' focus='username' width='800px'>--}%
%{--<s2ui:form beanName='registerCommand'>--}%
%{--<g:if test='${emailSent}'>--}%
%{--<br/>--}%
%{--<g:message code='spring.security.ui.register.sent'/>--}%
%{--</g:if>--}%
%{--<g:else>--}%
%{--<br/>--}%
%{--<table>--}%
%{--<tbody>--}%
%{--<s2ui:textFieldRow name='username' size='40' labelCodeDefault='Username'/>--}%
%{--<s2ui:textFieldRow name='email' size='40' labelCodeDefault='E-mail'/>--}%
%{--<s2ui:passwordFieldRow name='password' size='40' labelCodeDefault='Password'/>--}%
%{--<s2ui:passwordFieldRow name='password2' size='40' labelCodeDefault='Password (again)'/>--}%
%{--</tbody>--}%
%{--</table>--}%
%{--<s2ui:submitButton elementId='submit' messageCode='spring.security.ui.register.submit'/>--}%
%{--</g:else>--}%
%{--</s2ui:form>--}%
%{--</s2ui:formContainer>--}%
%{--</body>--}%
%{--</html>--}%