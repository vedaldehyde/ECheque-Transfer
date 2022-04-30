<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="self.aspx.cs" Inherits="DemoProject.self" %>

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
            <div class="container-fluid"style="margin-top:140px;">
                <br />
                <span></span>

                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-4">
                        <center><h3><strong>Self Details</strong></h3></center>
                        <div class="form-group">                            
                            <asp:TextBox ID="acc" runat="server" CssClass="form-control" placeholder="Enter Account No"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Account no required" ControlToValidate="acc" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">                            
                            <asp:TextBox ID="ph" runat="server" CssClass="form-control" TextMode="Phone" placeholder="phone number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Phone no required" ControlToValidate="ph" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="10 digit phone no required" ControlToValidate="txtp" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^([0]|\+91)?[789]\d{9}$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">                            
                            <asp:TextBox ID="txtp" runat="server" CssClass="form-control" TextMode="Password" placeholder="password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password required" ControlToValidate="txtp" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">                          
                            <asp:TextBox ID="Txtcnfp" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not matching" ControlToCompare="txtp" ControlToValidate="Txtcnfp" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txtcnfp" Display="Dynamic" ErrorMessage="Type the password again" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary btn-lg btn-block" OnClick="Button1_Click" />
                        </div>
                    </div>
                    <div class="col-md-7">
                        <img src="Images/undraw_online_payments_luau.png" width="500"/>
                    </div>
                </div>
            </div>
            <h4><strong style="margin-left: 20px; margin-top: 10px;">Note:</strong><br />
            </h4>
            <ul>
                <li>The self type cheque allows you to withraw cash from your respective bank account</li>
                <li>In our system,the bank will provide you with a unique transaction ID on your registered mobile number<br />
                </li>
                <li>Also you have to set a password for security purpose<br />
                </li>
                <li>Verify the transaction ID at the bank along with the password<br />
                </li>
                <li>Only after verification,you will recieve your cash<br />
                </li>
            </ul>        
    </form>
</body>
</html>
