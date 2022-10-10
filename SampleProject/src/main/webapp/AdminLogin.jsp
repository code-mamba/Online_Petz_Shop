<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" href = "AdminLogin.css">
<link rel="stylesheet" href = "Home.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	
   
	<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100">
      <div class="col-md-8 col-lg-7 col-xl-6">
     
      </div>
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
        <form class = "form" action="AddPet.jsp" method = "post">
          <!-- Email input -->
          <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example13" style="color:white;font-size: 25px">Email address</label>
            <input type="email" id="form1Example13" name="AdminEmail" class="form-control form-control-lg" placeholder="Enter Your E-mail" />
            <br>
          </div>
		
        <!-- Password input -->
          <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example23" style="color:white;font-size: 25px">Password</label>
            <input type="password" id="form1Example23" class="form-control form-control-lg" name="AdminPassword" placeholder="Enter Password"/>
            <br>
          </div>

        <!-- Submit button -->
           <button type="submit" class="btn btn-primary btn-lg btn-block">Log in</button>
         


        </form>
      </div>
    </div>
  </div>
</section>

</body>
</html>