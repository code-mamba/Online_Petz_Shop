<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup</title>
<link rel="stylesheet" href = "Signup.css">
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
        
        
        <form class = "form" method="post" action="CustomerSignup">
        <!-- username input -->
          <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example13" style="color:white;font-size: 25px">User Name</label>
            <input type="text" id="form1Example13" class="form-control form-control-lg" name="userName" placeholder="Enter Your Name" />
            <br>
          </div>
          <!-- phone no -->
            <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example13" style="color:white;font-size: 25px">Mobile Number</label>
            <input type="tel" id="form1Example13" class="form-control form-control-lg" name="mobileNo" placeholder="Enter Your Mobile Number" />
            <br>
          </div>
          <!-- Email input -->
          <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example13" style="color:white;font-size: 25px">Email address</label>
            <input type="email" id="form1Example13" class="form-control form-control-lg" name="emailId" placeholder="Enter Your E-mail" />
            <br>
          </div>
		
        <!-- create input -->
          <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example23" style="color:white;font-size: 25px">Create Password</label>
            <input type="password" id="form1Example23" class="form-control form-control-lg" name="pass" placeholder="Enter Password"/>
            <br>
            
         <!-- confirm password -->
          </div>
              <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example23" style="color:white;font-size: 25px">Re-Enter Password</label>
            <input type="password" id="form1Example23" class="form-control form-control-lg" placeholder="Type Password"/>
            <br>
            <br>
          </div>
          

          <!-- Submit button -->
          <button type="submit" class="btn btn-primary btn-lg btn-block">Sign up</button>


        </form>
      </div>
    </div>
  </div>
</section>
</body>
</html>