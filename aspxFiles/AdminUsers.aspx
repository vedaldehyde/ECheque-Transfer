<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUsers.aspx.cs" Inherits="DemoProject.AdminUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="newcss/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" charset="utf-8"></script>
    <link href="CustomCss/AdminUsers.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="side-bar">
                <h2>Admin</h2>
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i>&nbsp;Home</a></li>
                    <li><a href="AdminAuth.aspx"><i class="fas fa-user-lock"></i>&nbsp;Verification</a></li>
                    <li><a href="Admin.aspx"><i class="fas fa-user-tie"></i>&nbsp;Sign Out</a></li>
                    <li><a href="#"><i class="fas fa-trash-alt"></i>&nbsp;Delete Records</a></li>
                    <li><a href="AdminShowPage.aspx"><i class="fas fa-database"></i>&nbsp;Transactions</a></li>
                    <li style="background: #594f8d;"><a href="#"><i class="fas fa-trash-alt"></i>&nbsp;Users</a></li>
                    <li><a href="AdminStatus.aspx"><i class="fas fa-trash-alt"></i>&nbsp;Status</a></li>
                </ul>
            </div>
            <div class="main-content">
                <div class="header">
                    <h1>User Records</h1>
                </div>
            </div>
        </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="248px" Width="833px" CssClass="table table-striped table-dark">
            <Columns>
                <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname">
                <ItemStyle BorderStyle="Solid" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname">
                <ItemStyle BorderStyle="Solid" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="accno" HeaderText="Account Number" SortExpression="accno">
                <ItemStyle BorderStyle="Solid" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="bal" HeaderText="Balance" SortExpression="bal">
                <ItemStyle BorderStyle="Solid" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email">
                <ItemStyle BorderStyle="Solid" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country">
                <ItemStyle BorderStyle="Solid" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state">
                <ItemStyle BorderStyle="None" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender">
                <ItemStyle BorderStyle="Solid" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone">
                <ItemStyle BorderStyle="Solid" HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChequeTransferDBConnectionString %>" SelectCommand="SELECT [fname], [lname], [accno], [bal], [email], [country], [state], [gender], [phone] FROM [Users]"></asp:SqlDataSource>

    </form>
</body>
</html>
