<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>COMPANY</title>
    <link rel="stylesheet" href="index1.css">
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
                    box-shadow: 8px 8px 15px brown;
                    background-image: url('imgs/12.jpg' ) ;
                    width: 100%;
                    }
         h1{
                    margin: 0 auto;
                    padding:10px 10px;     
                    font-family: 'Jacques Francois Shadow', cursive;
                    font-size: 90px;
                    color:white; 
                  
                }
                .cdiv{
                    padding: 20px;
                    border: 2px solid gray; 
                }
                .cdiv p{
                    background-color: brown;
                    text-align: justify;
                    font-family: 'Poppins', sans-serif;
                    font-size: 20px;
                    box-shadow: 5px 5px 10px blue;
                }
                
                @media(max-width:992px) {
                  h1{
                    margin-top: 20px;
                    padding-bottom:30px;
                    font-family: 'Jacques Francois Shadow', cursive;
                    font-size: 70px;
                    color:white; 
                    }
                  }   
                    @media(max-width:768px) {
                  h1{
                    margin-top: 20px;
                    padding:30px 30px;
                    font-family: 'Jacques Francois Shadow', cursive;
                    font-size: 50px;
                    color:white; 
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
                <h1>About Company</h1>
              </div>
            </div>
          </div>
          <div class="row">
            
            <div class="col-12">
                <div class="cdiv">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit earum dolorem, excepturi, placeat provident voluptates fugiat architecto odio cum alias laborum explicabo cumque nemo aliquam adipisci exercitationem impedit sequi. A, quas dolor. Similique, quae? Aut dolore quibusdam aperiam in ipsam est similique voluptatem aliquam aliquid enim fugit amet, rerum perferendis, veritatis hic earum nam ea ratione? Quis, nobis doloremque! Accusantium corrupti deleniti quidem quae dicta earum iure nemo assumenda accusamus, similique dignissimos. Quo et commodi in quasi aperiam asperiores ducimus sit deserunt veritatis nostrum nobis optio dignissimos exercitationem nemo hic, totam dolore beatae vel? Blanditiis, iusto cumque ipsum, vero inventore quidem quibusdam ratione minus facere nesciunt maxime incidunt quasi maiores sint vitae exercitationem soluta, iste sequi ullam quia dicta. Saepe quo ullam vitae debitis odio quisquam, hic ex cumque recusandae voluptatibus consequuntur facilis culpa sit ipsam autem blanditiis dolor facere a sed quis excepturi enim! Placeat corporis quisquam facere enim accusantium unde autem odio aliquam minus? Quisquam quo quod quam? Culpa at libero iusto incidunt cupiditate iure fuga nesciunt blanditiis temporibus perferendis dignissimos velit veniam, vel vero labore autem. Laudantium accusamus illum sequi? Dicta aut aliquid, eaque aspernatur, facilis modi cumque magni fugiat asperiores similique optio, incidunt iure eligendi error culpa aliquam rerum delectus vel eius impedit. Sit est molestias vitae modi repudiandae provident architecto, voluptas quasi voluptate, natus neque eum illum dignissimos vel aliquid nemo! Omnis non tempore nostrum culpa enim facere, asperiores modi eaque alias laborum vel, ut at minima sequi rerum quisquam. Veritatis, molestiae illum atque nesciunt perferendis earum minima illo corrupti ea vel saepe harum similique placeat quisquam autem cum exercitationem iure sunt a, consequatur eveniet nihil? Error hic velit architecto perspiciatis soluta quibusdam alias consectetur quod deserunt vero est, deleniti tempora consequatur fugit tenetur iste animi, aut facilis cum qui reprehenderit quasi facere non labore! Temporibus qui iste commodi, accusamus eos necessitatibus maiores labore dolor laboriosam quasi neque nesciunt quia voluptates iusto dolorem sapiente ratione? Repellendus aspernatur ab modi. Adipisci id est eveniet ut rerum blanditiis, reiciendis aliquid vitae itaque nostrum. Maiores ipsa cumque quae provident beatae soluta voluptas dignissimos culpa asperiores quam tempore necessitatibus magnam, quos reiciendis cupiditate molestiae aliquid voluptates velit atque tenetur nostrum. Debitis, assumenda! Officia velit quasi necessitatibus nostrum porro fugiat, natus ipsa cumque tempore sint vitae? Hic maiores officia iste illum dolorum. Cumque error voluptas est aliquid eveniet facere harum neque repudiandae facilis perferendis totam fuga sapiente eos vel labore dolores quaerat, illo aspernatur tenetur ullam. Asperiores cupiditate ea id eaque quasi. Ullam nisi praesentium atque possimus rem aliquid rerum omnis, asperiores cumque officia accusantium quae maiores optio. Porro repudiandae eum optio, praesentium voluptas officia rerum. Voluptatem beatae unde perspiciatis? Quae autem reprehenderit velit enim ab quis similique natus in optio provident? Ullam nostrum quidem enim assumenda consequatur nulla animi dignissimos quis sunt velit sequi, ea, culpa ratione, cupiditate odit ab necessitatibus alias non qui aperiam amet adipisci nesciunt obcaecati? Nostrum tempora quo id dolorum cum iusto, et ut voluptate tempore? Cum architecto iusto omnis illo enim officia aliquid? Labore.</p>
                </div>
            </div>
          </div>
      </div>
      <footer class="page-footer">
		
    	<div class="row">
    	<div class="col-lg-3"></div>
        <div class="col-lg-3">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.0704633933055!2d77.53427894977794!3d12.967342890813756!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae3dde41c9d541%3A0xdd5400ac1d9e0a9a!2sNIIT+Bangalore+Vijayanagar+Centre!5e0!3m2!1sen!2sin!4v1564729064738!5m2!1sen!2sin" width="300" height="200" frameborder="0" style="border:0" allowfullscreen></iframe>    
        </div>
        <div class="col-lg-3">
        	<p>Maruti Arcade, Door No. 2948,<br> 3rd Floor,<br> Magadi Chord Rd,<br> Above Karnataka bank,<br> Hosahalli Extension,<br> Vijayanagar,<br> Bengaluru,<br> Karnataka 560040</p>
        </div>
        <div class="col-lg-3"></div>
      	</div>
      
      </footer>
  
      
</body>
</html>