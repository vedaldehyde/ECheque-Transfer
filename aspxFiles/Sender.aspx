<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sender.aspx.cs" Inherits="DemoProject.Sender" %>

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
                <asp:Button ID="Button2" runat="server" Text="Sign Out" class="btn btn-outline-success my-2 my-sm-0" OnClick="Button2_Click"/>
            </nav>
        </div>
        <div class="container-fluid"style="margin-top:140px;">
            <h2 style="margin-left:40px;"><strong>Drawer Details</strong></h2>
            <div class="row">
                <div class="col-md-5 col-sm-4 col-xs-12" style="margin-top: 25px; margin-left:40px;">
                    <div class="form-group">
                        <label>Enter Account No</label>
                        <asp:TextBox ID="txtaccno" runat="server" placeholder="Enter account number" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Account no required" ControlToValidate="txtaccno" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    
                    <div class="form-group">
                        <label>Amount in Figures</label>
                        <asp:TextBox ID="txtamtf" runat="server" placeholder="Amount in figures" aria-label="" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Amount required" ControlToValidate="txtamtf" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Label ID="Lblfund" runat="server" Text=""></asp:Label>
                    <div class="form-group">
                        <label>Name of Payee</label>
                        <asp:TextBox ID="txtname" runat="server" placeholder="Name of payee" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Name required" ControlToValidate="txtname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    
                    <div class="row">
                        <div class="mb-3 col-md-4">
                            <label>Enter Date</label>
                            <asp:DropDownList ID="Ddate" runat="server" CssClass="form-control">
                                <asp:ListItem Value="-1">--Select Date--</asp:ListItem>
                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="5">5</asp:ListItem>
                                <asp:ListItem Value="6">6</asp:ListItem>
                                <asp:ListItem Value="7">7</asp:ListItem>
                                <asp:ListItem Value="8">8</asp:ListItem>
                                <asp:ListItem Value="9">9</asp:ListItem>
                                <asp:ListItem Value="10">10</asp:ListItem>
                                <asp:ListItem Value="11">11</asp:ListItem>
                                <asp:ListItem Value="12">12</asp:ListItem>
                                <asp:ListItem Value="13">13</asp:ListItem>
                                <asp:ListItem Value="14">14</asp:ListItem>
                                <asp:ListItem Value="15">15</asp:ListItem>
                                <asp:ListItem Value="16">16</asp:ListItem>
                                <asp:ListItem Value="17">17</asp:ListItem>
                                <asp:ListItem Value="18">18</asp:ListItem>
                                <asp:ListItem Value="29">19</asp:ListItem>
                                <asp:ListItem Value="20">20</asp:ListItem>
                                <asp:ListItem Value="21">21</asp:ListItem>
                                <asp:ListItem Value="22">22</asp:ListItem>
                                <asp:ListItem Value="23">23</asp:ListItem>
                                <asp:ListItem Value="24">24</asp:ListItem>
                                <asp:ListItem Value="25">25</asp:ListItem>
                                <asp:ListItem Value="26">26</asp:ListItem>
                                <asp:ListItem Value="27">27</asp:ListItem>
                                <asp:ListItem Value="28">28</asp:ListItem>
                                <asp:ListItem Value="29">29</asp:ListItem>
                                <asp:ListItem Value="30">30</asp:ListItem>
                                <asp:ListItem Value="31">31</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Date required" InitialValue="-1" ControlToValidate="Ddate" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3 col-md-4">
                            <label>Enter Month</label>
                            <asp:DropDownList ID="DMonth" runat="server" CssClass="form-control">
                                <asp:ListItem Value="1">--Select Month--</asp:ListItem>
                                <asp:ListItem Value="2">January</asp:ListItem>
                                <asp:ListItem Value="3">February</asp:ListItem>
                                <asp:ListItem Value="4">March</asp:ListItem>
                                <asp:ListItem Value="5">April</asp:ListItem>
                                <asp:ListItem Value="6">May</asp:ListItem>
                                <asp:ListItem Value="7">June</asp:ListItem>
                                <asp:ListItem Value="8">July</asp:ListItem>
                                <asp:ListItem Value="9">August</asp:ListItem>
                                <asp:ListItem Value="10">September</asp:ListItem>
                                <asp:ListItem Value="11">October</asp:ListItem>
                                <asp:ListItem Value="12">November</asp:ListItem>
                                <asp:ListItem Value="13">December</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Month required" InitialValue="1" ControlToValidate="DMonth" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3 col-md-4">
                            <label>Enter Year</label>
                            <asp:DropDownList ID="DYear" runat="server" CssClass="form-control">
                                <asp:ListItem Value="-1">--Select Year--</asp:ListItem>
                                <asp:ListItem Value="1">2020</asp:ListItem>
                                <asp:ListItem Value="2">2021</asp:ListItem>
                                <asp:ListItem Value="3">2022</asp:ListItem>
                                <asp:ListItem Value="4">2023</asp:ListItem>
                                <asp:ListItem Value="5">2024</asp:ListItem>
                                <asp:ListItem Value="6">2025</asp:ListItem>
                                <asp:ListItem Value="7">2026</asp:ListItem>
                                <asp:ListItem Value="8">2027</asp:ListItem>
                                <asp:ListItem Value="9">2028</asp:ListItem>
                                <asp:ListItem Value="10">2029</asp:ListItem>
                                <asp:ListItem Value="11">2030</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Year required" InitialValue="-1" ControlToValidate="DYear" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label>Select Cheque Type</label>
                            <asp:DropDownList ID="Ctype" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="Ctype_SelectedIndexChanged">
                                <asp:ListItem Value="-1">--Select Cheque Type</asp:ListItem>
                                <asp:ListItem Value="1">Cross</asp:ListItem>
                                <asp:ListItem Value="2">Order</asp:ListItem>
                                <asp:ListItem Value="3">Self</asp:ListItem>
                                <asp:ListItem Value="4">Bearer</asp:ListItem>
                            </asp:DropDownList>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Cheque type required" InitialValue="-1" ControlToValidate="Ctype" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6">
                            <label>Select Bank</label>
                            <asp:DropDownList ID="Bank" runat="server" CssClass="form-control">
                                <asp:ListItem Value="-1">--Select Bank--</asp:ListItem>
                                <asp:ListItem Value="1">ICICI Bank</asp:ListItem>
                                <asp:ListItem Value="2">VKS Bank</asp:ListItem>
                                <asp:ListItem Value="3">HDFC Bank</asp:ListItem>
                                <asp:ListItem Value="4">SBI Bank</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Bank required" InitialValue="-1" ControlToValidate="Bank" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group" style="margin-top:15px;">
                        <asp:Label ID="Label1" runat="server" Text="Enter Phone Number"></asp:Label>
                        <asp:TextBox ID="Txtphoneno" runat="server" placeholder="Enter Phone Number" CssClass="form-control"  TextMode="Phone"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Phone number required" ControlToValidate="Txtphoneno" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="10 digit phone number required" ControlToValidate="Txtphoneno" Display="Dynamic" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group" style="margin-top:15px;">
                        <asp:Label ID="Label2" runat="server" Text="Set Password"></asp:Label>
                        <asp:TextBox ID="txtp" runat="server" placeholder="Set Password" CssClass="form-control"  TextMode="Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="password required" ControlToValidate="txtp" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                       
                    </div>
                    <div class="form-group" style="margin-top:20px;">
                        <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary btn-lg btn-block" OnClick="Button1_Click" />
                    </div>
                </div>
                <div class="col-md-5 col-sm-4 col-xs-12" style="margin-top: 25px; margin-left:40px;">
                    <img src="Images/undraw_press_play_bx2d.png" width="600"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
