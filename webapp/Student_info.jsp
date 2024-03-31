<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<title>Student Details</title>
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

.btn {
	display: block;
	align-items: center;
	margin-top: 20%;
}

h1{ 
font-size: 40px;
font-family:Georgia, 'Times New Roman', Times, serif; 
padding-bottom: 20px;
text-align: center;
    
}

table {
    border: 2px solid blue;
	margin: auto;
	width: 80%;
}

tr{
    border: 2px solid blue;
}

th{
    border: 1px solid white;
    font-family: Georgia, 'Times New Roman', Times, serif;
    background-color: blue;
    color: white;
    height: 40px;
    padding-left: 10px;
    text-align: center;
    }
 
td{
	border: 1px solid;
	text-align: center;
	background-color: #F5F5F5;
}

.content {
	padding: 10px;
}
</style>
</head>

<body>
	<span style="margin-top: 10%;"></span>
	<nav>
		<ul class="nav">
			<li><a class="navbar_text" href="Home_Page.jsp">Home</a></li>
			<li><a class="navbar_text" href="Register_Page.jsp">Register</a></li>
			<span style= "margin-right: 75%"></span>
			<li><a class="navbar_text" href="About_Us.jsp">About Us!</a></li>
		</ul>
	</nav>
	<div>
		<br>
		<h1>STUDENT-DETAILS</h1>
		<div>
			<table>
				<!-- Table headings -->
				<tr>
					<th>User</th>
					<th>Student_Id</th>
					<th>Name</th>
					<th>Email</th>
					<th>Mobile Number</th>
					<th colspan="2" scope="colgroup">Edit</th>
				</tr>
				<!-- Table headings close -->
				
				<%
				try {
					PrintWriter pt = response.getWriter();
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mca", "root", "Rimee@2001");
					Statement stmt = con.createStatement();
					ResultSet rs = stmt.executeQuery("select * from std_reg ;");
					while (rs.next()) {
				%>

				<!-- Table Rows -->
				<tr>
					<td><div class="content"><i class="fa-solid fa-user"></i></div></td>
					<td><div class="content"><%=rs.getInt("Id")%></div></td>
					<td><div class="content"><%=rs.getString("Name")%></div></td>
					<td><div class="content"><%=rs.getString("Email")%></div></td>
					<td><div class="content"><%=rs.getString("Mobile_number")%></div></td>

					<!--  Edit and Delete Buttons -->
					<td>
					<div class="content">
						<form action="Update_Page.jsp">
								<input type="text" value="<%=rs.getInt("Id")%>" name="edit"hidden> 
								<input type="text"value="<%=rs.getString("Name")%>" name="name" hidden>
								<input type="text" value="<%=rs.getString("Email")%>" name="mail"hidden> 
								<input type="text" value="<%=rs.getString("Mobile_number")%>" name="number" hidden>
								<input type="submit" name="id" value="Update" style="color: blue; border-color: white;">
						</form>
						</div>
						</td>
					<td>
				        <div class="content">
							<form action="DeleteServlet">
								<input type="text" value="<%=rs.getInt("Id")%>" name="delete" hidden> 
								<input type="submit" name="id" value="Delete" style="color: red; border-color: white;">
							</form>
						</div>
					</td>
				</tr>
				<%
				}
				con.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</table>
		</div>
	</div>	
</body>
</html>







