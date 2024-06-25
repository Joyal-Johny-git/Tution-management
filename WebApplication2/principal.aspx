<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="WebApplication2.principal" %>

<!DOCTYPE html>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Principal portal</title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 65px;
        }
        .auto-style2 {
            margin-right: 1px;
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
            <div class="col-3">
                  
               </div>
            <div class="col-3" align="right">
                <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="Home" OnClick="btn" />
                  <asp:Button ID="btnLogin" class="btn btn-primary" runat="server" Text="Logout" OnClick="btnlogout" />
               </div>
            </div>
       <div style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; margin:20px;">
           Principal Portal
       </div>
        <div class="card m-4 p-4">
    <div class="row">
        <div class="col-12" style="font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif">
            Student Management
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-3" style="text-align: left; color:black">
            Name:
            <asp:TextBox ID="txtStudname" runat="server"></asp:TextBox>
        </div>

        <div class="col-3" style="text-align: left">
            Address:
            <asp:TextBox style="width:210px" ID="txtAddress" runat="server"></asp:TextBox>
        </div>
         <div class="col-3">
                   Class
                   <asp:TextBox ID="txtstdclass" runat="server"></asp:TextBox>
               </div>
        <div class="col-3" style="text-align: left">
            Educational Status:
       <asp:DropDownList ID="DropDownList1" runat="server">
           <asp:ListItem>--Select--</asp:ListItem>
           <asp:ListItem>Excellent</asp:ListItem>
           <asp:ListItem>Average</asp:ListItem>
           <asp:ListItem>Poor</asp:ListItem>
       </asp:DropDownList>
        </div>
    </div><br />
    <div class="row">
        <div class="col-12">
            <asp:Button ID="btnStudSave" CssClass="btn btn-primary" runat="server" Text="Save" OnClick="btnStudSave_Click" />
            <asp:Label ID="Label1" runat="server" ForeColor="#33CC33" Text="Saved" Visible="False"></asp:Label>
        </div>
    </div>
</div>
       <div class="card mt-3 p-4" style="margin-left:23px; margin-right:23px;">
           <div class="row">
              <div class="col-12"  style="font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif">
                  Teacher Management
              </div>

           </div><br />
           <div class="row">
               <div class="col-3">
                   Name:
                   <asp:TextBox ID="txtThrName" runat="server"></asp:TextBox>
               </div>
               <div class="col-3">
                   Address:
                   <asp:TextBox ID="txtThrAddress" runat="server"></asp:TextBox>
               </div>
               <div class="col-3">
                   Contact:
                   <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
               </div>
               <div class="col-3">
                   Class
                   <asp:TextBox ID="txtClass" runat="server"></asp:TextBox>
               </div>
           </div><br />
           <div class="row">
               <div class="col-12">
                   <asp:Button ID="btnTeacherSave" CssClass="btn btn-primary" runat="server" Text="Save" OnClick="btnTeacherSave_Click" />
                   <asp:Label ID="Label2" runat="server" ForeColor="#33CC33" Text="Saved" Visible="False"></asp:Label>
               </div>
           </div>
       </div>
        
        <div>
            <br />
            <br />
            <table class="w-100">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr  >

                    <td ></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <div style="margin-left:40px"> 
                Student Details
            </div>
        </div>
        <div>

            <asp:GridView ID="GridView1" style="margin-left:40px" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Width="644px" CssClass="auto-style2">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Student name " />
                <asp:BoundField DataField="address" HeaderText="Address" />
                <asp:BoundField DataField="class" HeaderText="Class" />
                <asp:BoundField DataField="educational_status" HeaderText="Educational Status" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>

        </div>
        <div>
            <br />
            <br />
        </div>
        <div style="margin-left:40px">Teachers Details</div>
        <div style="margin-left:40px">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" CssClass="auto-style1" Height="128px" Width="652px">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Teachers Name" />
                <asp:BoundField DataField="address" HeaderText="Address" />
                <asp:BoundField DataField="contact" HeaderText="Contact" />
                <asp:BoundField DataField="class" HeaderText="Class" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        </div>
        <div>

        </div>
        <div>

        </div>
        </form>
</body>
</html>
