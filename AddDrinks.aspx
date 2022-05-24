<%@ Page Title="" Language="C#" MasterPageFile="~/StaffPage.Master" AutoEventWireup="true" CodeBehind="AddDrinks.aspx.cs" Inherits="MasterDesign.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="//code.jquery.com/jquery-1.11.2.min.js" type="text/javascript"></script>
    <style type="text/css">
        .auto-style1 {
            float: right;
            margin-top: 0px;
            height: 631px;
            margin-right: 18px;
        }
        .auto-style2 {
            margin-top: 0px;
        }
    .auto-style3 {
        height: 713px;
        margin-bottom: 0px;
    }
    </style>
        <script type="text/javascript">
        function ShowImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=Images.ClientID%>').prop('src', e.target.result)
                        .width(450)
                        .height(280);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div style=" background-color:burlywood; margin-left: 37px; margin-top: 10px;" class="auto-style3">


        <asp:Button ID="BtnMembers" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="Manage Members" Width="172px" OnClick="BtnMembers_Click"/>
        <asp:Button ID="BtnDrinks" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="Manage Drinks" Width="172px" OnClick="BtnDrinks_Click" />
        <asp:Button ID="BtnTopics" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="Manage Topics" Width="172px" OnClick="BtnTopic_Click" />


        <asp:Button ID="BtnComment" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="Manage Comments" Width="172px" OnClick="BtnComment_Click"  />


        <asp:Button ID="BtnAddDrinks" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="Add Drinks" Width="172px" OnClick="BtnAddDrinks_Click"  />


        <br />
                        <div class="auto-style1">
                                    <br />
                                    <asp:Label ID="Label6" runat="server" Text="Drinks Preparations" Font-Names="Arial Rounded MT Bold"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox5" runat="server" Height="124px" TextMode="MultiLine" Width="509px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <br />
        <asp:Image ID="Images" runat="server" BorderStyle="Outset" Height="289px" Width="456px"  />
                    <br />
        <asp:FileUpload  ID="FileUpload1" runat="server" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Width="506px" onchange="ShowImagePreview(this);" />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Font-Names="Arial Rounded MT Bold" Font-Size="Large" Height="36px" Text="Add Drink" Width="151px" OnClick="Button1_Click" />
            </div>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Drinks Name" Font-Names="Arial Rounded MT Bold"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="444px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Creator Name" Font-Names="Arial Rounded MT Bold"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Width="442px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Drinks Description" Font-Names="Arial Rounded MT Bold"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" Height="134px" TextMode="MultiLine" Width="512px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Drinks Ingredients" Font-Names="Arial Rounded MT Bold"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" Height="146px" TextMode="MultiLine" Width="514px"></asp:TextBox>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Topic]"
             UpdateCommand="UPDATE [Topic] SET [Username] = @Username, [Title] = @Title, [Date] = @Date, [IM_ID] = @IM_ID, [Description] = @Description, [Total_Reply] = @Total_Reply WHERE [FT_ID] = @FT_ID" DeleteCommand="DELETE FROM [Topic] WHERE [FT_ID] = @FT_ID" InsertCommand="INSERT INTO [Topic] ([FT_ID], [Username], [Title], [Date], [IM_ID], [Description], [Total_Reply]) VALUES (@FT_ID, @Username, @Title, @Date, @IM_ID, @Description, @Total_Reply)">
            <DeleteParameters>
                <asp:Parameter Name="FT_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FT_ID" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="IM_ID" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Total_Reply" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="IM_ID" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Total_Reply" Type="Int32" />
                <asp:Parameter Name="FT_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />


    </div>
</asp:Content>
