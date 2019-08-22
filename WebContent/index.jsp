<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="libs/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
<script defer src="libs/js/all.js"></script>
<style>
  html,body{
    height: 100%;
    width: 100%;
    font-family: 'Poppins', sans-serif;
    color: #222;
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
.dropdown-menu a:hover{
    background-color: #000;
    color: #00aced;
}
.carousel-inner img{
    width: 100%;
    height: 100%;
}
.carousel-caption h1{
    font-size: 500%;
    text-transform: uppercase;
    text-shadow: 1px 1px 15px #000;
}
.carousel-caption h3{
    font-size: 200%;
    font-weight: 500;
    text-shadow: 1px 1px 10px #000;
}
.jambotron{
    padding: 1rem;
    border-radius: 0;
}
.padding{
    padding-bottom: 2rem;
}
.welcome{
    width: 75%;
    margin: 0 auto;
    padding-top: 2rem;
}
.welcome hr{
    border-top: 5px solid gold;
    width: 95%;
    margin-top:.3rem;
    margin-bottom: 1rem;
}
.social a{
    font-size: 4.5em;
    padding: 3rem;
}
.fa-facebook{
    color: #3b5998;
}
.fa-twitter{
    color: #00aced;
}
.fa-google-plus-g{
    color: #dd4b39;
}
.fa-youtube{
    color: #bb0000;
}
.fa-instagram{
    color: #517fa4;
}
.fa-facebook:hover,
.fa-twitter:hover,
.fa-google-plus-g:hover,
.fa-youtube:hover,
.fa-instagram:hover{
    color: #d5d5d5;
}
@media (max-width: 992px)
{
    .social a{
        font-size: 4em;
        padding: 2rem;
    }
}
@media (max-width: 768px)
{
    .carousel-caption{
        top: 40%;
    }
    .carousel-caption h1{
        font-size: 350%;
    }
    .carousel-caption h3{
        font-size: 140%;
        font-weight: 400;
        padding-bottom: .2rem; 
    }
    .carousel-caption .btn{
        font-size: 95%;
        padding: 8px 14px;
    }
    .display-4 {
        font-size: 100%;
    }
    .social a{
        font-size: 2.5em;
        padding: 1.2rem;
    }
    .welcome hr{
        border-top: 5px solid rgb(55, 0, 255);
        width: 95%;
    }
}
@media (max-width: 576px){
    .carousel-caption{
        top: 45%;
    }
    .carousel-caption h1{
        font-size: 250%;
    }
    .carousel-caption h3{
        font-size: 110%;
         
    }
    .carousel-caption .btn{
        font-size: 90%;
        padding: 4px 8px;
    }
    .carousel-indicators{
        display: none;
    }
    .display-4{
        font-size: 160;
    }
    .social a{
        font-size: 2em;
        padding: .7rem;
    }
    
}

</style>
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
              <div id="slides" class="carousel slide" data-ride="carousel">
<ul class="carousel-indicators">
  <li data-target="#slides" data-slide-to="0" class="active"></li>
  <li data-target="#slides" data-slide-to="1"></li>
  <li data-target="#slides" data-slide-to="2"></li>
</ul>
<div class="carousel-inner">
  <div class="carousel-item active">
    <style>
      .carousel-caption{
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
    }
      </style>
    <img src="imgs/11.jpeg">
    <div class="carousel-caption">
      <h1 class="display-2">Nirmann</h1>
      <h3>We care for you</h3>
      <button type="button" class="btn btn-outline-light btn-lg">Welcome</button>
      <style>
          .btn-primary{
            background-color: #6648b1;
            border: 5px solid #6648b1;
          }
          .btn-primary:hover{
            background-color: #563d7c;
            border: 5px solid #563d7c;
          }
        </style>
     <a href="#"><button type="button" class="btn btn-primary btn-lg">Get Started</button></a> 
    </div>
  </div>
  <div class="carousel-item">
    <img src="imgs/12.jpg" alt="">
  </div>
  <div class="carousel-item">
    <style>
      @media (max-width: 576px){
        .carousel-indicators{
        display: none;
    }
      }
      </style>
    <img src="imgs/13.jpg" alt="">
  </div>
</div>
</div>
              
                       
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
              <div id="slides" class="carousel slide" data-ride="carousel">
<ul class="carousel-indicators">
  <li data-target="#slides" data-slide-to="0" class="active"></li>
  <li data-target="#slides" data-slide-to="1"></li>
  <li data-target="#slides" data-slide-to="2"></li>
</ul>
<div class="carousel-inner">
  <div class="carousel-item active">
    <style>
      .carousel-caption{
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
    }
      </style>
    <img src="imgs/11.jpeg">
    <div class="carousel-caption">
      <h1 class="display-2">Nirmann</h1>
      <h3>We care for you</h3>
      <button type="button" class="btn btn-outline-light btn-lg">Welcome</button>
      <style>
          .btn-primary{
            background-color: #6648b1;
            border: 5px solid #6648b1;
          }
          .btn-primary:hover{
            background-color: #563d7c;
            border: 5px solid #563d7c;
          }
        </style>
     <a href="signup.jsp"><button type="button" class="btn btn-primary btn-lg">Get Started</button></a> 
    </div>
  </div>
  <div class="carousel-item">
    <img src="imgs/12.jpg" alt="">
  </div>
  <div class="carousel-item">
    <style>
      @media (max-width: 576px){
        .carousel-indicators{
        display: none;
    }
      }
      </style>
    <img src="imgs/13.jpg" alt="">
  </div>
</div>
</div>
              
                       
           <%} %> 


