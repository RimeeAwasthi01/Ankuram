<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>About Us!</title>
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

.card1{
      background-color: rgb(240, 240, 240);
      padding: 1.5rem;
      width: 100%; 
      text-align: center;
      font-size: 1.5rem;
     }      
</style>

</head>
<body>
	 <span style="margin-top: 10%;"></span>
	<nav>
		<ul class="nav">
			<li><a class="navbar_text" href="Home_Page.jsp">Ankuram</a></li>
			<li><a class="navbar_text" href="Login_Page.jsp">Login</a></li>
			<li><a class="navbar_text" href="Login_Page.jsp">Students-Info</a></li>
			<span style="margin-right: 75%;"></span>
			<li><a class="navbar_text" href="Home_Page.jsp">Back</a></li>	 
		</ul>
	</nav>
	
	<div class="card text-center">
	 <div class="card-body" style="margin-top:20%;">
			<!--<h3 class="card-title">About Us</h3>-->
			<p class="card-text">Student Management System is created and designed to manage the the details of the students.</p>
			<a href="Home_Page.jsp" class="btn btn-primary">Go somewhere</a>
		</div>	
	</div>
	
    <div class="card1">
        <h4>Created & Designed by,</h4>
        <span>Yashit Tripathi<br>
			Rimee Awasthi</span><br>
        
    </div>
		<div class="card-footer text-muted" style="text-align: center; padding-top: 1px;"> 
			<br>INDIA
		</div>
		
</body>
</html>