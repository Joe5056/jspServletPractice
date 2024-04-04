package movieServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MovieBuy")
public class MovieBuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("moviename");
		
		try { 
			Class.forName("com.mysql.jdbc.Driver");

			try { 
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb", "root", "root");
				
				PreparedStatement ps = conn.prepareStatement("select * from movies where title=?");
				
				ps.setString(1, name);
			

				
				ResultSet rs = ps.executeQuery();
				

				if (rs.next()) {
					System.out.println(rs.getString(2) + "  " + rs.getString(3) + "  "
							+ rs.getString(4) + "  " + rs.getString(5)+"  "+rs.getString(6));
					
					String title = rs.getString(2);  
					String  language= rs.getString(3);  
					String genre = rs.getString(4);   
					String release_date = rs.getString(5);  
					String price= rs.getString(6);

					request.setAttribute("a", title);
					request.setAttribute("b", language);
					request.setAttribute("c", genre);
					request.setAttribute("d", release_date);
					request.setAttribute("e", price);

					// forward these data to client on congratulations page so that client can see
					// his/her record.
					request.getRequestDispatcher("details.jsp").forward(request, response);

				} else {
					request.setAttribute("message", "Please Enter Movies from this list: \n 1. Toy Story \n 2. Lion King \n 3. Terminator \n 4. Chucky");
					request.getRequestDispatcher("moviebuy.jsp").forward(request, response);
				}

			
			} catch (SQLException e) {

				e.printStackTrace();
			}
			
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		}

	}

	
	
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
