<%@ Page Title="" Language="C#" MasterPageFile="~/StaffPage.Master" AutoEventWireup="true" CodeBehind="ManageComment.aspx.cs" Inherits="MasterDesign.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
        <style>
        .text {
            overflow:scroll;
            max-width:250px;
            max-height:150px;
            text-align:start;
        }
    </style>
      <div style=" background-color:burlywood; margin-left: 37px; margin-top: 10px;" class="auto-style3">


        <asp:Button ID="BtnMembers" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="Manage Members" Width="172px" OnClick="BtnMembers_Click"/>
        <asp:Button ID="BtnDrinks" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="Manage Drinks" Width="172px" OnClick="BtnDrinks_Click" />
        <asp:Button ID="BtnTopics" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="Manage Topics" Width="172px" OnClick="BtnTopic_Click" />


        <asp:Button ID="BtnComment" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="Manage Comments" Width="172px" OnClick="BtnComment_Click"  />


        <asp:Button ID="BtnAddDrinks" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="Add Drinks" Width="172px" OnClick="BtnAddDrinks_Click"  />


        <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CM_ID" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style2" Height="259px" Width="1248px">
                <Columns>
                    <asp:BoundField DataField="CM_ID" HeaderText="CM_ID" ReadOnly="True" SortExpression="CM_ID" />
                    <asp:BoundField DataField="FT_ID" HeaderText="FT_ID" SortExpression="FT_ID" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" >
                    <ItemStyle CssClass="text" />
                    </asp:BoundField>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />

            </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Comment]"
             UpdateCommand="UPDATE [Comment] SET [FT_ID] = @FT_ID, [Username] = @Username, [Date] = @Date, [Description] = @Description WHERE [CM_ID] = @CM_ID" DeleteCommand="DELETE FROM [Comment] WHERE [CM_ID] = @CM_ID" InsertCommand="INSERT INTO [Comment] ([CM_ID], [FT_ID], [Username], [Date], [Description]) VALUES (@CM_ID, @FT_ID, @Username, @Date, @Description)">
            <DeleteParameters>
                <asp:Parameter Name="CM_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CM_ID" Type="String" />
                <asp:Parameter Name="FT_ID" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FT_ID" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="CM_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />


    </div>
</asp:Content>
