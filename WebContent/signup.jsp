<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"><script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script> 
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script defer src="libs/js/all.js"></script>
    <title>Signup</title>
    <style>
        .bg{
            background-image:url('https://images3.alphacoders.com/233/233999.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            width: 100%;
            height: 100%;
            }
        #log{
            padding:60px 40px;
            margin-top:20px;
            margin-bottom:20px;
            -webkit-box-shadow: 18px 26px 34px 0px rgba(0,0,0,1);
        	-moz-box-shadow: 18px 26px 34px 0px rgba(0,0,0,1);
        	box-shadow: 18px 26px 34px 0px rgba(0,0,0,1);
        	}
       label{
            color: white;
            }
          h1{
            color:black;
            text-align: center;
            font-weight: bolder;
            margin-top: -20px;
            }
       .btn2{
            margin-bottom: 40px;    
            }
    </style>
    
    </head>
    <body ng-app="">
            <div class="container-fluid bg ">
                    <div class="row">
                        <div class="col-md-4 col-sm-2 col-xs-12"></div>
                        <div class="col-md-4 col-sm-8 col-xs-12">

                                <div class="registerform">
                                        
                                        <form action="SignupServlet" method="POST" name="sin" id="log" >
                                                <h1>SIGNUP FORM</h1>
                                                <div class="form-group">
                                                        <label for="name">Name:</label>
                                                        <input type="text" name="name" class="form-control" id="name" ng-model="name"placeholder="Enter your name"required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="email">Email:</label>
                                                    <input type="email" name="mail"class="form-control" id="email" ng-model="email" placeholder="ex:xzy@abc.com" required>
                                                </div>
                                                <div class="form-group">
                                                        <label for="phone">Phone</label>
                                                        <input type="number" name="phone" class="form-control" id="phone" ng-model="phone" placeholder="Enter phone number" required>
                                                </div>
                                                <%
                                                    String status = (String) request.getAttribute("status");
                                                        		if(status != null){
                                                 %>
                                                 
                                                 <script>
                                                          swal("OOPs!", "password doesnot match!", "error");                            
                                                 </script>
                                                 <%} %>
                                                 <div class="form-group">
                                                    <label for="pass">password:</label>
                                                    <input type="password" name="pass" class="form-control" id="pass" ng-model="pass" placeholder="password" required>
                                                 </div>
                                                 
                                                 <div class="form-group">
                                                        <label for="cpass">Confirm password:</label>
                                                        <input type="password" name="cpass" class="form-control" id="cpass" ng-model="cpass" placeholder="password" required>
                                                 </div>
                                                 <button type="submit" class="btn btn-primary btn1" value="submit">Sign in</button>
                                                 <style>
                                                   .btn1{
                                                        text-align: center;
                                                        padding-left:20px;
                                                        margin-left: 100px;
                                                        margin-bottom: 10px;
                                                        }
                                                 </style>
                                            </form>
                                           <!--  <button type="submit" class="btn btn-success btn-block" value="submit" onclick="submit()">Signup</button> -->
                                  </div>
                            </div>
                        <div class="col-md-4 col-sm-2 col-xs-12"></div>
                    </div>
                </div>
        
    </body>
    </html>