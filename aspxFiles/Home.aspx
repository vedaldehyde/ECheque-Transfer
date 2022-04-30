<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DemoProject.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" charset="utf-8"></script>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@562&display=swap" rel="stylesheet">
    <link href="CustomCss/Home.css" rel="stylesheet" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header" id="topheader">
           <nav class="navbar navbar-expand-lg fixed-top">
               <div class="container text-uppercase p-2 logo">
                   <a class="navbar-brand text-white" href="#">
                       <img src="Images/logo.png" width="60" height="60"/>VKS Bank<span style="font-size:13px;position:relative;margin-top:10px;margin-left:5px;font-family: 'Dancing Script', cursive;">Banking Solutions</span></a>
                   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                       <span class="navbar-toggler-icon"></span>
                   </button>
                   <div class="collapse navbar-collapse" id="navbarSupportedContent">
                       <ul class="navbar-nav ml-auto text-uppercase">
                           <li class="nav-item active">
                               <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                           </li>
                           <li class="nav-item">
                               <a class="nav-link" href="#ser">Services</a>
                           </li>
                           <li class="nav-item">
                               <a class="nav-link" href="#abt">About Us</a>
                           </li>
                           <li class="nav-item">
                               <a class="nav-link" href="#conid">Contact Us</a>
                           </li>
                           <li class="nav-item">
                               <a class="nav-link" href="#ex">Features</a>
                           </li>
                           <li class="nav-item">
                               <a class="nav-link" href="Login.aspx">Login</a>
                           </li>
                       </ul>
                   </div>
               </div>
           </nav>
           <section class="header-section">
               <div class="center-div">
                   <h1 class="font-weight-bold" style="color:darkblue;">Welcome to VKS Bank</h1>
                   <p style="color:darkblue;">A bank which provides best banking solutions..</p>
               </div>
           </section>
       </div>
        <section class="exta" id="ex">
            <div class="container">
                <div class="row">                    
                    <div class="extra-div col-lg-4 col-md-4 col-12">                        
                        <a href="#"><i class="fa-2x fas fa-piggy-bank"></i></a>
                        <h2>Online Fund Transfer</h2>
                        <p>Transfer funds anywhere anytime to your near and dear ones</p>
                    </div>
                    <div class="extra-div col-lg-4 col-md-4 col-12">                        
                        <a href="#"><i class="fa-2x fas fa-user-lock"></i></a>
                        <h2>Secure Payments</h2>
                        <p>With well facility of user authentication,we provide secure payments</p>
                    </div>
                    <div class="extra-div col-lg-4 col-md-4 col-12">                        
                        <a href="#"><i class="fa-2x fas fa-money-check"></i></a>
                        <h2>Online Cheque Transfer</h2>
                        <p>Try out our new fearture of online cheque transfer</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="abt-us" id="abt">
            <div class="container con" id="con">
               <div class="inner">
                   <h1>About Us</h1>
                   <p>Welcome to [store name], your number one source for all things [product, ie: shoes, bags, dog treats]. We're dedicated to giving you the very best of [product], with a focus on [three characteristics, ie: dependability, customer service and uniqueness.]
