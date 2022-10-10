<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<link rel="stylesheet" href = "Login.css">
<link rel="stylesheet" href = "Home.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<div class="navbar">
		<a href="CustomerHome.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
        <a href="Login.jsp"><i class="fa fa-fw fa-envelope"></i> Login</a>
        <a href="signup.jsp"><i class="fa fa-fw fa-user"></i> Signup</a>
        <a href="report.jsp">Report </a>
		 <a href="ContactUs.html"><i class="fa fa-fw fa-user"></i> Contact-us</a>
		 
		 
    </div>	
   
	<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100">
      <div class="col-md-8 col-lg-7 col-xl-6">
     
      </div>
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
        <form class = "form" action="CustomerLoggedin" method="post">
          <!-- username -->
          <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example13" style="color:white;font-size: 25px">User Name</label>
            <input type="text" id="form1Example13" name="Username" class="form-control form-control-lg" placeholder="Enter Your Name" />
            <br>
          </div>
            <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example13" style="color:white;font-size: 25px">Email</label>
            <input type="email" id="form1Example13" name="EmailId" class="form-control form-control-lg" placeholder="Enter Your Email Address" />
            <br>
          </div>
		
        <!-- Password input -->
          <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example23" style="color:white;font-size: 25px">Password</label>
            <input type="password" id="form1Example23" name="Password" class="form-control form-control-lg" placeholder="Enter Password"/>
            <br>
          </div>

          
            

          <!-- Submit button -->
           <button type="submit" class="btn btn-primary btn-lg btn-block">Log in</button>
         

          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0 text-muted" style="color:white">OR</p>
          </div>


          <a class="btn btn-primary btn-lg btn-block" style="background-color: #55acee" href="signup.jsp"
            role="button">
            <i class="fab fa-twitter me-2"></i>Sign-up</a>

        </form>
      </div>
    </div>
  </div>
</section>

</body>
</html>