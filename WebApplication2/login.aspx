<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication2.login" %>

<!DOCTYPE html>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form runat="server">
        <div class="card" runat="server" style="margin-left: 250px; margin-right: 250px; margin-top: 50px; background-color:whitesmoke;">
            <div class="card-body">
            <div class="col-6" style="text-align: right; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif">
                LOGIN 
            </div>
            <br />
            <div class="row">
                <div class="col-6" style="text-align: right">
                    Username:
                </div>
                <div class="col-6">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-6" style="text-align: right">
                    Password:
                </div>
                <div class="col-6">
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row mb-3" style="text-align: center">
                <div class="col-12">
                    <asp:Button ID="btnLogin" class="btn btn-primary" runat="server" Text="Login" OnClick="btnLogin_Click" />
                </div>
            </div>
                </div>
        </div>
    </form>
</body>
</html>
