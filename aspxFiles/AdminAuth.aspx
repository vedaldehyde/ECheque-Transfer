<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAuth.aspx.cs" Inherits="DemoProject.AdminAuth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="newcss/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="CustomCss/AdminAuth.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" charset="utf-8"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <div class="wrapper">
                <div class="side-bar">
                    <h2>Admin</h2>
                    <ul>
                        <li class="active"><a href="AdminDashboard.aspx"><i class="fas fa-home"></i>&nbsp;Home</a></li>
                        <li style="background: #594f8d;"><a href="#"><i class="fas fa-user-lock"></i>&nbsp;Verification</a></li>
                        <li><a href="Admin.aspx"><i class="fas fa-user-tie"></i>&nbsp;Sign Out</a></li>
                        <li><a href="#"><i class="fas fa-trash-alt"></i>&nbsp;Delete Records</a></li>
                        <li><a href="AdminShowPage.aspx"><i class="fas fa-database"></i>&nbsp;Transaction</a></li>
                        <li><a href="AdminUsers.aspx"><i class="fas fa-trash-alt"></i>&nbsp;Users</a></li>
                        <li><a href="AdminStatus.aspx"><i class="fas fa-trash-alt"></i>&nbsp;Status</a></li>
                    </ul>
                </div>
                <div class="main-content">
                    <div class="header"><h1>Verification</h1></div>
                    <div class="col-md-5 col-sm-4 col-xs-12">
                        <label><h3>Select Cheque Type</h3></label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem Value="-1">--Select Cheque--</asp:ListItem>
                            <asp:ListItem Value="1">Self</asp:ListItem>
                            <asp:ListItem Value="2">Order</asp:ListItem>
                            <asp:ListItem Value="3">Bearer</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-1"></div>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <h3><strong><asp:Label ID="Label2" runat="server" Text="Verify Credentials"></asp:Label></strong></h3>
                        <br />
                        <br />
                        <h4><asp:Label ID="Label7" runat="server" Text="" ForeColor="Green"></asp:Label></h4><br />              
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter Senders Account Number"></asp:TextBox><br />                        
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Enter Your Account Number"></asp:TextBox><br />        
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Enter Username"></asp:TextBox><br />                        
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Enter Transaction ID"></asp:TextBox><br />                        
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox><br /><br />
                        <div class="row">
                            <div class="col-md-4">
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="-1">--Date--</asp:ListItem>
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
                            </div>
                            <div class="col-md-4">
                                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="-1">--Month--</asp:ListItem>
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
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="-1">--Year--</asp:ListItem>
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
                            </div>
                        </div>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Verify" class="btn btn-primary btn-lg active" role="button" aria-pressed="true" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
