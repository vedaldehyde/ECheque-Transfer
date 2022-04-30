<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Options.aspx.cs" Inherits="DemoProject.Options" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" charset="utf-8"></script>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@562&display=swap" rel="stylesheet">
    <link href="CustomCss/Options.css" rel="stylesheet" />
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
        <center><h2 style="margin-top:150px;color:#30336b">Select Cheque Mode</h2></center>
        <div id="main">
            <div class="contact-info">
                <div class="card">
                    <a href="Sender.aspx"><i class="icon fas fa-share"></i></a>
                    <div class="card-content">
                        <h3>Transfer</h3>
                    </div>
                </div>
                <div class="card">
                    <a href="Options2.aspx"><i class="icon fas fa-undo"></i></a>
                    <div class="card-content">
                        <h3>Recieve</h3>
                    </div>
                </div>
            </div>
        </div>
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#00a8ff" fill-opacity="0.5" d="M0,0L60,10.7C120,21,240,43,360,69.3C480,96,600,128,720,154.7C840,181,960,203,1080,181.3C1200,160,1320,96,1380,64L1440,32L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path>xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
  <path fill="#686de0" fill-opacity="0.5" d="M0,128L60,128C120,128,240,128,360,106.7C480,85,600,43,720,42.7C840,43,960,85,1080,85.3C1200,85,1320,43,1380,21.3L1440,0L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path></svg>
    </form>
</body>
</html>
