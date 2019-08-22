<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>post material</title>
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
      margin:0;
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
.btn{
	margin: 10px;
}
    </style>

<div class="container">
                <div class="row">
                  <div class="col-lg-3">

                  </div>
                  <div class="col-lg-6">
                    <form action="Materials" method="POST">
                      <div class="form-row">
                        <div class="form-group col-md-6">
                          <label for="name">Category</label>
                          <select class="input-block-level" name="category">
                    <option>Bricks</option>
                    <option>Cement</option>
                    <option>Metals</option>
                    <option>Sand</option>
                    <option>Marbles</option>
                    <option>Wires</option>
                    <option>Wood</option>
                    
                  </select>
                        </div>
                        <div class="form-group col-md-12" name="mtype">
                          <label for="mtype">Material Type</label>
                          <input type="text" class="form-control" name="mtype" id="Material Type" placeholder="Material Type" required>
                        </div>
                        <div class="form-group col-md-12" name="quantity">
                        <label for="quantity">Quantity</label>
                        <input type="number" class="form-control" name="quantity" id="Quantity" placeholder="001" required>
                        </div>
                      </div>
                      <div class="form-row">
                      <div class="form-group col-md-12" name="phone">
                        <label for="phone">Phone Number</label>
                        <input type="number" class="form-control"name="phone" id="phone" placeholder="88620815582" required>
                      </div>
                      </div> 
                      <div class="form-group col-md-12" name="phone">
                        <label for="phone">Add Image Url</label>
                        <input type="text" class="form-control"name="image" id="image" placeholder="Url" required>
                      </div>
                      <center>
                      <button type="submit" class="btn btn-primary">submit</button>
                      </center>
                      </form>
                      <center>
                       <a href="materialup.jsp"><button class="btn btn-primary">update</button></a>
                      </center>
                      </div> 
                      
                 
                
                  <div class="col-lg-3">
                  </div>
                </div>
         </div>
</body>
</html>