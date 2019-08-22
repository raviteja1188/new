<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="index1.css">
    <link rel="stylesheet" href="libs/css/hover.css">
    <link rel="stylesheet" href="libs/css/hover-min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
<script defer src="libs/js/all.js"></script>
</head>
<body>
  <style>
    body{
        background-image: url('https://www.mapcommunications.com/wp-content/uploads/2018/04/Live-Answering-Service-for-Contractors.jpeg');
        width: 100%;
        height: 100%;
        background-size: cover;
        margin-right: 0px;
}
.form-row{
  margin: 10px;
  backdrop-filter: transparent;
  
}
.col-lg-6{
  margin: 20px;
  padding: 10px;
  -webkit-box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
-moz-box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
}
.form-group{
    padding: 5px;
}
.form-group label{
    font-family: 'Poppins', sans-serif;
    font-size: 18px;
    color: black;
    
}
.form-group input{
    border-radius: 50px;
    background-color: rgb(91, 158, 247);
}
.form-group input:hover{
    background-color: white;
    color:black;
}
.form-check{
    text-align: center;
    font-size: 16px;
}
.btn{
  margin-left:40%; 
}
.btn:hover{
    color: black;
    background-color: green;
}
    </style>
       <%
HttpSession s=request.getSession();
String name=(String)s.getAttribute("name");

%>
     <%
if(name!=null){
%>


        <nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
                <div class="container-fluid">
                  <a class="navbar-brand" href="#"><img src="imgs/logo.png" width="100" height="85"></a>
                  
                  <button class="navbar-toggler csl" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
                    <span class="navbar-toggler-icon"></span>
                  </button>
               
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Services
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="materials">Materials</a>
                        <a class="dropdown-item" href="contractors">Contractors</a>
                        <a class="dropdown-item" href="repairs.jsp">Repairs</a>
                      </div>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="gallery.jsp">Gallery</a>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        About
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="aboutc.jsp">Comapany</a>
                        <a class="dropdown-item" href="aboutt.jsp">Team</a>
                      </div>
                    </li>
                    <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <%=name %> 
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="nav-link" href="LogoutServlet">logout</a>
                      </div>
                    </li>
                  </ul>
                </div>
                </div>
              </nav>
                       
           <%} %>   
           <%
if(name==null){
%>


        <nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
                <div class="container-fluid">
                  <a class="navbar-brand" href="#"><img src="imgs/logo.png" width="100" height="85"></a>
                  
                  <button class="navbar-toggler csl" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
                    <span class="navbar-toggler-icon"></span>
                  </button>
               
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Services
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="materiall.jsp">Materials</a>
                        <a class="dropdown-item" href="contract.jsp">Contractors</a>
                        <a class="dropdown-item" href="repair.jsp">Repairs</a>
                      </div>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="gallery.jsp">Gallery</a>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        About
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="aboutc.jsp">Comapany</a>
                        <a class="dropdown-item" href="aboutt.jsp">Team</a>
                      </div>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link" href="login.jsp">login</a>
                      </div>
                    </li>
                  </ul>
                </div>
                </div>
              </nav>
                       
           <%} %> 
                         <div class="container">
                <div class="row">
                  <div class="col-lg-3">

                  </div>
                  <div class="col-lg-6">
                    <form action="Contractors" method="post" >
                      <div class="form-row">
                        <div class="form-group col-md-6">
                          <label for="name">name</label>
                          <input type="text" class="form-control" name="name" id="name" placeholder="name" required>
                        </div>
                        <div class="form-group col-md-6">
                          <label for="email">Email</label>
                          <input type="email" class="form-control" name="email" id="emailid" placeholder="Email" required>
                        </div>
                      </div>
                      <div class="form-row">
                      <div class="form-group col-md-12">
                        <label for="phone">Phone Number</label>
                        <input type="number" class="form-control" id="phone" name="phone" placeholder="88620815582" required>
                      </div>
                      <div class="form-group col-md-12">
                        <label for="address">Address</label>
                        <input type="text" class="form-control" id="inputAddress" name="address" placeholder="Apartment, studio, or floor" required>
                      </div>
                      <div class="form-group col-md-12">
                              <label for="qualification">Your Qualification</label>
                              <input type="text" class="form-control" id="qualification" name="qualification" placeholder="standards" required>
                            </div>
                      </div>
                      <div class="form-row">
                        <div class="form-group col-md-6">
                          <label for="city">City</label>
                          <input type="text" class="form-control" id="inputCity" name="city"placeholder="banglore" required>
                        </div>
                        <div class="form-group col-md-4">
                          <label for="photo">Image</label>
                          <input type="text" class="form-control" name="photo" id="inputphoto" placeholder="imageurl" required>
                        </div>
                        <div class="form-group col-md-2">
                          <label for="pincode">Zip</label>
                          <input type="text" class="form-control" name="pincode" id="pincode" placeholder="518348" required>
                        </div>
                      </div>
                      <div class="form-group1">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="gridCheck">
                          <label class="form-check-label" for="gridCheck">
                            Check me out
                          </label>
                        </div>
                      </div> 
                      
                      <button type="submit" class="btn btn-primary">Apply now</button>
                  </form>
                  </div>
                  <div class="col-lg-3">
                    
                  </div>
                </div>
              </div>
              <footer class="page-footer font-small blue ">

    
        <div class="footer-copyright text-center py-3">© 2019 Copyright:
          <a href="#"> Niramann@gmail.com</a>
        </div>
      
      
      </footer>
  <style>
    footer{
      border: 2px solid black;
      background-color:#c2bbbbd0;
      color:white;  
    }
  </style>
              
              
                </body>
</html>