<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bearer.aspx.cs" Inherits="DemoProject.Bearer" %>

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
        <div class="container-fluid" style="margin-top:130px;">           
            <br />
            <span></span>
            
            <div class="row">
                <div class="col-md-1 col-sm-4 col-xs-1 12"></div>
                <div class="col-md-4 col-sm-4 col-xs-1 12">
                     <center><h3><strong>Bearer Details</strong></h3></center><br />
                    <div class="form-group">                        
                        <asp:TextBox ID="Txtaccno" runat="server" CssClass="form-control" placeholder="Enter Account Number"></asp:TextBox>
                    </div>
                    <div class="form-group">                        
                        <asp:TextBox ID="ph" runat="server" CssClass="form-control" placeholder="Enter Phone Number" TextMode="Phone"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary btn-lg btn-block" OnClick="Button1_Click" />
                    </div>
                </div>
                <div class="col-md-6">
                    <img src="Images/undraw_wallet_aym5.png" width="600"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
