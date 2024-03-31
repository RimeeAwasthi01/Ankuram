<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Login-Here!</title>
<style type="text/css">
ul {
	display: flex;
	list-style: none;
}

.navbar_text {
	color: white;
}


nav {
	background-color: blue;
	height: 40px;
}

.btn {
	display: block;
	align-items: center;
	margin-top: 20%;
}

.frm:hover {
	background-color: #ECF3F0;
}
</style>
</head>
<body>
	<span style="margin-top: 10%;"></span>
	<nav>
		<ul class="nav">
			<li><a class="navbar_text" href="Home_Page.jsp">Home</a></li>
			<li><li><a class="navbar_text" href="Register_Page.jsp">Register</a></li></li>
			<span style="margin-right: 82%;"></span>
			<li><a class="navbar_text" href="About_Us.jsp">About Us!</a></li>
			
		</ul>
	</nav>

	
		<div
		style="border-radius: 8px; border: 2px solid black; margin-left: 25%; margin-right: 25%; margin-top: 8%; ">
		<div style="border: 1px blue; background-color: blue; border-radius: 5px; color: white; text-align: center;">
			WELCOME TO STUDENT LOGIN PORTAL!<br>
		</div>

		<div style="padding: 7% 20%;" class="frm">
			<form action="Login" method="post">
				Enter your Name :<span style="margin-left: 20%;"></span> <input
					type="text" name="name" placeholder="Your name"> <br>
				<br> Enter your Password : <span style="margin-left: 15%;"></span><input
					type="password" name="password" placeholder="Your password"><br>
				<br> <input style="margin-left: 25%; background-color: #7C89FE; width: 40%; border-radius: 4px;"
					type="submit" value="Login">

			</form>
			<br>
			
			<span style="margin-left: 26%;"></span>
				<a href="Register_Page.jsp">Click here</a> if not registered !<br>
			
		</div>
	</div>

</body>
</html>