<div class="container-fluid">
  <div class="row jumbotron" style="padding: 1rem; border-radius:0;">
    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 col-xl-10"></div>
    <p class="lead">AT HELM, WE WORK WITH OWNERS, DESIGNERS AND BUILDERS TO CREATE HIGH PERFORMANCE AND SUSTAINABLE BUILDINGS AND BUSINESSES.</p>
  </div>
</div>


<div class="container-fluid padding">
  <div class="row welcome text-center" style="width: 75%;margin: 0 auto;padding-top: 2rem;">
    <div class="col-12">
      <style>
        @media (max-width: 768px){
          .display-4 {
        font-size: 250%;
    }
        }
        
        
        </style>
        <h1 class="display-4">Services.</h1>
    </div>
    <hr>
    <div class="col-12">
      <p class="lead">AT HELM, WE WORK WITH OWNERS, DESIGNERS AND BUILDERS TO CREATE HIGH PERFORMANCE AND SUSTAINABLE BUILDINGS AND BUSINESSES.</p>
    </div>
  </div>
</div>

<div class="container-fluid padding">
  <div class="row text-center padding">
    <div class="col-xs-12 col-sm-6 col-md-4">
      <img src="imgs/4.jpg" alt="" style="border: 3px solid black;">
      <h3>CONTRACTORS</h3>
        <p>aajhasncshajb ahdbacj wadba jhda</p>
    </div>
    <div class="col-xs-12 col-sm-6 col-md-4">
        <img src="imgs/3.jpg" alt="" style="border: 3px solid black;">
        <h3>MATERIALS</h3>
        <p>aajhasncshajb ahdbacj wadba jhda</p>
      </div>
      <div class="col-sm-12 col-md-4">
          <img src="imgs/2.jpg" alt="" style="border: 3px solid black;">
          <h3>REPAIRS</h3>
          <p>aajhasncshajb ahdbacj wadba jhda</p>
        </div>
  </div>
  <hr class="my-4">
</div>
<hr class="my-4">

<div class="container-fluid padding">
  <div class="row text-center padding">
    <div class="col-12">
      <h2>Connect</h2>
    </div>
    <div class="col-12 social padding">
      <a href="www.facebook.com"><i class="fab fa-facebook"></i></a>
      <a href="www.twitter.com"><i class="fab fa-twitter"></i></a>
      <a href="www.googleplus.com"><i class="fab fa-google-plus-g"></i></a>
      <a href="www.youtube.com"><i class="fab fa-youtube"></i></a>
      <a href="www.instagram.com"><i class="fab fa-instagram"></i></a>
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
      color:black;  
    }
  </style>

</body>
</html>