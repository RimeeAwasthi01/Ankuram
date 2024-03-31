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
<title>Register-Here!</title>
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
			<li><li><a class="navbar_text" href="Login_Page.jsp">Login</a></li>
			<span style="margin-right: 82%;"></span>
			<li><a class="navbar_text" href="About_Us.jsp">About Us!</a></li>	
		</ul>   
	</nav>
	
	<div style="border-radius: 8px; border: 2px solid black; margin-left: 25%; margin-right: 25%; margin-top: 5%; ">
		<div style="border: 1px blue; background-color: blue; border-radius: 5px; color: white; text-align: center;">
			REGISTER HERE!<br>
		</div>
		
		<div style="padding: 5% 20%;" class="frm">
			
			<form action="Register" method="post">
				
				Enter your Name :<span style="margin-left: 22.8%;"></span> 
				<input type="text" name="name" autofocus="autofocus" placeholder="Your Name"> <br>
				<br> Enter your Email : <span style="margin-left: 23%;"></span>
				<input type="email" name="email" placeholder="Your E-mail"><br>
				<br> Enter your Mobile Number :<span style="margin-left: 9.6%;"></span>
			    <input type="number" name="number" placeholder="Your Mobile Number"><br>
				<br> Enter your Password :<span style="margin-left: 16.2%;"></span> 
				<input type="password" name="password" placeholder="Your Password"><br><br>
				<input style="margin-left:28%; background-color: #7C89FE; width: 30%; border-radius: 4px;" type="submit" value="Register"><br><br>
			
			</form>
				
			<div><span style="margin-left: 12%;"></span>
				<a href="Login_Page.jsp">Click Here</a> to login if registered already!<br>	
			</div>
		</div>
	</div>
</body>
</html>








