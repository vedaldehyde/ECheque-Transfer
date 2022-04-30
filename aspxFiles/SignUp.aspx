<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="DemoProject.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" charset="utf-8"></script>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@562&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
     <script>window.jQuery || document.write('<script src="/docs/4.4/assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/docs/4.4/dist/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
    <script src="CustomJs/jquery.passwordstrength.js"></script>
    <title></title>
</head>
<body style="margin: 0px;">
    <div>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
            <div class="container-xl" style="z-index: -1">
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
        </nav>
    </div>
    <div class="container">
        <form id="form1" runat="server">
            <div class="py-5 text-center">
                <img src="Images/logo.png" width="90" height="90" style="margin-top: 50px" />
                <h2 style="color: #2c2c54">Register Here</h2>
                <p class="lead" style="color: #2c2c54">Below is an example form built entirely with Bootstrap's form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
            </div>
            <div class="col-md-8 order-md-1">
                <h4 class="mb-3">Register Here</h4>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <asp:TextBox ID="fname" runat="server" CssClass="form-control" placeholder="Enter first name" autocomplete="off"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First name is required" ControlToValidate="fname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-6 mb-3">
                        <asp:TextBox ID="lname" runat="server" CssClass="form-control" placeholder="Enter last name" autocomplete="off"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last name is required" ControlToValidate="lname" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-6 mb-3">
                        <asp:TextBox ID="accno" runat="server" CssClass="form-control" placeholder="Enter Account Number" autocomplete="off"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Account no required" ControlToValidate="accno" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-6 mb-3">
                        <asp:TextBox ID="bal" runat="server" CssClass="form-control" placeholder="Enter opening amount" TextMode="Number" autocomplete="off"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Opening amount required" ControlToValidate="bal" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="mb-3">
                    <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Enter email" TextMode="Email" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Email reuired" ControlToValidate="email" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email" ControlToValidate="email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)$" SetFocusOnError="True" Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:Label ID="lblinfo" runat="server" ForeColor="Red"></asp:Label>
                </div>
                <div class="mb-3 form-group">
                    <asp:TextBox ID="pwd" runat="server" CssClass="form-control" placeholder="Enter password" TextMode="Password" autocomplete="off">  </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password required" ControlToValidate="pwd" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>      
                </div>
                <div class="mb-3">
                    <asp:TextBox ID="confpwd" runat="server" CssClass="form-control conf" placeholder="Retype password" TextMode="Password" autocomplete="off"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not matching" ControlToCompare="pwd" ControlToValidate="confpwd" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                    <br />
                    <div class="row">
                        <div class="mb-3 col-md-6">
                            <div class="form-group">
                                <asp:DropDownList ID="DCountry" runat="server" CssClass="form-control" autocomplete="off">
                                    <asp:ListItem Value="1">Select Country</asp:ListItem>
                                    <asp:ListItem Value="2">America</asp:ListItem>
                                    <asp:ListItem Value="3">Afghanistan</asp:ListItem>
                                    <asp:ListItem Value="4">India</asp:ListItem>
                                    <asp:ListItem Value="5">China</asp:ListItem>
                                    <asp:ListItem Value="6">Spain</asp:ListItem>
                                    <asp:ListItem Value="7">Italy</asp:ListItem>
                                    <asp:ListItem Value="8">Australia</asp:ListItem>
                                    <asp:ListItem Value="9">Japan</asp:ListItem>
                                    <asp:ListItem Value="10">Norway</asp:ListItem>
                                    <asp:ListItem Value="11">Iraq</asp:ListItem>
                                    <asp:ListItem Value="12">New Zealand</asp:ListItem>
                                    <asp:ListItem Value="13">Malaysia</asp:ListItem>
                                    <asp:ListItem Value="14">Russia</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Country required" ControlToValidate="DCountry" Display="Dynamic" ForeColor="Red" InitialValue="1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="mb-3 col-md-6">
                            <div class="form-group">
                                <asp:DropDownList ID="DState" runat="server" CssClass="form-control" autocomplete="off">
                                    <asp:ListItem Value="-1">Select State</asp:ListItem>
                                    <asp:ListItem Value="2">Maharashtra</asp:ListItem>
                                    <asp:ListItem Value="3">Gujrat</asp:ListItem>
                                    <asp:ListItem Value="4">Andhra Pradesh</asp:ListItem>
                                    <asp:ListItem Value="5">Chattisgarh</asp:ListItem>
                                    <asp:ListItem Value="6">Tamil Nadu</asp:ListItem>
                                    <asp:ListItem Value="7">Rajasthan</asp:ListItem>
                                    <asp:ListItem Value="8">Uttar Pradesh</asp:ListItem>
                                    <asp:ListItem Value="9">Kerala</asp:ListItem>
                                    <asp:ListItem Value="10">Kolkata</asp:ListItem>
                                    <asp:ListItem Value="11">Orissa</asp:ListItem>
                                    <asp:ListItem Value="12">Maddhya Pradesh</asp:ListItem>
                                    <asp:ListItem Value="13">Goa</asp:ListItem>
                                    <asp:ListItem Value="14">Himachal Pradesh</asp:ListItem>
                                    <asp:ListItem Value="14">Delhi</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="State required" ControlToValidate="DState" Display="Dynamic" ForeColor="Red" InitialValue="-1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="mb-3 col-md-6">
                            <div class="form-group">
                                <asp:DropDownList ID="DGender" runat="server" CssClass="form-control" autocomplete="off">
                                    <asp:ListItem Value="1">--Select Gender--</asp:ListItem>
                                    <asp:ListItem Value="2">Male</asp:ListItem>
                                    <asp:ListItem Value="3">Female</asp:ListItem>
                                    <asp:ListItem Value="4">Others</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Gender required" ControlToValidate="DGender" Display="Dynamic" ForeColor="Red" InitialValue="1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="mb-3 col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtphone" runat="server" CssClass="form-control" placeholder="Enter mobile no" autocomplete="off"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Phone number required" ControlToValidate="txtphone" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="10 digit phone number required" ControlToValidate="txtphone" Display="Dynamic" ForeColor="Red" ValidationExpression="^([0]|\+91)?[789]\d{9}$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="row">
                        </div>
                        <hr class="mb-4" />
                        <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary btn-lg btn-block" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </form>
    </div>
    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2017-2018 Company Name</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Privacy</a></li>
            <li class="list-inline-item"><a href="#">Terms</a></li>
            <li class="list-inline-item"><a href="#">Support</a></li>
        </ul>
    </footer>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="/docs/4.4/assets/js/vendor/jquery.slim.min.js"><\/script>')</script>
    <script src="/docs/4.4/dist/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
    <script src="form-validation.js"></script>




</body>
</html>
