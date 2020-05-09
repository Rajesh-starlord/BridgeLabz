<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome To Login Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style type="text/css">
		.block{
			height:128px;
			width:275px;
			border-style:;
			margin-left:10px;
			position:absolute;
			left:40%;
			bottom:40%;
			background-color:#f1f1f1;
			box-sizing: border-box;
		}
		div{
			padding-left: 10px;
			padding-top: 10px;

		}
		button{
			margin:auto;
			margin-top:10px;
		}
		body{
			background-color: #f5f5f5;
		}
		input[type=text]{
			margin-button:-1px;
			border-bottom-right-radius: 0;
			border-bottom-left-radius: 0;
		}
		.form-signin{
			width: 100%;
			max-width: 330px;
			padding: 15px;
			margin: 100px auto;
		}
		p{
			margin:auto;
			padding-left:40px;
		}
		svg{
			margin-left: 115px;
			margin-bottom: 10px;
		}
	</style>
</head>
<body>
	<form action="http://localhost:8080/MyWebApp/sayhello" method="post" class="form-signin">
	
			<svg class="bi bi-people-circle" width="3em" height="3em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
			  <path d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 008 15a6.987 6.987 0 005.468-2.63z"/>
			  <path fill-rule="evenodd" d="M8 9a3 3 0 100-6 3 3 0 000 6z" clip-rule="evenodd"/>
			  <path fill-rule="evenodd" d="M8 1a7 7 0 100 14A7 7 0 008 1zM0 8a8 8 0 1116 0A8 8 0 010 8z" clip-rule="evenodd"/>
			</svg>
			
			<h1 class="h3 mb-3 font-weight-normal">Please sign in here</h1>
			<label for="name">UserName</label>
			<input type="text" placeholder="UserName" class="form-control" name="Name" id="Name" required autofoc	us>

			<label for="password">Password</label>
			<input type="password" placeholder="password" class="form-control" name="password" id="password" required>

			<button class="btn btn-primary" type="submit">Submit</button>
			<button class="btn btn-danger" type="reset">Reset</button>
			
			<p class="mt-5 mb-3 text-muted">copyright @ R.K.Sidharth</p>

		</form>
</body>
</html>