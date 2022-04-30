<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="DemoProject.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="newcss/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="CustomCss/Admin.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" charset="utf-8"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div class="wrapper">
                <div class="side-bar">
                    <h2>Admin</h2>
                        <ul>
                            <li><a href="AdminDashboard.aspx"><i class="fas fa-home"></i>&nbsp;Home</a></li>
                            <li><a href="#"><i class="fas fa-user-lock"></i>&nbsp;Verification</a></li>
                            <li style="background: #594f8d;"><a href="#"><i class="fas fa-trash-alt"></i>&nbsp;Login</a></li>
                            <li><a href="#"><i class="fas fa-database"></i>&nbsp;Delete Records</a></li>
                            <li><a href="#"><i class="fas fa-trash-alt"></i>&nbsp;Transaction</a></li>
                            <li><a href="#"><i class="fas fa-trash-alt"></i>&nbsp;Status</a></li>
                        </ul>
                    </div>
                    <div class="main-content">
                        <div class="header">
                            <h1>Login</h1>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-5 center-block" style="margin-left:250px;margin-top:50px">
                                    <h1 class="h3 mb-3 font-weight-normal text-center">Please sign in</h1><br />
                                    <label>Username</label><br />
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Username" required autofocus autocomplete="off"></asp:TextBox><br />
                                    <label>Password</label><br />
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Password" required autofocus autocomplete="off" TextMode="Password"></asp:TextBox><br />
                                    <asp:Button ID="Button1" runat="server" Text="Sign In" class="btn btn-lg btn-primary btn-block" OnClick="Button1_Click"/><br />
                                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
    </form>
</body>
</html>
