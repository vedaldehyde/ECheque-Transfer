<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="DemoProject.Services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" charset="utf-8"></script>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@562&display=swap" rel="stylesheet">
    <link href="CustomCss/Services.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js"  charset="utf-8"></script>
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
        <div class="container">
            <i class="far fa-user"></i><asp:Label ID="lblname" runat="server" Text=""></asp:Label>
        </div>
        <hr />
        <div class="container" style="margin-top:110px;">
            <section class="services">
                <h1>Select Payment Mode</h1>
                <p>Choose One Of The Payment Modes To Carry Out The Further Transactions</p>
               
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="services-item">
                            <center><a href="#"><i class="fab fa-cc-visa"></i></a></center>
                            <center><h2>Debit Card</h2></center>
                            <p>Make yourself free using cvv to carry out your transactions</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="services-item">
                            <center><a href="#"><i class="fab fa-google-wallet"></i></a></center>
                            <center><h2>Google Wallet</h2></center>
                            <p>You can carry your transactions via Google Wallet</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="services-item">
                            <center><a href="Options.aspx"><i class="fas fa-money-check-alt"></i></a></center>
                            <center><h2>Cheque</h2></center>
                            <p>Try our new feature of carring out transactions using ECheque transfer</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="services-item">
                            <center><a href="#"><i class="fab fa-apple-pay"></i></a></center>
                            <center><h2>Apple Pay</h2></center>
                            <p>Exclusive payment option for IOS Mac OS users</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="services-item">
                            <center><a href="#"><i class="fab fa-amazon-pay"></i></a></center>
                            <center><h2>Amazon Pay</h2></center>
                            <p>Pay through your Amazon account and win exciting rewards</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="services-item">
                            <center><a href="#"><i class="fas fa-university"></i></a></center>
                            <center><h2>Internet Banking</h2></center>
                            <p>Conventional way to make payments via our online portal</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="services-item">
                            <center><a href="#"><i class="fas fa-bolt"></i></a></center>
                            <center><h2>Freecharge</h2></center>
                            <p>Freecharge can be used for online and in-app purchases, mobile top-ups and bill payments </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="services-item">
                            <center><a href="#"><i class="fab fa-cc-mastercard"></i></a></center>
                            <center><h2>Master Pass</h2></center>
                            <p> It makes it easy for any Mastercard holders to quickly and easily pay through your website</p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
