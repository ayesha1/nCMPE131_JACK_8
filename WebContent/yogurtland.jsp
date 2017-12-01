<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Discover SJSU</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <style>
    .btn {
      background-color: #EF615C;
      color: white;
    }
    .navbar-custom {
        color: black;
        background-color: white;
    }
    
td
{
    padding:0 50px 0 50px;
}    </style>

</head>

<body>

      <div class="navbar navbar-inverse navbar-fixed-top navbar-custom">
        <div class="container">
          <a class="navbar-brand text-muted" href="#">DiscoverSJSU</a>
            <div class="collapse navbar-collapse">

              <ul class="nav navbar-nav navbar-right">
                <li><a href="signuppage.html">Sign Up</a></li>

              <li class="active"><a href="#">Sign In</a></li>
              </ul>

             </div>
         </div>
      </div>
    <div class="container">
      <a href="#">&#60;Back to results</a>
      <br>
      <br>
      <br>
        <div class="row">
            <div class="col-sm-3">
                <h1>Yogurtland</h1>
                <button type="button" class="btn btn-secondary"><a  href="yogurtland.html">Write Review</a></button>
                <button type="button" class="btn btn-secondary">Add Photo</button>
            </div>
            <div class="col-sm-3">


                <iframe width="250" height="200" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDVQj7rKMM1HhpeWQdD8T5hsocl0pK8PtU
&q=150+S+1st+St+#135,+San+Jose,+CA+95113" allowfullscreen>
                    </iframe>
            </div>
            <div class="col-sm-3">
                <img src="images/cafe.jpg" width="250" height="200">
            </div>
            <div class="col-sm-3">
                <img src="images/coffeeshop.jpg" width="250" height="200">
            </div>

        </div>
        <br>
        <br>
        <div class="row">
          <div class="col-sm-3">

      </div>
        <div class="col-sm-3">

      </div>
    </div>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>

    <%
    	String id = request.getParameter("userName");
    	String driverName = "com.mysql.jdbc.Driver";
    	String connectionUrl = "jdbc:mysql://localhost:3306/";
    	String dbName = "test";
    	String userId = "ayesha";
    	String password = "1234";

    	try {
    		Class.forName(driverName);
    	} catch (ClassNotFoundException e) {
    		e.printStackTrace();
    	}

    	Connection connection = null;
    	Statement statement = null;
    	ResultSet resultSet = null;
    %>

    	<%
    		try {
    			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
    			statement = connection.createStatement();
    			String sql = "SELECT * FROM yogurtland";

    			resultSet = statement.executeQuery(sql);
    			while (resultSet.next()) {
    	%>
    <table>
    <hr>
    <tr>
    <th><p><%=resultSet.getString("userid")%><p></th>
    <td><p><%=resultSet.getString("comment")%></p></td>
    </tr>
    </table>

    	<%
    		}

    		} catch (Exception e) {
    			e.printStackTrace();
    		}
    	%>
    	    <!--- review here -->
    <hr>
    <!--- review here -->

    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>

</html>
