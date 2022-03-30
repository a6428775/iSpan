<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="offset-sm-3 col-sm-6 my-5 p-5 border shadow">
				<h3 class="text-center">登入畫面</h3>
				<form method="post" action="/login/page">
					<div class="mb-3">
						<label for="account" class="form-label">帳號</label> 
						<input class="form-control" type="text" name="username" id="username"
							placeholder="請輸入帳號"  />${errors.name}
					</div>
					<div class="mb-3">
						<label for="password" class="form-label">密碼</label> 
						<input class="form-control" type="password" name="password"
							id="password" placeholder="請輸入密碼"  />${errors.pwd}
					</div>
					<table>
				       <tr>
				          <td colspan="2"><input type="checkbox" name="remember-me">RememberMe</td>
				       </tr>
				       <tr>
				          <td colspan="2"><button type="submit" value="login"  class="btn btn-primary">送出</button></td>
				       </tr>	
				       				
					</table>


					${errors.msg}

				</form>
				<div style="white-space:nowrap">
				<form method="get" action="/register" >
				
				<button type="submit" class="btn btn-primary" >註冊</button>
				
				</form>
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>