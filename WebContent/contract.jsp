<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
<script defer src="libs/js/all.js"></script>
<link href="https://fonts.googleapis.com/css?family=Jacques+Francois+Shadow&display=swap" rel="stylesheet">

</head>
<body>
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
                <style>
        body{
          margin: 0;
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

        .hdiv{
                    margin-top: 10px;
                    margin-bottom: 10px;
                    min-height: 220px;
                    padding-top: 33px;
                    padding-bottom: 20px;
                    text-align: center;
                    width: 100%;
                    
                    }
         h1{
                    margin: 0 auto;
                    padding:10px 10px;     
                    font-family: 'Jacques Francois Shadow', cursive;
                    font-size: 90px;
                    color:black; 
                    -webkit-box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
-moz-box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
                }
                @media(max-width:992px) {
                  h1{
                    margin-top: 20px;
                    padding-bottom:30px;
                    font-family: 'Jacques Francois Shadow', cursive;
                    font-size: 70px;
                    color:black; 
                    -webkit-box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
-moz-box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);  
                  }
                  }   
                    @media(max-width:768px) {
                  h1{
                    margin-top: 20px;
                    padding:30px 30px;
                    font-family: 'Jacques Francois Shadow', cursive;
                    font-size: 50px;
                    color:black; 
                    -webkit-box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
-moz-box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
                    }

                }
                @media(max-width:576px) {
                    h1{
                    margin-top: 20px;
                    padding:30px 30px;
                    font-family: 'Jacques Francois Shadow', cursive;
                    font-size: 40px;
                    color:black; 
                    -webkit-box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
-moz-box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
                    }
                        
                    }
                    .tdiv{
                      color: black;
                    }
                    .adiv{
                      color:blue;
                    }
                    .row{
                      padding: 10px;
                    }
                    .row img{
                      width: 75%;
                      height: 250px;
                      border: 4px solid grey;
                      border-radius: 10%;
                    }
                    .adiv li{
                      padding-top: 18px;
                      font-size: 20px;
                      font-family: 'Poppins', sans-serif;
                    }
                    .tdiv p{
                      text-align: left;
                      font-family: 'Poppins', sans-serif;
                    }
                    .tdiv button{
                      width:75%;
                    }
                    .tdiv button:hover{
                      background-color: green;
                    }
                    @media (max-width:576px){
                      .row img{
                        margin-left: 50px;
                      width: 75%;
                      height: 250px;
                      border: 4px solid grey;
                      border-radius: 10%;
                    }
                    .adiv li{
                      margin-left: 40px;
                      padding-top: 18px;
                      font-size: 15px;
                      font-family: 'Poppins', sans-serif;
                    }
                    }
                    .col-12{
                      padding: 10px;
                      text-align: center;
                      color: black;
                      font-weight: 100;
                      font-family: 'Poppins', sans-serif;
                      font-size: 20px;
                  }
      </style>
     <div class="container">
       <div class="row">
         <div class="col-12">
           <div class="hdiv">
             <h1>CONTRACTOR</h1>
           </div>
         </div>
       </div>
       <div class="row">
        <div class="col-12">
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quo illo vel necessitatibus non quod! Sequi repudiandae a hic, id, autem dolorem in accusamus provident vero amet at odio placeat nisi iusto. Ab optio tenetur autem, inventore earum dignissimos iusto quisquam consequatur sunt illo quibusdam odio non quae modi, libero, ea amet iste harum esse aliquid officiis consequuntur reprehenderit? Quidem eum quam atque vel odit qui consectetur quia alias quis totam beatae fugiat ipsa nostrum non culpa quae voluptate eos numquam possimus, fuga dolore doloremque illo eveniet tempore. Delectus ratione corrupti, cupiditate possimus, rem odit a non fugiat adipisci quidem repudiandae.</p>
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