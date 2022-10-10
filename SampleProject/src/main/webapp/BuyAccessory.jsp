<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href = "Home.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
body{
background-image: url("images/petAccesories.jpg");
}
</style>
</head>
<body>
<div class="navbar">
		<a href="CustomerHome2.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
        <a href="Login.jsp"><i class="fa fa-fw fa-envelope"></i> Login</a>
        <a href="signup.jsp"><i class="fa fa-fw fa-user"></i> Signup</a>
        <a href="MyOrders.jsp">My Orders </a>
        <a href="report.jsp">Report </a>
		 <a href="ContactUs.html"><i class="fa fa-fw fa-user"></i> Contact-us</a>
		  <a href="CustomerHome.jsp"><i class="fa fa-fw fa-user"></i> Log-Out</a>
    </div>
          <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
        <form class = "form" action="CustomerBuyAccessories" method="get">
          <!-- username -->
          <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example13" style="color:white;font-size: 25px">Enter Pet Id To Buy</label>
            <input type="text" id="form1Example13" name="AccesoryId" class="form-control form-control-lg" placeholder="Enter Pet Id " />
            <br>
          </div>
                  <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example13" style="color:white;font-size: 25px">Enter Pet Quantity To Buy</label>
            <input type="text" id="form1Example13" name="AccessoryQuantity" class="form-control form-control-lg" placeholder="Enter Quantity " />
            <br>
          </div>
                            <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example13" style="color:white;font-size: 25px">CustomerName</label>
            <input type="text" id="form1Example13" name="name" class="form-control form-control-lg" placeholder="Enter Your Name " />
            <br>
          </div>
            <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example13" style="color:white;font-size: 25px">Mobile Number</label>
            <input type="text" id="form1Example13" name="mobile" class="form-control form-control-lg" placeholder="Enter Your mobile number " />
            <br>
          </div>
           <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example13" style="color:white;font-size: 25px">Email address</label>
            <input type="text" id="form1Example13" name="email" class="form-control form-control-lg" placeholder="Enter Your E-mail " />
            <br>
          </div>
            <div class="form-outline mb-4">
  			<label class="form-label" for="form4Example3" style="color: white">Address</label>
    		<textarea class="form-control" name="address" id="form4Example3" rows="4"></textarea>
    
  			</div>
          <button type="submit" class="btn btn-success btn-lg btn-block">Buy Now</button>
          </form>
          </div>
</body>
</html>