Founded in [year] by [founder's name], [store name] has come a long way from its beginnings in a [starting location, ie: home office, toolshed, Houston, TX.]. When [store founder] first started out, his/her passion for [passion of founder, ie: helping other parents be more eco-friendly. </p>
                   <div class="options">
                       <a href="Login.aspx"><span>Login</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <a href="SignUp.aspx"><span>Sign Up</span></a>
                   </div>
               </div>
            </div>
        </section>
        <section class="service" id="ser">
            <div class="container headings text-center">
                <h1 class="text-center font-weight-bold">Our Cheque Transfer Modes</h1>
                <p class="text-center;">These are the key modes of cheque transfer you can carry out</p>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-10 col-md-12 offset-1 offset-lg-0">
                        <div class="names my-3">
                            <h1>Cross</h1>
                            <div class="progress w-75">
                                <div class="progress-bar progress-bar-striped bg-success progress-bar-animated" style="width: 90%">65%</div>
                            </div>
                            <div class="names my-3">
                                <h1>Order</h1>
                                <div class="progress w-75">
                                    <div class="progress-bar progress-bar-striped bg-info progress-bar-animated" style="width: 75%">20%</div>
                                </div>
                            </div>
                            <div class="names my-3">
                                <h1>Bearer</h1>
                                <div class="progress w-75">
                                    <div class="progress-bar progress-bar-striped bg-warning progress-bar-animated" style="width: 50%">10%</div>
                                </div>
                            </div>
                            <div class="names my-3">
                                <h1>Self</h1>
                                <div class="progress w-75">
                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" style="width: 20%">5%</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-12 servicediv">
                        <div class="row">
                            <div class="col-lg-2 col-2 service-icons">
                                <i class=" fa-2x fas fa-user-friends" style="color: #474787;"></i>
                            </div>
                            <div class="col-lg-10 col-10">
                                <h2>Easy To Use</h2>
                                <p>No need of paper work. No need of scribbling your signature.</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2 col-2 service-icons">
                                <i class="fa-2x fas fa-key" style="color: #474787;"></i>
                            </div>
                            <div class="col-lg-10 col-10">
                                <h2>Unique Transaction Id Key</h2>
                                <p>Use unique transaction ID key for bearer and order cheque transaction</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2 col-2 service-icons">
                                <i class=" fa-2x fas fa-lock" style="color: #474787;"></i>
                            </div>
                            <div class="col-lg-10 col-10">
                                <h2>OTP Verification</h2>
                                <p>Secured otp digits for cross cheque transactions</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="project-work">
            <div class="container headings text-center">
                <div class="container d-flex justify-content-around align-items-center">
                    <div class="stat-items">
                        <i class="fa-2x fas fa-users" style="color:#78e08f;"></i>
                        <h2><span class="counter text-center">300000</span><span>+</span></h2>
                        <p>Users</p>
                    </div>
                    <div class="stat-items">
                        <i class="fa-2x fas fa-sync-alt" style="color:#7d5fff;"></i>
                        <h2><span class="counter text-center">25000000</span><span>+</span></h2>
                        <p>Transactions</p>
                    </div>
                    <div class="stat-items">
                        <i class="fa-2x fas fa-money-check"style="color:#b33939;"></i>
                        <h2><span class="counter text-center">50000</span><span>+</span></h2>
                        <p>Cheque Transfers</p>
                    </div>
                </div>
            </div>
        </section>
     
        <section class="contactus" id="conid">
            <div class="container headings text-center">
                <h1 class="text-center font-weight-bold">Contact Us</h1>
                <p class="text-capitalize pt-1">We are here to help and answer any question you might have.We look forward hearing from you</p>
            </div>
            <div class="container">
                <div class="row main">
                    <div class="col-lg-8 col-md-8 col-10 offset-lg-2">
                        <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Username" autocomplete="off" required></asp:TextBox>
                            <small id="emailHelp" class="form-text text-muted">We'll never share your username with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Email" TextMode="Email" autocomplete="off" required></asp:TextBox>
                            <small id="e" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Phone Number" TextMode="Phone" autocomplete="off" required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox4" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Type your message here" TextMode="MultiLine" autocomplete="off" required Height="150"></asp:TextBox>
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary"/>
                        </div>                        
                    </div>
                </div>
            </div>
        </section>
        <footer class="footer-sec" id="foot">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12 footerdiv">
                        <h3>About VKS Bank</h3>
                        <p></p>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12 footerdiv text-center">
                        <h3>Navigation Links</h3>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Features</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Services</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12 footerdiv">
                        <h3>About VKS Bank</h3>
                        <p></p>
                    </div>
                </div>
                <div class="mt-5 text-center">
                    <p>Copyright @2020 All rights reserved | This template is made by Vedaldehyde productions</p>
                </div>
                <div class="scroll float-right">
                  <i class="fas fa-arrow-circle-up" id="mybtn" onclick="topfun()"></i>
                </div>
            </div>
        </footer>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" charset="utf-8"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.js"></script>
        <script>
            $('.counter').counterUp({
                delay: 10,
                time:1000
            });

            b = document.getElementById("mybtn");
            window.onscroll = function () { scrollfun() };
            function topfun() {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            }
        </script>
    </form>
</body>
</html>
