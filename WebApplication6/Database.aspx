﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Database.aspx.cs" Inherits="WebApplication6.Database" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 15px;
        }
    </style>
</head>
<body style="height: 399px">
    <form id="form1" runat="server">
        <div style="margin-left: 40px">

            <asp:SqlDataSource ID="SqlDataBaseZip" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table] ORDER BY [Id]"></asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text="Name Database"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="Id" DataSourceID="SqlDataBaseZip" Height="203px" Width="614px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Full_Name" HeaderText="Full_Name" SortExpression="Full_Name" />
                    <asp:BoundField DataField="Email_Address" HeaderText="Email_Address" SortExpression="Email_Address" />
                    <asp:BoundField DataField="Institution" HeaderText="Institution" SortExpression="Institution" />
                    <asp:BoundField DataField="ZipFileLocation" HeaderText="ZipFileLocation" SortExpression="ZipFileLocation" />

                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>

            Results Database<br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="ImgNumber" HeaderText="ImgNumber" SortExpression="ImgNumber" />
                    <asp:BoundField DataField="Sensitivity" DataFormatString="{0:F8}" HeaderText="Sensitivity" SortExpression="Sensitivity" />
                    <asp:BoundField DataField="Specificity" DataFormatString="{0:F8}" HeaderText="Specificity" SortExpression="Specificity" />
                    <asp:BoundField DataField="Precision" DataFormatString="{0:F8}" HeaderText="Precision" SortExpression="Precision" />
                    <asp:BoundField DataField="Accuracy" DataFormatString="{0:F8}" HeaderText="Accuracy" SortExpression="Accuracy" />
                    <asp:BoundField DataField="kappa" DataFormatString="{0:F8}" HeaderText="kappa" SortExpression="kappa" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ResultsDataBase]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AllResults]"></asp:SqlDataSource>
            AllResults Database<br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="ImgNumber" HeaderText="ImgNumber" SortExpression="ImgNumber" />
                    <asp:BoundField DataField="Sensitivity" DataFormatString="{0:F8}" HeaderText="Sensitivity" SortExpression="Sensitivity" />
                    <asp:BoundField DataField="Specificity" DataFormatString="{0:F8}" HeaderText="Specificity" SortExpression="Specificity" />
                    <asp:BoundField DataField="Precision" DataFormatString="{0:F8}" HeaderText="Precision" SortExpression="Precision" />
                    <asp:BoundField DataField="Accuracy" DataFormatString="{0:F8}" HeaderText="Accuracy" SortExpression="Accuracy" />
                    <asp:BoundField DataField="kappa" DataFormatString="{0:F8}" HeaderText="kappa" SortExpression="kappa" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

        </div>
    </form>

    <div>

        <table width="600" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#5482fc">
            <tr>
                <td height="50" align="center" class="lgHeader1">How to Send Email with Authentication using ASP.NET 2.0 and C#</td>
            </tr>
        </table>
        <br />
        <table width="600" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#cccccc">
            <tr>
                <td width="100" align="right" bgcolor="#eeeeee" class="header1">To</td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="txtTo" runat="server" Columns="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td width="100" align="right" bgcolor="#eeeeee" class="header1">From</td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="txtFrom" runat="server" Columns="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" bgcolor="#eeeeee" class="header1">SMTP Server</td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="txtSMTPServer" runat="server" Columns="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" bgcolor="#eeeeee" class="header1">SMTP User</td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="txtSMTPUser" runat="server" Columns="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" bgcolor="#eeeeee" class="header1">SMTP Pass</td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="txtSMTPPass" runat="server" Columns="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td width="100" align="right" bgcolor="#eeeeee" class="header1">Subject</td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="txtSubject" runat="server" Columns="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td width="100" align="right" bgcolor="#eeeeee" class="header1">Body</td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="txtBody" runat="server" Columns="40" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" bgcolor="#eeeeee" class="header1">Action</td>
                <td bgcolor="#FFFFFF">
                    <asp:Button ID="btnSubmit" runat="server" Text="Send Email" OnClick="btnSubmit_Click" /></td>
            </tr>
            <tr>
                <td width="100" align="right" bgcolor="#eeeeee" class="header1">Status</td>
                <td bgcolor="#FFFFFF" class="basix">
                    <asp:Literal ID="litStatus" runat="server"></asp:Literal></td>
            </tr>
        </table>

    </div>
</body>
</html>
