<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Home.css">
<link rel="stylesheet" href="view.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<div class="navbar">
<a href="AddPet.jsp"><i class="fa fa-fw fa-user"></i>Add Petz</a>
    	   
		 <a href="AddAccessories.jsp"><i class="fa fa-fw fa-user"></i>Add Accessories</a>
		 <a href="DeleteProduct.jsp"><i class="fa fa-fw fa-user"></i>Delete Petz</a>
		 <a href="DeleteAccessories.jsp"><i class="fa fa-fw fa-user"></i>Delete Accessories</a>
		 <a href="ViewPets.jsp"><i class="fa fa-fw fa-user"></i>View pets</a>
		 <a href="ViewAccessories.jsp"><i class="fa fa-fw fa-user"></i>View Accessories</a>
		 <a href="ViewCustomersDetails.jsp"><i class="fa fa-fw fa-user"></i>Customer Details</a>
		 <a href="#"><i class="fa fa-fw fa-user"></i>Customers cart</a>
		 <a href="ViewReport.jsp"><i class="fa fa-fw fa-user"></i>Report</a>
		 <a href="AdminLogin.jsp"><i class="fa fa-fw fa-user"></i>Logout</a>
 
</div>
<%
     try {
         Connection connection = null;
         Class.forName("com.mysql.cj.jdbc.Driver");
           connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/dna_petz", "root", "Aspire@123");
           Statement statement = connection.createStatement();
           ResultSet rs=null;
           rs=statement.executeQuery("select * from customer_report");
           
%>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;" align="center">
<tr>

<td>User Name</td>
<td>Email Address</td>
<td>Feed Back</td>
<tr>
    <%
    while (rs.next()) {
    %>
    <TR>
        <TD><%=rs.getString(1)%></TD>
        <TD><%=rs.getString(2)%></TD>
        <TD><%=rs.getString(3)%></TD>
       

    </TR>
    <%   }    %>
    <%
    // close all the connections.
    rs.close();
    statement.close();
    connection.close();
} catch (Exception ex) {
    %>
    </font>
    <font size="+3" color="red"></b>
        <%
                out.println("Unable to connect to database.");
            }
        %>
    </TABLE><TABLE align="center">

    </TABLE>
</font>

</body>
</html>