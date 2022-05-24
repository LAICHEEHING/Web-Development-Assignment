<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionExpired.aspx.cs" Inherits="MasterDesign.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 920px;
            margin-left: 263px;
            margin-top: 28px;
            margin-bottom: 0px;
            text-align:center;
        }
        .auto-style2 {
            width: 780px;
            height: 399px;
            margin-left: 329px;
            margin-bottom: 1px;
            text-align:center;
        }
    </style>
</head>
<body style="background-image:url('/img/Background.jpg'); background-repeat:no-repeat; background-size:cover; height: 627px; width: 1321px;">
    <form id="form1" runat="server">
        <div class="auto-style1" style="border-color: #663300; border-width: inherit; border-style: solid; background-color: #996600">

   
            <asp:Label ID="Label1" runat="server" BorderColor="#663300" Font-Bold="True" Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="#CC9900" Text="Urban Mixology"></asp:Label>
            <br />

            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="#CC9900" Text="Staff Page"></asp:Label>

        </div>
        <div class="auto-style2" style="border: medium solid #663300; background-color: #CC9900"><asp:Label ID="Label3" runat="server" Font-Names="Arial Black" Font-Underline="True" Text="Session Expired"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Please"></asp:Label>
            &nbsp;<a href="StaffLogin.aspx">log in</a>
            <asp:Label ID="Label5" runat="server" Text="to continue"></asp:Label>
        </div>
    </form>
</body>
</html>
