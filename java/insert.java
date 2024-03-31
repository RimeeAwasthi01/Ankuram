import java.sql.*;
public class insert {

	public static void main(String[] args) {
		try{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/crud","root","Yashittripathi");
			Statement st = con.createStatement();
			String sql = "insert into users values('Rameiiiii','Jaguuuuuu');";
			st.executeUpdate(sql);
			con.close();
			System.out.println("done");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
	}

}
