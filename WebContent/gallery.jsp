<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>GALLERY</title>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
<script defer src="libs/js/all.js"></script>
<link href="https://fonts.googleapis.com/css?family=Jacques+Francois+Shadow&display=swap" rel="stylesheet">

</head>
<body><%
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
     
        width: 100%;
        height: 100%;
        background-size: cover;
        margin-right: 0px;
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
                    min-height: 220px;
                    padding-top: 33px;
                    padding-bottom: 20px;
                    text-align: center;
                   
                    width: 100%;

                    }
         h1{
                    margin-left: 90px ;
                    margin-right: 90px ;
                    padding:10px 10px;     
                    font-family: 'Jacques Francois Shadow', cursive;
                    font-size: 80px;
                    box-shadow: 20px 20px 20px black;
                }
                .cdiv{
                    margin: 2px;
                    min-height: 220px;
                   
                    text-align: center;
                }
                @media(max-width:576px) {
                    h1{
                    margin-top: 20px;
                    padding:30px 30px;
                    font-family: 'Jacques Francois Shadow', cursive;
                    font-size: 55px;
                    }
                       .i2{
                         width:80%; 
                       } 
                       .i4{
                         width:80%; 
                       } 
                       .i6{
                         width:80%;
                         height: 100% 
                       } 
                       .i7{
                         width:80%; 
                       } 
                       .i8{
                         width:80%; 
                       } 
                    }
                    
            </style>
            <div class="container-fluid bg">
                <div class="row">
                    <div class="col-12">
                        <div class="hdiv">
                            <h1>Gallery</h1>
                        </div>

                    </div>
                </div>
                <div class="row">
                        <div class=" col-lg-3 col-md-4 col-xs-3 col-sm-6 image-responsive">
                                <div class="cdiv">
                                    <img src="https://i2-prod.football.london/incoming/article15338602.ece/ALTERNATES/s1227b/0_New-Spurs-stadium-2710-33.jpg" width="80%" alt="">
                                </div>
                            </div>
                                <div class=" col-lg-3 col-md-4 col-xs-3 col-sm-6">
                                        <div class="cdiv">
                                            <img class="i2" src="https://cdn2.newsok.biz/cache/large960_blur-485b9d040619f8a012370893e1db72a8.jpg" width="100%" alt="">
                                        </div>
                
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-xs-3 col-sm-6 ">
                                            <div class="cdiv">
                                                <img src="https://media-cdn.tripadvisor.com/media/photo-s/0e/1a/90/78/i-thought-this-was-a.jpg" width="80%" alt="">
                                            </div>
                    
                                        </div>
                                        <div class="col-lg-3 col-md-12 col-xs-3 col-sm-6">
                                                <div class="cdiv">
                                                    <img  class="i4" src="https://en.qantara.de/sites/default/files/styles/slideshow_wide/public/uploads/2015/06/19/1foreign-worker-construction-site-doha-picture-alliance-dpa-b-von-jutrczenka_0.jpg?itok=C-lhwSjj" width="100%" height="100%" alt="">
                                                </div>
                                            </div>
                </div>
                <div class="row">
                  <div class=" col-lg-3 col-md-4 col-xs-3 col-sm-6 image-responsive">
                          <div class="cdiv">
                              <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAlq8hr09I5GY8E3ukD9g0UATHcRkL8oWXPwmOR8KdyMZoMWhsxQ" width="80%" alt="">
                          </div>
                      </div>
                          <div class=" col-lg-3 col-md-4 col-xs-3 col-sm-6">
                                  <div class="cdiv">
                                      <img class="i6" src="http://www.stewart.ie/new/wp-content/uploads/bms-recognition-1024x768.jpg" width="100%" height="180px" alt="">
                                  </div>
          
                              </div>
                              <div class="col-lg-3 col-md-4 col-xs-3 col-sm-6 ">
                                      <div class="cdiv">
                                          <img class="i7" src="https://freesofiatour.com/wp-content/uploads/2019/02/most-beautiful-buildings-in-Sofia.jpg" width="100%" alt="">
                                      </div>
              
                                  </div>
                                  <div class="col-lg-3 col-md-12 col-xs-3 col-sm-6">
                                          <div class="cdiv">
                                              <img class="i8" src="https://structuralbuildings.com/wp-content/uploads/2015/10/Structural-Buildings-Becker-Mn-Ppst-frame-residential-garage-Annadale-Mn.jpg" width="100%" height="100%" alt="">
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