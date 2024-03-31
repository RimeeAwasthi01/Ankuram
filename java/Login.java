
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String query = "select * from std_reg;";
	String url = "jdbc:mysql://localhost:3306/mca";
	String Uname = "root";
	String Upass = "Rimee@2001";
	
	//POst method

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Name fetch from Name field
		String Name = request.getParameter("name");
		
		//Password fetch from password field
		String Password = request.getParameter("password");
		
		PrintWriter pt = response.getWriter();
		int count =0;
		
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection con = DriverManager.getConnection(url,Uname,Upass);
			 Statement stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery(query);
			
			 while(rs.next()) 
			 {
				 if((rs.getString(1).equals(Name))&&(rs.getString(4).equals(Password)))
				 {  
					 response.sendRedirect("Student_info.jsp");
				 }
				 else {
					 count=1;
				 }
			 } 
			 con.close(); 
			 
			 if(count==1) {
				 pt.print("<html><body>");
				 pt.print("<center><h1>Sorry for this interruption !<br> kindly Register first</h1></center>");
				 pt.print("<center><div>click here to register</div>");
				 pt.print("<a href='Register_Page.jsp'>Register</a></center>");
				 pt.print("</body></html>");  
			 } 
		 }
		 catch (Exception e) {
			e.printStackTrace();
		}	
	}
}
