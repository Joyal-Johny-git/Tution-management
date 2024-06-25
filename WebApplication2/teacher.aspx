<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacher.aspx.cs" Inherits="WebApplication2.teacher" %>

<!DOCTYPE html>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher portal</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 11px;
            margin-right: 0px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;margin:20px ">
            <div class="row" style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; ">
            <div class="col-3" style="text-align: left; color:black">
                <asp:Image ID="Image2" runat="server" Height="78px" ImageUrl="~/logo/logo.jpg" Width="87px" />
           
               </div>
                <div class="col-3">
                  
               </div>
                <div class="col-3" style="text-align:right">
                <a href="#"><span class="glyphicon glyphicon-envelope"></span></a>
                  Email:sjhssupu@gmail.com </div>
        <div class="col-3" style="text-align: center">
            <asp:Button ID="btnLogin" class="btn btn-primary" runat="server" Text="Logout" OnClick="btnlogout" /></div>
        </div>
            <br />
            Teachers Portal<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" Height="147px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1035px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="Student Name" />
                    <asp:BoundField DataField="address" HeaderText="Address" />
                    <asp:BoundField DataField="class" HeaderText="Class" />
                    <asp:BoundField DataField="educational_status" HeaderText="Educational status" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
