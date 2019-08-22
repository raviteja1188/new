<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>TEAM</title>
    <link rel="stylesheet" href="index1.css">
    <link rel="stylesheet" href="libs/css/about.css">
    <link rel="stylesheet" href="libs/css/hover.css">
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
</head>
<body>
<%
HttpSession s=request.getSession();
String name=(String)s.getAttribute("name");

%>
    <style>
       body{
         padding: 0;
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
                    box-shadow: 4px 4px 10px gray;
                    background-image: url('imgs/12.jpg' ) ;
                    width: 100%;
                    }
                    h1{
                    margin: 0 auto;
                    padding:10px 10px;     
                    font-family: 'Jacques Francois Shadow', cursive;
                    font-size: 90px;
                    color:black; 
                  
                }
                .row{
                  padding: 10px;
                  margin: 0;
                }
                .cdiv img{
                  padding-left:40px;
                  width: 70%;
                  height:250px;
                }
                .tdiv p{
                  padding: 2px;
                  font-size: 20px;
                  text-align: center;
                  color: black;
                  font-family: 'Poppins', sans-serif;
                }
                @media (max-width:992px){
                  .cdiv img{
                  padding-left:180px;
                  width: 70%;
                  height:250px;
                }
                .tdiv p{
                  padding: 2px;
                  padding-right: 40px;
                  font-size: 16px;
                  text-align: center;
                  color: black;
                  font-family: 'Poppins', sans-serif;
                }
                }
                @media (max-width:768px)
                {
                  h1{
                    margin: 0 auto;
                    padding:30px 30px;     
                    font-family: 'Jacques Francois Shadow', cursive;
                    font-size: 60px;
                    color:black; 
                  
                }
                .cdiv img{
                  padding-left:90px;
                  width: 70%;
                  height:250px;
                }
                }
        </style>
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
      <div class="col-12">
        <div class="hdiv">
          <h1>About Team</h1>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-6">
        <div class="cdiv">
           <img src="imgs/t1.jpg" alt="">
        </div>
      </div>
      <div class="col-lg-6">
         <div class="tdiv">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae illo inventore, magnam, optio autem ex repellendus voluptates consequatur eum aut, rem sed. Repellat ad iste perspiciatis officiis enim ratione similique provident excepturi maiores eum delectus, mollitia aliquam esse ab rerum dolore ipsum rem non possimus nisi optio ea sapiente corrupti.</p>    
        </div>
       </div>  
    </div>
    <div class="row">
      <div class="col-lg-6">
        <div class="cdiv">
           <img src="imgs/t2.jpg" alt="">
        </div>
      </div>
      <div class="col-lg-6">
         <div class="tdiv">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae illo inventore, magnam, optio autem ex repellendus voluptates consequatur eum aut, rem sed. Repellat ad iste perspiciatis officiis enim ratione similique provident excepturi maiores eum delectus, mollitia aliquam esse ab rerum dolore ipsum rem non possimus nisi optio ea sapiente corrupti.</p>    
        </div>
       </div>  
    </div>
    <div class="row">
      <div class="col-lg-6">
        <div class="cdiv">
           <img src="imgs/t3.jpg" alt="">
        </div>
      </div>
      <div class="col-lg-6">
         <div class="tdiv">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae illo inventore, magnam, optio autem ex repellendus voluptates consequatur eum aut, rem sed. Repellat ad iste perspiciatis officiis enim ratione similique provident excepturi maiores eum delectus, mollitia aliquam esse ab rerum dolore ipsum rem non possimus nisi optio ea sapiente corrupti.</p>    
        </div>
       </div>  
    </div>
    <div class="row">
      <div class="col-lg-6">
        <div class="cdiv">
           <img src="imgs/t4.jpg" alt="">
        </div>
      </div>
      <div class="col-lg-6">
         <div class="tdiv">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae illo inventore, magnam, optio autem ex repellendus voluptates consequatur eum aut, rem sed. Repellat ad iste perspiciatis officiis enim ratione similique provident excepturi maiores eum delectus, mollitia aliquam esse ab rerum dolore ipsum rem non possimus nisi optio ea sapiente corrupti.</p>    
        </div>
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