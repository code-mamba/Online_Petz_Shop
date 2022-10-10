<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="Home.css">
<link rel="stylesheet" href="view.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<body>
<div class="navbar">
		<a href="CustomerHome2.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
        
        <a href="MyOrders.jsp">My Orders </a>
        <a href="report.jsp">Report </a>
		 <a href="ContactUs.html"><i class="fa fa-fw fa-user"></i> Contact-us</a>
		 <a href="CustomerHome.jsp"><i class="fa fa-fw fa-user"></i> Logout</a>
 
</div>
<%
     try {
         Connection connection = null;
         Class.forName("com.mysql.cj.jdbc.Driver");
           connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/dna_petz", "root", "Aspire@123");
           Statement statement = connection.createStatement();
           ResultSet rs=null;
           String Email =(String)session.getAttribute("Email"); 
           rs=statement.executeQuery("select * from customer_cart where customerEmail ='"+Email+"'");
           
%>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;" align="center">
<tr>

<td>Customer Name</td>
<td>Mobile No</td>
<td>Customer Email</td>
<td>Customer Address</td>
<td>Product Id</td>
<td>Product Name</td>
<td>Product Quantity</td>
<td>Total Cost</td>
<tr>
    <%
    while (rs.next()) {
    %>
    <TR>
        <TD><%=rs.getString(1)%></TD>
        <TD><%=rs.getString(2)%></TD>
        <TD><%=rs.getString(3)%></TD>
        <TD><%=rs.getString(4)%></TD>
        <TD><%=rs.getString(5)%></TD>
        <TD><%=rs.getString(6)%></TD>
        <TD><%=rs.getString(7)%></TD>
        <TD><%=rs.getString(8)%></TD>
       

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