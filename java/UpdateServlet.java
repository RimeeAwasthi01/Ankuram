
import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.*;
//import java.util.concurrent.atomic.AtomicInteger;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int Id = Integer.parseInt(request.getParameter("id"));
		String Name = request.getParameter("name");
		String Email = request.getParameter("email");
		String Number = request.getParameter("number");
		String Password = request.getParameter("password");

		String query = "update std_reg set Name='"+Name+"',Email='"+Email+ "',Password= '"+Password+ "',Mobile_number= '"+Number
				+ "'where id ="+ Id;
		String url = "jdbc:mysql://localhost:3306/mca";
		String Uname = "root";
		String Upass = "Rimee@2001";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, Uname, Upass);
			Statement stmt = con.createStatement();
			stmt.executeUpdate(query);
			 
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath() + "/Student_info.jsp");

		// System.out.print(Name+Email+Number+Password);
	}

}
