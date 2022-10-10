<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="report.css" rel="stylesheet">
<link href="Home.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<div class="navbar">
		<a href="CustomerHome2.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
        
        <a href="report.jsp">Report </a>
		 <a href="ContactUs.html"><i class="fa fa-fw fa-user"></i> Contact-us</a>
		 <a href="CustomerHome.jsp"><i class="fa fa-fw fa-user"></i> Log Out</a>
		 
    </div>	
<div class="Report">

	<form action="CustomerReport" method="post">
  <!-- Name input -->
  <div class="form-outline mb-4">
   <label class="form-label" for="form4Example1" style="color: white">Name</label>
    <input type="text" name="CustomerName" id="form4Example1" class="form-control" />
   
  </div>

  <!-- Email input -->
  <div class="form-outline mb-4">
  	<label class="form-label" for="form4Example2"style="color: white">Email address</label>
    <input type="email" name="EmailId"  id="form4Example2" class="form-control" />
    
  </div>

  <!-- Message input -->
  <div class="form-outline mb-4">
  	<label class="form-label" for="form4Example3" style="color: white">Message</label>
    <textarea class="form-control" name="Message" id="form4Example3" rows="4"></textarea>
    
  </div>

	<br>
  <!-- Submit button -->
  <button type="submit" class="btn btn-primary btn-block mb-4">Send</button>
</form>
	</div>
</body>
</body>
</html>