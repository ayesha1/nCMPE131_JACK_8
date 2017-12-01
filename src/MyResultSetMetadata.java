import java.io.*;

import java.util.*;

import java.sql.*;

import javax.servlet.*;

import javax.servlet.http.*;

public class MyResultSetMetadata extends HttpServlet {

	private ServletConfig config;

	// Setting JSP page

	String page = "DataPage.jsp";

	public void init(ServletConfig config)

			throws ServletException {

		this.config = config;

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)

			throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		// Establish connection to MySQL database

		String connectionURL = "jdbc:mysql://localhost:3306/book";

		Connection connection = null;

		ResultSet rs;

		response.setContentType("text/html");

		List dataList = new ArrayList();

		try {

			// Load the database driver

			Class.forName("com.mysql.jdbc.Driver");

			// Get a Connection to the database

			connection = DriverManager.getConnection(connectionURL, "ayesha", "1234");

			// Select the data from the database

			String sql = "select * from book";

			Statement s = connection.createStatement();

			s.executeQuery(sql);

			rs = s.getResultSet();

			while (rs.next()) {

				// Add records into data list

				dataList.add(rs.getInt("id"));

				dataList.add(rs.getString("message"));

			}

			rs.close();

			s.close();

		} catch (Exception e) {

			System.out.println("Exception is ;" + e);

		}

		request.setAttribute("data", dataList);

		// Disptching request

		RequestDispatcher dispatcher = request.getRequestDispatcher(page);

		if (dispatcher != null) {

			dispatcher.forward(request, response);

		}

	}

}