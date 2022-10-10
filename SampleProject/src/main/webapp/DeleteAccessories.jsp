<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Home.css">
<link rel="stylesheet" href="DeleteAccessories.css">
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
		 <a href="ViewCustomersCart.jsp"><i class="fa fa-fw fa-user"></i>Customers cart</a>
		 <a href="ViewReport.jsp"><i class="fa fa-fw fa-user"></i>Report</a>
		 <a href="AdminLogin.jsp"><i class="fa fa-fw fa-user"></i>Logout</a>
    </div>	
   
	<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100">
      <div class="col-md-8 col-lg-7 col-xl-6">
     
      </div>
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
        <form class = "form" action="AdminDeleteAcessories" method = "post">
          <!-- Email input -->
          <div class="form-outline mb-4">
          	<label class="form-label" for="form1Example13" style="color:black;font-size: 25px">Enter Accessory id</label>
            <input type="text" id="form1Example13"  class="form-control form-control-lg" name= "AccessoryId" placeholder="Enter Accessory Id to Delete" />
            <br>
          </div>

        <!-- Submit button -->
           <button type="submit" class="btn btn-danger btn-lg btn-block">Delete</button>
         


        </form>
      </div>
    </div>
  </div>
</section>
</body>
</html>