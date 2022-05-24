<%@ Page Title="" Language="C#" MasterPageFile="~/StaffPage.Master" AutoEventWireup="true" CodeBehind="StaffProfile.aspx.cs" Inherits="MasterDesign.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div style=" background-color:burlywood; height: 467px; width: 1434px; margin-left: 37px; height: 520px; margin-top: 10px;">


        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="X-Large" Font-Underline="True" ForeColor="#663300" Text="Profile Page"></asp:Label>
        <br />
        <br />


        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="A_ID" DataSourceID="SqlDataSource1" Height="205px" Width="270px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="A_ID" HeaderText="A_ID" ReadOnly="True" SortExpression="A_ID" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>


        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Admin] WHERE ([A_ID] = @A_ID)" DeleteCommand="DELETE FROM [Admin] WHERE [A_ID] = @A_ID" InsertCommand="INSERT INTO [Admin] ([A_ID], [Username], [Password]) VALUES (@A_ID, @Username, @Password)" UpdateCommand="UPDATE [Admin] SET [Username] = @Username, [Password] = @Password WHERE [A_ID] = @A_ID" OnSelecting="SqlDataSource1_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="A_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="A_ID" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="A_ID" SessionField="ID" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="A_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />


    </div>
</asp:Content>
