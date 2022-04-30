<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Options2.aspx.cs" Inherits="DemoProject.Options2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" charset="utf-8"></script>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@562&display=swap" rel="stylesheet">
    <link href="CustomCss/Options2.css" rel="stylesheet" />
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" charset="utf-8"></script>
    <title></title>
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
                <asp:Button ID="Button1" runat="server" Text="Sign Out" class="btn btn-outline-success my-2 my-sm-0" OnClick="Button1_Click" />
            </nav>
        </div>    
        <center><h2 style="color:#30336b;margin-top:120px;">Select Cheque</h2></center>
        <div id="main">
            <div class="contact-info"style="margin-top:100px;">
                <div class="card">
                    <a href="Bearer.aspx"><i class="fas fa-chalkboard-teacher"></i></a>
                    <div class="card-content">
                        <h3>Bearer</h3>
                    </div>
                </div>
                <div class="card">
                    <a href="Order.aspx"><i class="fas fa-money-check"></i></a>
                    <div class="card-content">
                        <h3>Order</h3>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#eb4d4b" fill-opacity="1" d="M0,192L48,176C96,160,192,128,288,144C384,160,480,224,576,250.7C672,277,768,267,864,234.7C960,203,1056,149,1152,106.7C1248,64,1344,32,1392,16L1440,0L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path>xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
  <path fill="#ff7979" fill-opacity="1" d="M0,64L48,74.7C96,85,192,107,288,106.7C384,107,480,85,576,101.3C672,117,768,171,864,208C960,245,1056,267,1152,266.7C1248,267,1344,245,1392,234.7L1440,224L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
</body>
</html>
