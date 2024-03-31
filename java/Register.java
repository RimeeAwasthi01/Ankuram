

import jakarta.servlet.ServletException; 
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.*;
//import java.util.concurrent.atomic.AtomicInteger;


public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Name = request.getParameter("name");
		String Email = request.getParameter("email");
		String Number = request.getParameter("number");
		String Password = request.getParameter("password");
		
		String query = "insert into std_reg(Name,Email,Password,Mobile_number) values(?,?,?,?);";
		String url = "jdbc:mysql://localhost:3306/mca";
		String Uname = "root";
		String Upass = "Rimee@2001";
	 
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,Uname,Upass);
			 Statement stmt = con.createStatement();
		     stmt.execute("alter table std_reg AUTO_INCREMENT = 1");
			PreparedStatement st = con.prepareStatement(query);
			
			st.setString(1, Name);
			st.setString(2, Email);
			st.setString(3, Password);
			st.setString(4, Number);
			st.executeUpdate();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath()+"/Login_Page.jsp");
		 
		//System.out.print(Name+Email+Number+Password);
	}

}
