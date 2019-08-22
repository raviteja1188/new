<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Forgot Password</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>

        body{
            background-image:url('imgs/b4.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            width: 100%;
            height: 100%;
        }
        h3{
            color: white;
            text-align: center;
            padding-top: 10px;
            margin-bottom: -25px;
        }
        #log{
            padding:60px 50px;
            margin-top: 25%;
            -webkit-box-shadow: 18px 26px 34px 0px rgba(0,0,0,1);
        -moz-box-shadow: 18px 26px 34px 0px rgba(0,0,0,1);
        box-shadow: 18px 26px 34px 0px rgba(0,0,0,1);
        }
        .btn{
            -webkit-box-shadow: 18px 26px 34px 0px rgba(0,0,0,1);
        -moz-box-shadow: 18px 26px 34px 0px rgba(0,0,0,1);
        box-shadow: 18px 26px 34px 0px rgba(0,0,0,1);
        }
        .imge{
            max-width: 100%;
            height: auto;
            width:150px;
            border-radius: 50%;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        label{
                    color: white;
                }
        h1{
            color:white;
            text-align: center;
            font-weight: bolder;
            margin-top: -20px;
        
        }
        @media(max-width:768px){
          h3{
            font-size: 40px;
          }
        }
        </style>
</head>
<body>
        <div class="container-fluid bg">
                <div class="row">
                    <div class="col-md-3 col-sm-3 col-xs-12"></div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <form action="forgotServlet" method="post" id="log">
                            <h1>Forgot Password</h1>
                            <p style="color: white">Enter your email to recover password</p>
                         <%--   <img  class="imge"src="https://media.giphy.com/media/7bRcfzbjrAwBq/giphy.gif" alt="">--%>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" name="email" class="form-control" id="email"placeholder="email" required>
                            </div>
                            
                                <button type="submit" class="btn btn-success btn-block">Submit</button>
                
                                
                        </form>

                    </div>
                    <div class="col-md-3   col-sm-3 col-xs-12"></div>
                </div>
            </div>

</body>
</html>