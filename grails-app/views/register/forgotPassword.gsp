<html>
<head>
	<meta name="layout" content="main"/>
	<s2ui:title messageCode='spring.security.ui.forgotPassword.title'/>
</head>
<body>
<div class="container content">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<form class="reg-page">
				<div class="reg-header">
					<h2>Forgotten Password</h2>
					<p>Enter your username and we'll send a link to reset your password to the address we have for your account.</p>
				</div>

				<label>User name</label>
				<input type="text" class="form-control margin-bottom-20">

				<hr>

				<div class="row">
					<div class="col-lg-6 checkbox">
						<label>
							<input type="checkbox">
							I have read <a href="page_terms.html" class="color-green">Terms and Conditions</a>
						</label>
					</div>
					<div class="col-lg-6 text-right">
						<button class="btn-u" type="submit">Reset Password</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>

%{--<html>--}%
	%{--<head>--}%
		%{--<meta name="layout" content="${layoutRegister}"/>--}%
		%{--<s2ui:title messageCode='spring.security.ui.forgotPassword.title'/>--}%
	%{--</head>--}%
	%{--<body>--}%
		%{--<s2ui:formContainer type='forgotPassword' focus='username' width='50%'>--}%
			%{--<s2ui:form beanName='forgotPasswordCommand'>--}%
				%{--<g:if test='${emailSent}'>--}%
				%{--<br/>--}%
				%{--<g:message code='spring.security.ui.forgotPassword.sent'/>--}%
				%{--</g:if>--}%
				%{--<g:else>--}%
				%{--<br/>--}%
				%{--<h3><g:message code='spring.security.ui.forgotPassword.description'/></h3>--}%
				%{--<table>--}%
					%{--<s2ui:textFieldRow name='username' size='25' labelCodeDefault='Username'/>--}%
				%{--</table>--}%
				%{--<s2ui:submitButton elementId='submit' messageCode='spring.security.ui.forgotPassword.submit'/>--}%
				%{--</g:else>--}%
			%{--</s2ui:form>--}%
		%{--</s2ui:formContainer>--}%
	%{--</body>--}%
%{--</html>--}%
