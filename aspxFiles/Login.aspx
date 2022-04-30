<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DemoProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" charset="utf-8"></script>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@562&display=swap" rel="stylesheet">
    <link href="CustomCss/Login.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title></title>
</head>
<body style="background:#121212;">
    <div>
        <nav class="navbar navbar-expand-md navbar-light bg-light">
            <div class="container-xl">
                <a class="navbar-brand" href="#"><img src="Images/logo.png" width="60" height="60"/>VKS Bank<span style="font-size:13px;position:relative;margin-top:10px;margin-left:5px;font-family: 'Dancing Script', cursive;">Banking Solutions</span></a>
                <div class="collapse navbar-collapse" id="navbarsExample07XL">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Home.aspx">Home</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Transactions</a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
    </div>
    <div id="bc">
        <div class="login-form">
            <center><h6>Login</h6></center>
            <form id="form1" runat="server">
                <div class="textbox">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Username" autocomplete="off"></asp:TextBox>
                    <span class="check-msg hidden">Required</span>
                </div>
                <div class="textbox">
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" autocomplete="off"></asp:TextBox>
                    <span class="check-msg hidden">Required</span>
                </div>
                <div class="options">
                    <label for="" class="remember-me">
                        <span class="checkbox">
                            <span class="checked"></span>
                        </span>
                        <asp:CheckBox ID="CheckBox1" runat="server" />&nbsp;
                        Remember me 
                    </label>
                    <a href="#">Forgot Password ?</a>
                </div>
                <asp:Button ID="Button1" runat="server" Text="Sign In" value="log in now" class="b" disabled OnClick="Button1_Click" />
                <div class="privacy">
                    <a href="#">Privacy Policy</a>
                </div>
            </form>
            <div class="dont-have-acc">
                Dont have an account ?
                <a href="SignUp.aspx">Sign Up</a>
            </div>
            <div>
                <center><asp:Label ID="lblerror" runat="server" ForeColor="White"></asp:Label></center>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(".textbox input").focusout(function () {
            if ($(this).val() == "") {
                $(this).siblings().removeClass("hidden");
                $(this).css("background", "#554343");
            }
            else {
                $(this).siblings().addClass("hidden");
                $(this).css("background", "#484848");
            }

        });
        $(".textbox input").keyup(function () {
            var inputs = $(".textbox input");
            if (inputs[0].value != "" && inputs[1].value) {
                $(".b").attr("disabled", false);
                $(".b").addClass("active");
            }
            else {
                $(".b").attr("disabled", true);
                $(".b").removeClass("active");
            }
        });
    </script>
</body>
</html>
