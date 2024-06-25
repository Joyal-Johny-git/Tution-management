<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="WebApplication2.student" %>

<!DOCTYPE html>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <title>Student portal</title>
    <style type="text/css">
        .auto-style1 {
            flex: 0 0 auto;
            width: 38%
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        
        <div class="row" style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; margin:20px;">
            <div class="col-3" style="text-align: left; color:black">
                <asp:Image ID="Image2" runat="server" Height="78px" ImageUrl="~/logo/logo.jpg" Width="87px" />
           
               </div>

         <div class="col-3">
                  
               </div>
        <div class="col-3" style="text-align: right">
           
            <asp:Button ID="btnLogin" class="btn btn-primary" runat="server" Text="Logout" OnClick="btnlogout" /></div>
            <div class="col-3">
                <a href="#"><span class="glyphicon glyphicon-envelope"></span></a>
                  Email:sjhssupu@gmail.com </div>
        </div>
        <div style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; margin:20px;">
            <table class="w-100">
                <tr>

                    <td>&nbsp;&nbsp; ST. Joseph HSS Upputhode
                        <br />
&nbsp;&nbsp; STUDENT PORTAL&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;
                  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div  style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; margin-left: 20px; margin-right: 20px;" class="row">
            <div class="auto-style1">
                  Notification:<br />
                  <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                  <br />
&nbsp;
                  <br />
               </div>

            <div class="col-3">
                  
                &nbsp;Internal mark:<br />
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
           <asp:ListItem>--Select--</asp:ListItem>
           <asp:ListItem>S1</asp:ListItem>
           <asp:ListItem>S2</asp:ListItem>
           <asp:ListItem>S3</asp:ListItem>
           <asp:ListItem>S4</asp:ListItem>
       </asp:DropDownList><br />
                </div>
            <div class="col-3">
                  
                Result:&nbsp; <br />
                <asp:DropDownList ID="DropDownList1" runat="server">
           <asp:ListItem>--Select--</asp:ListItem>
           <asp:ListItem>S1</asp:ListItem>
           <asp:ListItem>S2</asp:ListItem>
           <asp:ListItem>S3</asp:ListItem>
           <asp:ListItem>S4</asp:ListItem>
       </asp:DropDownList>
                  
               </div>
&nbsp;</div>

        <div>
        </div>

    </form>
</body>
</html>
