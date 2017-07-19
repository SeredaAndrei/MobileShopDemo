package Shop;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdk.nashorn.internal.ir.RuntimeNode.Request;



/**
 * Servlet implementation class Model
 */
@WebServlet("/Model")
public class Model extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	PrintWriter out = null;
	private Connection con;
	
 	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet (HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		    
		response.setContentType("text/html;charset=utf-8");
		out = response.getWriter();
		out.println("<h1 align=center>Hello from servlet!Method GET!</h1>");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			out.println("Driver loading success!<br/>");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
			
		
	String url = "jdbc:mysql://localhost/mobileshop?characterEncoding=utf8";
	String name = "Andrusha";
	String password = "123";
	

	
		
	
	
	try {
		con = DriverManager.getConnection(url, name, password);
		out.println("Connected.<br/>");
		Statement st = con.createStatement();
		String query = "select * from �����,���� where �����.ID������=����.ID������";
		ResultSet rs = st.executeQuery(query);
		
		RequestDispatcher rd = request.getRequestDispatcher("header.html");
		rd.include(request, response);
		out.println("<article>");
		out.println("<h3>��� ��������� :</h3>" );
		out.println("<form name=basket action=basket.java method=get enctype=text/plain>");
		out.println("<table>");
		out.println("<tr><th>" + "�����" + "</th><th>" + "������������"+ "</th><th>" + "����,���."+ "</th><th>" + "� �������!" + "</th></tr>");
		printResults(rs);
		out.println("</table>");
		out.print("<img src=/Shop/pic/bestprice.jpg width=20% >");
		out.print("<input type=submit value=���������_�_�������!>");
		out.println("<input type=reset value=��������!>");
		out.println("</form>");
		out.println("Disconnected.");
		out.println("</article>");
		rd = request.getRequestDispatcher("footer.html");
		rd.include(request, response);

		con.close();
	} catch (SQLException e) {
		//e.printStackTrace();
		RequestDispatcher rd = request.getRequestDispatcher("header.html");
		rd.include(request, response);
		out.println("<article>");
		out.println("<p><h1>��������,��� ���������� � �����...</h1>"
				+ "<h3>��������� � ���� � �������� � ��������� �������� �� ������ ����� ����� "
				+ "<a href=contact.jsp>��������.</a></h3></p>");
		out.println("</article>");
		rd = request.getRequestDispatcher("footer.html");
		rd.include(request, response);
	}

}

private void printResults(ResultSet rs) throws SQLException {
	String gName;
	int gID,gPrice;
	while (rs.next()) {
		gID = rs.getInt("ID������");
		gName = rs.getString("������������");
		gPrice=rs.getInt("����");
		out.println("<tr><td>" + gID + "</td><td>" + gName +"</td><td>"+ gPrice +"</td><td>"+
		"<input type=checkbox name=gID value=gPrice>"+ "</td></tr>");

	}

}

}
