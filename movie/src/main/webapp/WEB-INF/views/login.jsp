<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="c" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${c}/resources/css/login.css">
<%@ page isELIgnored="false"%>
<meta charset="UTF-8">
<title>LOGIN</title>

</head>
<body class="img js-fullheight"
	style="background-image: url(${c}/resources/img/bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Login</h2>
					<c:if test="${not empty error}">
						<div class="alert alert-danger">
							<spring:message
								code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
							<br />
						</div>
					</c:if>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">

						<form action="login" method="post" class="signin-form">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Username"
									name='username' required>
							</div>
							<div class="form-group">
								<input id="password-field" type="password" class="form-control"
									placeholder="Password" name='password' required> <span
									toggle="#password-field"
									class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>
							<div class="form-group">
								<button type="submit" value="login"
									class="form-control btn btn-primary submit px-3">Sign
									In</button>
							</div>
							<a style="margin-left: 145px" href="${c}/register">SIGN UP?</a>
							<div class="form-group d-md-flex">
								<div class="w-50">
									<label class="checkboxeckbox" checked> <span
										class="checkmark"></span>
									</label>
								</div>
								<div class="w-50 text-md-right">
									<a href="forgetPassword" style="color: #fff">Forgot
										Password</a>
								</div>
							</div>
						</form>
						<p class="w-100 text-center">&mdash; Or Sign In With &mdash;</p>
						<div class="social d-flex text-center">
							<a href="https://vi-vn.facebook.com/"
								class="px-2 py-2 mr-md-1 rounded"><span
								class="ion-logo-facebook mr-2"></span> Facebook</a> <a
								href="https://twitter.com/" class="px-2 py-2 ml-md-1 rounded"><span
								class="ion-logo-twitter mr-2"></span> Twitter</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="${c}/resources/js/jquery.min.js"></script>
	<script src="${c}/resources/js/popper.js"></script>
	<script src="${c}/resources/js/bootstrap.min.js"></script>
	<script src="${c}/resources/js/main.js"></script>

</body>

</html>