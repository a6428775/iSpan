<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Servlet: Request.getParameter()等</title>
	
	<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" />
	<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script> -->
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="offset-sm-3 col-sm-6 my-5 p-5 border shadow">
				<h3 class="text-center">註冊畫面</h3>
				<form method="post" action="/register2.controller">
					<div class="mb-3">
						<label for="username" class="form-label">註冊帳號</label> 
						<input class="form-control" type="text" name="account" id="account"
							 />${errors.name}
					</div>
					<div class="mb-3">
						<label for="password" class="form-label">註冊密碼</label> 
						<input class="form-control" type="password" name="password"
							id="password"  />${errors.pwd}
					</div>

					<button type="submit" class="btn btn-primary">註冊</button>
					<span style="margin: auto;">${errors.account}</span>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>