<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="DemoProject.Order" %>

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
                <div class="col-md-1">                  
                </div>
                <div class="col-md-4">
                    <center><h3><strong>Order Details</strong></h3></center><br />
                    <div class="form-group">                   
                        <asp:TextBox ID="Txtacc" runat="server" CssClass="form-control" placeholder="Enter account number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Account no required" ControlToValidate="Txtacc" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="ph" runat="server" CssClass="form-control" TextMode="Phone" placeholder="Enter phone number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Phone no required" ControlToValidate="ph" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="10 digit phone no required" ControlToValidate="ph" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^([0]|\+91)?[789]\d{9}$"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="Button3" runat="server" Text="Submit" class="btn btn-primary btn-lg btn-block" OnClick="Button1_Click" />
                    </div>
                </div>
                <div class="col-md-6">        
                    <img src="Images/undraw_noted_pc9f.png" width="500" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
