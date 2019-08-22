<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
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
<%
HttpSession s=request.getSession();
String name=(String)s.getAttribute("name");

%>
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
                      color:black; 
                      -webkit-box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
  -moz-box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
  box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
                  }
                  @media(max-width:992px) {
                    h1{
                      margin-left: 90px ;
                      margin-right: 90px ;
                      text-align: center;
                      padding-bottom:15px;
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
                      text-align: center;
                      margin-left: 90px ;
                      margin-right: 90px ;
                      padding-bottom:15px;
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
                      text-align: center;
                      margin-left: 90px ;
                      margin-right: 90px ;
                      padding-bottom:15px;
                      font-family: 'Jacques Francois Shadow', cursive;
                      font-size: 30px;
                      color:black;
                      -webkit-box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
  -moz-box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
  box-shadow: 27px 32px 24px 17px rgba(0,0,0,0.75);
  
                      }
                      .cdiv img{
                        padding-left: 70px;
                        width:80%;
                      }
                     
                  }
                  .row{
                      padding: 10px;
                  }
                  .col-12{
                      padding: 10px;
                      text-align: center;
                      color: black;
                      font-family: 'Poppins', sans-serif;
                      font-size: 20px;
                  }
                  @media(max-width:992px){
                    .tdiv li{
                      color:black;
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
                   <div class="container-fluid bg" >
            <div class="row">
                <div class="col-12">
                  <div class="hdiv">
                    <h1>MATERIALS</h1>
                  </div>
                </div>
              </div>
              <div class="row">
                  <div class="col-12">
                      <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ratione, cum similique facere quos id atque sit corporis ad, voluptate maiores tenetur assumenda soluta accusantium eligendi inventore possimus eveniet, ullam necessitatibus quo quam error quae perferendis distinctio autem? Commodi incidunt necessitatibus sed ab quas ratione unde beatae, debitis, exercitationem consequatur dolorem, voluptatem pariatur nam veniam totam. Quia deserunt, odio nisi voluptas quidem iure saepe mollitia debitis excepturi laboriosam ipsum cumque aspernatur, totam fuga? Nemo voluptates tenetur voluptas amet officia aliquid ipsa harum eligendi voluptatem libero corporis cupiditate illo sed voluptatibus ut, suscipit ratione quas a dolore itaque minima doloremque? Modi, omnis.</p>
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