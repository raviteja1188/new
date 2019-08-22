<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.*,com.nirman.material.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MATERIAL</title>
   
    <link rel="stylesheet" href="libs/css/about.css">
    <link rel="stylesheet" href="libs/css/hover.css">
    <link rel="stylesheet" href="libs/css/animate.css">
    <link rel="stylesheet" href="libs/css/hover-min.css">
    <link href="css/hover-min.css" rel="stylesheet" media="all">
    <link href="css/hover.css" rel="stylesheet" media="all">
    <link href="libs/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
<script defer src="libs/js/all.js"></script>
<link href="https://fonts.googleapis.com/css?family=Jacques+Francois+Shadow&display=swap" rel="stylesheet">
<script src="libs/js/wow.min.js"></script>
</head>
<body>
        <script>
                new WOW().init();
                </script>
    <style>
      body{
        background-image: url('');
        width: 100%;
        height: 100%;
        background-size: cover;
        margin-right: 0px;
        background-attachment: fixed;
      }
      .navbar{
    padding: .8rem;
}
.navbar-brand img{
    border-top-left-radius: 20%;
    border-bottom-right-radius: 20%;
    border: 10px double #5D6D7E;
}
.navbar-nav li{
    padding-right: 20px;  
}
.nav-link {
    font-size: 1.1em !important;
}

      .lg{
                    margin-top: 10px;
                    
                   
                    text-align: center;
                   
                    width: 100%;
                   
                    }
         h1{
             text-align: center;
                    margin-left: 90px ;
                    margin-right: 90px ;
                    padding:10px 10px;     
                    font-family: 'Jacques Francois Shadow', cursive;
                    font-size: 80px;
                    color:black; 
                   
                }
                @media(max-width:992px) {
                  h1{
                    margin-left: 90px ;
                    margin-right: 90px ;
                    text-align: center;
                    padding-bottom:15px;
                    font-family: 'Jacques Francois Shadow', cursive;
                    font-size: 80px;
                    color:black;
                    }
                    
                  }  
                  @media(max-width:768px) {
                  h1{
                    text-align: center;
                    margin-top: 20px ;
                    margin-left: 90px ;
                    margin-right: 90px ;
                    padding-bottom:15px;
                    font-family: 'Jacques Francois Shadow', cursive;
                    font-size: 60px;
                    color:black;
                    }
                  
                } 
                @media(max-width:576px) {
                  h1{
                    text-align: center;margin-top: 30px ;

                    margin-left: 90px ;
                    margin-right: 90px ;
                    padding-bottom:50px;
                    font-family: 'Jacques Francois Shadow', cursive;
                    font-size: 40px;
                    color:black;
                    }
                    .cdiv img{
                      padding-left: 70px;
                      width:80%;
                    }
                   
                }
              
                .cdiv p{
                    text-align: center;
                    font-size: 15px;
                    color: white;
                    font-family: 'Poppins', sans-serif;
                }
                .tdiv h2{
                    color:white;
                    font-size: 40px;
                    font-family: 'Poppins', sans-serif;
                    text-align: center;
                }
                .tdiv li{
                    color:white;
                    font-size: 20px;
                    font-family: 'Poppins', sans-serif;
                }
               
                @media(max-width:992px){
                  .tdiv li{
                    color:white;
                    font-size: 15px;
                    font-family: 'Poppins', sans-serif;
                }
                   
                }
                @media(max-width:768px){
                  .tdiv li{
                    color:white;
                    font-size: 13px;
                    font-family: 'Poppins', sans-serif;
                }
                   
                }
                @media(max-width:576px){
                  .tdiv li{
                    color:white;
                    font-size: 15px;
                    font-family: 'Poppins', sans-serif;
                }
                   
                }
                .card{
                width:300px;
                height:500px;
                float:left;
                margin:10px;
                }
                .card img{
                width:100%;
                height:30%;
                }
                .card-body{
                	height:50%;
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
<%
List<MaterialModel> mm = (List<MaterialModel>) request.getAttribute("data");

%>
      
         <%
         for(MaterialModel u:mm){
         %>      
                       <div class="card">
                      <img class="card-img-top" src="<%= u.getImage() %>" alt="Card image cap">
                      <div class="card-body">
                        <h5 class="card-title"><%=u.getCategory() %></h5>
                       
                        <ul>
    						<li>Name: <%=u.getCategory() %></li>
    						<li>Availiability: <%= u.getQuantity() %></li>
                        </ul>
                        <form action="materialup" method="POST">
                      <div class="form-row">
                       
                        <div class="form-group col-md-12" name="mtype">
                          <label for="mtype">Material Type</label>
                          <input type="text" class="form-control" name="mtype" id="Material Type" placeholder="Material Type" required>
                        </div>
                        <div class="form-group col-md-12" name="quantity">
                        <label for="quantity">Quantity</label>
                        <input type="number" class="form-control" name="quantity" id="Quantity" placeholder="001" required>
                        </div>
                      </div>
                      <a href="successpay.jsp"><button class="btn btn-primary">buy</button></a>
                      </div> 
                     
                  </form>
                        
                    </div>
                    </div>
             
      
                <%} %>

  
                   
</body>
</html>