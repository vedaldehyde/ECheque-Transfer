<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignupSuccess.aspx.cs" Inherits="DemoProject.SignupSuccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #info{
            display:inline-block; 
        }
        #info h2{
            margin-top:100px;
        }
        #info a{
            padding: 7px;
            border: 1px solid;
            border-radius: 100px;
            justify-content:space-between;

        }
        #a2{
            margin-left:70%;
            text-decoration:none;
        }
        #a1:hover{
            background:#6C63FF;
            color:#fff;
            transition:.1s ease-in;
            text-decoration:none;
        }
        #a2:hover{
            background:#6C63FF;
            color:#fff;
            transition:.1s ease-in;
            text-decoration:none;
        }
        #image1{
            display:inline-block;
            margin-top:100px;
            width:700px;
            
        }
        .first a:hover{
             background: #6C63FF;
             color:#fff;
             text-decoration:none;
             transition: 0.3s;
        }
        
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" charset="utf-8"></script>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@562&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
                <div class="container-xl" style="z-index:-1">
                    <a class="navbar-brand" href="#" style="color: #FFF;">
                        <img src="Images/logo.png" width="50" height="50" />VKS Bank<h3 style="font-size: 13px; font-family: 'Dancing Script', cursive;">Banking Solutions</h3>
                    </a>
                    <div class="collapse navbar-collapse" id="navbarsExample07XL">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="#" style="color: #FFF;"><strong>SignUp</strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" style="color: #FFF;">Contact Us</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" style="color: #FFF;">About Us</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" style="color: #FFF;">Transactions</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div id="content">
            <div id="image1">
                <img src="Images/undraw_completing_6bhr.png" width="700"/>
            </div>
            <div id="info">
                <center><h2 style="color:#6C63FF;">Registered Successfully !!</h2></center><br />
                <h6 style="color:#6C63FF;">You can now experience the further transaction procedure by</h6>
                <h6 style="color:#6C63FF;">simply logging in or know more about our features by redirecting</h6>
                <h6 style="color:#6C63FF;">to our home page</h6><br />
                <a href="Login.aspx" id="a1">Login</a>
                <a href="Home.aspx" id="a2">Home</a>
            </div>
        </div>
    </form>
</body>
</html>
