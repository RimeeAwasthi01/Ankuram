<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minimized CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Protest+Riot&display=swap" rel="stylesheet">
<title>Ankuram</title>

<style type="text/css">
ul {
	display: flex;
	list-style: none;
}

.navbar_text {
	color: white;
}

.nav {
	background-color: blue;
}
.btn{
	display: block;
	align-items: center;	
}
</style>
</head>

<body style="background: url('pic.jpg') no-repeat center center/cover;">
	<span style="margin-top: 10%;"></span>
	
	<nav>
		<ul class="nav">
			<li><a class="navbar_text" href="Home_Page.jsp">Ankuram</a></li>
			<li><a class="navbar_text" href="Login_Page.jsp">Login</a></li>
			<li><a class="navbar_text" href="Login_Page.jsp">Students-Info</a></li>
			<span style="margin-right: 73%;"></span>
			<li><a class="navbar_text" href="About_Us.jsp">About Us!</a></li>
		</ul>
	</nav>
	
 <div style="text-align: center; margin-top: 15%;font-family: 'Protest Riot', sans-serif; font-size: 7rem; color: black;">ANKURAM</div>
      <p style="text-align:center">Here you can manage details of the students in schools and colleges.</p>
	
	<div class="btn"> 
		<button style="width: 10%; background-color: blue; border-radius:5px;">
			<a style="color: white;" href="Login_Page.jsp">Login</a>
		</button>
		
		<span style="margin-left: 20px;"></span>
		
		<button style="width: 10%; background-color: blue;border-radius:5px; ">
			<a style="color: white;" href="Register_Page.jsp">Register</a>
		</button>
	</div>	 
</body>
</html>