<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<title>My Login Page &mdash; Bootstrap 4 Login Page Snippet</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/login/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/login/css/my-login.css">
</head>
<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<img src="${pageContext.request.contextPath}/resources/assets/login/img/logo.jpg">
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Login</h4>
							
							<form name='loginForm' action="<c:url value='j_spring_security_check' />" method="POST">
							 
								<div class="form-group">
									<label for="email">E-Mail Address</label>

									<input id="email" type="email" class="form-control" name="username" value="" required autofocus>
								</div>

								<div class="form-group">
									<label for="password">Password
										<!-- <a href="forgot.html" class="float-right">
											Forgot Password?
										</a> -->
									</label>
									<input id="password" type="password" class="form-control" name="password" required data-eye>
								</div>

								<div class="form-group">
									<!-- <label>
										<input type="checkbox" name="remember"> Remember Me
									</label> -->
								</div>

								<div class="form-group no-margin">
									<button type="submit" class="btn btn-primary btn-block">
										Login
									</button>
								</div>
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							</form>
							<c:if test="${not empty error }">
								<div style="color: red;">${error}</div>
							</c:if>
							<c:if test="${not empty logout }">
								<div style="color: red;">${logout}</div>
							</c:if>
						</div>
					</div>
					<div class="footer">
						Copyright &copy; Your Company 2017
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="${pageContext.request.contextPath}/resources/assets/login/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/login/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/login/js/my-login.js"></script>
</body>
</html>