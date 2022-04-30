<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderSuccess.aspx.cs" Inherits="DemoProject.OrderSuccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" charset="utf-8"></script>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@562&display=swap" rel="stylesheet"/>
    <title></title>
    <style type="text/css">
        #image1{
            display:inline-block;
            margin-top:100px;
            width:700px;      
        }
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
            text-decoration:none;
        }
        
        #a2:hover{
            background:#52B2B7;
            color:#fff;
            transition:.1s ease-in;
            text-decoration:none;
        }
    </style>
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
        <div id="content">
            <div id="image1">
                <img src="Images/undraw_done_a34v.png" width="700"/>
            </div>
            <div id="info">
                <center><h2 style="color:#52B2B7;">Transaction Successfull !!</h2></center><br />
                <table class="table">
                    <thead class="thead-dark" style="width:100px;">
                        <tr>
                            <th>Acc no</th>
                            <th>Amount</th>
                            <th>Name</th>
                            <th>Date</th>
                            <th>Cheque</th>
                            <th>Bank</th>
                        </tr>
                    </thead>
                    <tbody>
                    <tr>                        
                        <td><asp:Label ID="lblacc" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="lblamt" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="lblname" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="lbldate" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="lbltype" runat="server" Text="Order"></asp:Label></td>
                        <td><asp:Label ID="lblbank" runat="server" Text=""></asp:Label></td>
                    </tr>
                </tbody>
                </table>
                <center><a href="Sender.aspx" id="a2">Make another payment</a></center>
            </div>
        </div>
        <h4><strong style="margin-left:20px;margin-top:10px;">Note:</strong><br /></h4>
        <ul>
            <li>The Order type cheque can be used by only the authorised person to withraw cash from bank</li>
            <li>In our system,the bank will provide the payee with a unique transaction ID<br /></li>
            <li>Ask the payee to verify the transaction ID at the bank<br /></li>
            <li>Only after verification,the amount will be debited from your account<br /></li>
        </ul>
        
    </form>
</body>
</html>
