<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OtpVal.aspx.cs" Inherits="DemoProject.OtpVal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" charset="utf-8"></script>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@562&display=swap" rel="stylesheet">
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
                <asp:Button ID="Button2" runat="server" Text="Sign Out" class="btn btn-outline-success my-2 my-sm-0" OnClick="Button2_Click" />
            </nav>
        </div>
        <div id="content">
            <div id="image1">
               
            </div>
            <div id="info">
                <center><h2 style="color:#52B2B7;">Verify Otp</h2></center><br />
                 <div class="container">
                     <div class="row" style="margin-top:100px;">
                         <div class="col-md-8">
                             <img src="Images/undraw_mobile_pay_9abj.png" width="500"/>
                         </div>                       
                         <div class="col-md-4">
                             <center><h2>Verify otp</h2></center><br />
                             <asp:TextBox ID="txtotp" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                             <p>This otp is only valid for 15 minutes</p><br />
                             <asp:Button ID="Button1" runat="server" Text="Verify" class="btn btn-primary btn-lg btn-block" OnClick="Button1_Click"/>
                         </div>
                     </div>
                 </div>
            </div>
        </div>
    </form>
  

    
</body>
</html>
