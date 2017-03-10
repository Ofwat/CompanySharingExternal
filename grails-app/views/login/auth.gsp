<g:set var='securityConfig' value='${applicationContext.springSecurityService.securityConfig}'/>
<html>
	<head>
		<meta name="layout" content="main"/>
		<s2ui:title messageCode='spring.security.ui.login.title'/>
		<asset:stylesheet src='spring-security-ui-auth.css'/>
	</head>
	<body>
	<div class="container content">
	<div class="row">
		<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
			<s2ui:form type='login' focus='username' class="reg-page">
				<div class="reg-header">
					<h2>Login to your account</h2>
				</div>

				<div class="input-group margin-bottom-20">
					<span class="input-group-addon"><i class="fa fa-user"></i></span>
					<input type="text" name="${securityConfig.apf.usernameParameter}" placeholder="Username" class="form-control">
				</div>
				<div class="input-group margin-bottom-20">
					<span class="input-group-addon"><i class="fa fa-lock"></i></span>
					<input type="password" name="${securityConfig.apf.passwordParameter}" placeholder="Password" class="form-control">
				</div>

				<div class="row">
					<div class="col-md-6 checkbox">
						<label><input type="checkbox" name="${securityConfig.rememberMe.parameter}" id="remember_me"> Stay signed in</label>
					</div>
					<div class="col-md-6">
						<a id="loginButton" class="btn-u pull-right">Log in</a>
						%{--<s2ui:submitButton class="btn-u pull-right" elementId='loginButton' messageCode='spring.security.ui.login.login'/>--}%
						%{--<button class="btn-u pull-right" type="submit">Login</button>--}%
					</div>
				</div>

				<hr>

				<h4>Forget your Password ?</h4>
				<p>no worries, <g:link controller='register' action='forgotPassword' class="color-green">click here</g:link> to reset your password.</p>
			</s2ui:form>
		</div>
	</div><!--/row-->
	</div>
		<p/>
	</body>
<asset:script>
	$(document).ready(function(){
		$("#loginButton").click(function(evt){
			document.forms.loginForm.submit();
		});
	});
</asset:script>
</html>
